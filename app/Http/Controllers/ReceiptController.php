<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Receipt;
use App\Models\Customer;
use App\Models\CompanyInfo;



class ReceiptController extends Controller
{

    function __construct()
{
     $this->middleware('permission:account-list', ['only' => ['index', 'show', 'outstandingReport', 'showTransactions']]);
     $this->middleware('permission:account-create', ['only' => ['create', 'store']]);
     $this->middleware('permission:account-edit', ['only' => ['edit', 'update']]);
     $this->middleware('permission:account-delete', ['only' => ['destroy']]);
}


    public function index(Request $request)
    {
        // استعلام الدفعات
        $query = Receipt::with('customer');
    
        // الفلترة حسب التواريخ
        if ($request->has('start_date') && $request->has('end_date') &&
            !empty($request->start_date) && !empty($request->end_date)) {
            $query->whereBetween('date', [$request->start_date, $request->end_date]);
        }
    
        // البحث حسب الاسم أو username
        if ($request->has('search') && !empty($request->search)) {
            $search = $request->search;
            $query->whereHas('customer', function ($q) use ($search) {
                $q->where('full_name', 'LIKE', "%{$search}%")
                  ->orWhere('username', 'LIKE', "%{$search}%");
            });
        }
    
        // جلب النتائج
        $receipts = $query->paginate(10);
    
        // حساب مجموع الدفعات
        $totalReceipts = $query->sum('amount');
    
        return view('receipts.index', compact('receipts', 'totalReceipts'));
    }
    

    public function create(Request $request)
    {
        $customers = Customer::all();
        $customer_id = $request->get('customer_id');
        return view('receipts.create', compact('customers', 'customer_id'));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'customer_id' => 'required|exists:customers,id',
            'amount' => 'required|numeric|min:0.01',
            'description' => 'nullable|string',
            'date' => 'required|date',
        ]);

        Receipt::create($data);

        return redirect()->route('receipts.index')->with('success', 'Receipt added successfully!');
    }

    public function edit($id)
    {
        $receipt = Receipt::findOrFail($id);
        $customers = Customer::all();

        return view('receipts.edit', compact('receipt', 'customers'));
    }

    public function update(Request $request, $id)
    {
        $data = $request->validate([
            'customer_id' => 'required|exists:customers,id',
            'amount' => 'required|numeric|min:0.01',
            'description' => 'nullable|string',
            'date' => 'required|date',
        ]);

        $receipt = Receipt::findOrFail($id);
        $receipt->update($data);

            //return redirect()->route('subscriptions.index')->with('success', 'Subscription updated successfully!');
   return redirect()->to(url()->previous())->with('success', 'Receipt updated successfully!');
    }

    public function destroy($id)
    {
        $receipt = Receipt::findOrFail($id);
        $receipt->delete();

        return redirect()->route('receipts.index')->with('success', 'Receipt deleted successfully!');
    }

 

    public function show($id)
    {
        // Retrieve the receipt by ID
        $receipt = Receipt::findOrFail($id);

        // Return a view with the receipt details
        return view('receipts.show', compact('receipt'));
    }

    public function printReceipt($transactionId) {
        $transaction = Transaction::find($transactionId); // جلب بيانات المعاملة
    
        $data = [
            'companyName' => 'Fiber Fast', // اسم الشركة
            'receiptNumber' => $transaction->id,
            'date' => $transaction->created_at->format('Y-m-d H:i:s'),
            'customerName' => $transaction->customer->name,
            'totalAmount' => $transaction->amount,
        ];
    
        return view('receipt', $data);
    }
    
    public function print($id)
    {
        $receipt = Receipt::with('customer')->findOrFail($id); // جلب بيانات الإيصال
        $companyInfo = CompanyInfo::first(); // جلب بيانات الشركة
    
        return view('receipts.print', compact('receipt', 'companyInfo'));
    }
    
    
}

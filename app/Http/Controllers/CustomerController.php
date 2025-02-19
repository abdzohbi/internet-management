<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\ConnectionPoint;

use App\Models\Subscription;
use App\Models\Receipt;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;

class CustomerController extends Controller
{
  /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     function __construct()
{
     $this->middleware('permission:account-list', ['only' => ['index', 'show', 'outstandingReport', 'showTransactions']]);
     $this->middleware('permission:account-create', ['only' => ['create', 'store']]);
     $this->middleware('permission:account-edit', ['only' => ['edit', 'update']]);
     $this->middleware('permission:account-delete', ['only' => ['destroy']]);
}
    


     public function index(Request $request)
     {
         // استعلام العملاء مع العلاقات
         $query = Customer::with(['subscriptions', 'receipts']);
     
         // البحث
         if ($request->has('search') && !empty($request->search)) {
             $search = $request->search;
             $query->where('full_name', 'LIKE', "%{$search}%")
                   ->orWhere('username', 'LIKE', "%{$search}%")
                   ->orWhere('phone', 'LIKE', "%{$search}%")
                   ->orWhere('town', 'LIKE', "%{$search}%");
         }
     
         // جلب البيانات
         $customers = $query->get();
     
         // حساب الرصيد لكل عميل
         foreach ($customers as $customer) {
             $totalSubscriptions = $customer->subscriptions->sum('price');
             $totalReceipts = $customer->receipts->sum('amount');
             $customer->balance = $totalSubscriptions - $totalReceipts;
         }
     
         // الترتيب حسب الرصيد
         $sortBalance = $request->input('sort_balance', 'desc'); // القيمة الافتراضية: الأعلى إلى الأدنى
         if ($sortBalance === 'asc') {
             $customers = $customers->sortBy('balance');
         } else {
             $customers = $customers->sortByDesc('balance');
         }
     
         return view('customers.index', compact('customers', 'sortBalance'));
     }
     
    







    public function create()
    {
        
        $connectionPoints = ConnectionPoint::orderBy('station')->get();
        return view('customers.create', compact('connectionPoints'));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'username' => 'required|string|unique:customers,username|max:255',
            'full_name' => 'required|string|max:255',
            'phone' => 'required|string|max:20',
            'town' => 'nullable|string|max:255',
            'address' => 'nullable|string',
            'connection_point_id' => 'nullable|exists:connection_points,id',
        ]);
    
        Customer::create($data);
    
        return redirect()->route('customers.index')->with('success', 'Customer added successfully!');
    }

    public function edit(Customer $customer)
    {
        $connectionPoints = ConnectionPoint::orderBy('station')->get();
            
        
        return view('customers.edit', compact('customer', 'connectionPoints'));
    }

    public function update(Request $request, Customer $customer)
    {
        $data = $request->validate([
            'username' => 'required|string|unique:customers,username,' . $customer->id . '|max:255',
            'full_name' => 'required|string|max:255',
            'phone' => 'required|string|max:20',
            'town' => 'nullable|string|max:255',
            'address' => 'nullable|string',
            'connection_point_id' => 'nullable|exists:connection_points,id',
        ]);
    
        $customer->update($data);
    
        return redirect()->route('customers.index')->with('success', 'Customer updated successfully!');
    }
    public function show($id)
    {
        $customer = Customer::with(['subscriptions', 'receipts', 'maintenanceLogs'])->findOrFail($id);
        return view('customers.show', compact('customer'));
    }
    public function destroy(Customer $customer)
    {
        $customer->delete();

        return redirect()->route('customers.index')->with('success', 'Customer deleted successfully!');
    }

    public function report($id)
    {
        $customer = Customer::with(['subscriptions', 'receipts'])->findOrFail($id);
    
        // حساب القيم التراكمية
        $totalSubscriptions = $customer->subscriptions->sum('price');
        $totalReceipts = $customer->receipts->sum('amount');
        $balance = $totalSubscriptions - $totalReceipts;
    
        return view('customers.report', compact('customer', 'totalSubscriptions', 'totalReceipts', 'balance'));
    }

    public function outstandingReport()
{
    $customers = Customer::with(['subscriptions', 'receipts'])->get();

    $outstandingCustomers = $customers->filter(function ($customer) {
        $totalSubscriptions = $customer->subscriptions->sum('price');
        $totalReceipts = $customer->receipts->sum('amount');
        $balance = $totalSubscriptions - $totalReceipts;

        return $balance > 0; // العملاء الذين لديهم رصيد مستحق
    });

    return view('customers.outstanding', compact('outstandingCustomers'));
}

    
public function showTransactions($id)
    {
        $customer = Customer::findOrFail($id);
        $receipts = Receipt::where('customer_id', $id)->get();
        $subscriptions = Subscription::where('customer_id', $id)->get(); // استخدام Subscriptions

        return view('customers.transactions', compact('customer', 'receipts', 'subscriptions'));
    }
    
    
}

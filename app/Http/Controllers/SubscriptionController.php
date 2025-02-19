<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Subscription;
use App\Models\Package;
use App\Models\MaintenanceLog;
use Illuminate\Support\Facades\Log;

class SubscriptionController extends Controller
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
        $query = Subscription::with('customer');
    
        // فلترة حسب التواريخ
        if ($request->has('start_date') && $request->has('end_date') &&
            !empty($request->start_date) && !empty($request->end_date)) {
            $query->whereBetween('start_date', [$request->start_date, $request->end_date]);
        }
    
        // البحث حسب الاسم أو username
        if ($request->has('search') && !empty($request->search)) {
            $search = $request->search;
            $query->whereHas('customer', function ($q) use ($search) {
                $q->where('full_name', 'LIKE', "%{$search}%")
                  ->orWhere('username', 'LIKE', "%{$search}%");
            });
        }
    
        $subscriptions = $query->paginate(10);
    
        return view('subscriptions.index', compact('subscriptions'));
    }
    
    
    
    





    public function create()
    {
        $customers = Customer::all();
        $packages = Package::with('company')->get();
        return view('subscriptions.create', compact('customers', 'packages'));
    }

   
    public function store(Request $request)
    {
        // التحقق من صحة البيانات المُرسلة
        $data = $request->validate([
            'customer_id' => 'required|exists:customers,id',
            'package_id' => 'required|exists:packages,id',
            'price' => 'required|string',
            'start_date' => 'required|date',
            'end_date' => 'required|date|after:start_date',
        ]);
    
        // تنظيف السعر من الرموز غير الرقمية
        $data['price'] = preg_replace('/[^0-9.]/', '', $data['price']);
    
        // التحقق من وجود اشتراك نشط للزبون
        $existingSubscription = Subscription::where('customer_id', $data['customer_id'])
            ->where('end_date', '>=', $data['start_date'])
            ->first();
    
        if ($existingSubscription) {
            return redirect()->back()->withErrors(['error' => 'This customer already has an active subscription.']);
        }
    
        // جلب بيانات الباقة
        $package = \App\Models\Package::findOrFail($data['package_id']);
        $data['package_name'] = $package->name;
    
        // إنشاء الاشتراك الجديد
        Subscription::create($data);
    
        return redirect()->to(session('previous_url', route('subscriptions.index')))
        ->with('success', 'Subscription created successfully!');    }
    
    
    

    public function edit($id)
    {
        $subscription = Subscription::findOrFail($id);
        $customers = Customer::all();
        $packages = Package::all();
    
        return view('subscriptions.edit', compact('subscription', 'customers', 'packages'));
    }
    

    public function update(Request $request, $id)
{
    $subscription = Subscription::findOrFail($id);

    $data = $request->validate([
        'customer_id' => 'required|exists:customers,id',
        'package_id' => 'required|exists:packages,id',
        'price' => 'required|numeric|min:0',
        'start_date' => 'required|date',
        'end_date' => 'required|date|after:start_date',
    ]);

    $subscription->update($data);

       //return redirect()->route('subscriptions.index')->with('success', 'Subscription updated successfully!');
       return redirect()->to(url()->previous())->with('success', 'Subscription updated successfully!');
}

    


    public function destroy($id)
    {
        $subscription = Subscription::findOrFail($id);
        $subscription->delete();
    
        return redirect()->route('subscriptions.index')->with('success', 'Subscription deleted successfully!');
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

}
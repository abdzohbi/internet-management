<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Subscription;
use App\Models\Expense;
use App\Models\MaintenanceLog;

class MaintenanceLogController extends Controller
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
        $query = \App\Models\MaintenanceLog::with('customer');
    
        // التحقق من وجود طلب بحث
        if ($request->has('search') && !empty($request->search)) {
            $search = $request->search;
            $query->whereHas('customer', function ($q) use ($search) {
                $q->where('username', 'like', "%{$search}%")
                  ->orWhere('full_name', 'like', "%{$search}%");
            });
        }
    
        $logs = $query->get();
    
        return view('maintenance_logs.index', compact('logs'));
    }
    
    

    public function create()
    {
        $customers = \App\Models\Customer::all(); // جلب جميع العملاء
        return view('maintenance_logs.create', compact('customers'));
    }
    
    
    

    public function store(Request $request)
    {
        $request->validate([
            'customer_id' => 'required|exists:customers,id',
            'maintenance_date' => 'required|date',
            'notes' => 'nullable|string',
        ]);
    
        MaintenanceLog::create($request->all());
    
        return redirect()->route('maintenance_logs.index')->with('success', 'Maintenance log created successfully.');
    }
    

    public function edit(MaintenanceLog $maintenanceLog)
    {
        $customers = \App\Models\Customer::all(); // جلب قائمة العملاء
        return view('maintenance_logs.edit', compact('maintenanceLog', 'customers'));
    }
    
    

    public function update(Request $request, MaintenanceLog $maintenanceLog)
    {
        $request->validate([
            'customer_id' => 'required|exists:customers,id',
            'maintenance_date' => 'required|date',
            'notes' => 'nullable|string',
        ]);
    
        $maintenanceLog->update($request->all());
    
        return redirect()->route('maintenance_logs.index')->with('success', 'Maintenance log updated successfully.');
    }
    


    public function destroy(MaintenanceLog $maintenanceLog)
    {
        $maintenanceLog->delete();

        return redirect()->route('maintenance_logs.index')->with('success', 'Maintenance log deleted successfully!');
    }


    public function logsByCustomer($customerId)
{
    $customer = \App\Models\Customer::findOrFail($customerId);
    $logs = MaintenanceLog::where('customer_id', $customerId)->get();

    return view('maintenance_logs.by_customer', compact('customer', 'logs'));
}

}

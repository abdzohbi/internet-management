<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Expense;
use App\Models\Subscription;
use Carbon\Carbon;

use App\Models\Receipt;
class DashboardController extends Controller
{

    function __construct()
{
     $this->middleware('permission:account-list', ['only' => ['index', 'show', 'outstandingReport', 'showTransactions']]);
     $this->middleware('permission:account-create', ['only' => ['create', 'store']]);
     $this->middleware('permission:account-edit', ['only' => ['edit', 'update']]);
     $this->middleware('permission:account-delete', ['only' => ['destroy']]);
}

    public function index()
    {
        $currentMonth = Carbon::now()->month;
        $currentYear = Carbon::now()->year;
    
        // حساب إجمالي العملاء
        $totalCustomers = Customer::count();
    
        // إجمالي المصاريف لهذا الشهر
        $totalExpensesThisMonth = Expense::whereMonth('date', $currentMonth)
            ->whereYear('date', $currentYear)
            ->sum('amount');
    
        // حساب الرصيد المستحق لجميع العملاء
        $outstandingBalances = Customer::with(['subscriptions', 'receipts'])->get()
            ->map(function ($customer) {
                $totalSubscriptions = $customer->subscriptions->sum('price');
                $totalReceipts = $customer->receipts->sum('amount');
                return $totalSubscriptions - $totalReceipts;
            })
            ->sum();
    
        // اشتراكات هذا الشهر
        $subscriptionsThisMonth = Subscription::whereMonth('start_date', $currentMonth)
            ->whereYear('start_date', $currentYear)
            ->get();
        $totalSubscriptionsCount = $subscriptionsThisMonth->count();
        $totalSubscriptionsValue = $subscriptionsThisMonth->sum('price');
    
        // **إجمالي المدفوعات (الإيصالات) لهذا الشهر**
        $totalReceiptsThisMonth = Receipt::whereMonth('date', $currentMonth)
            ->whereYear('date', $currentYear)
            ->sum('amount');
    
        // الاشتراكات حسب الشركة
        $subscriptionsPerCompany = Subscription::with('package.company')
            ->whereMonth('start_date', $currentMonth)
            ->whereYear('start_date', $currentYear)
            ->get()
            ->groupBy('package.company.name')
            ->map(function ($subscriptions) {
                return [
                    'count' => $subscriptions->count(),
                    'total' => $subscriptions->sum('price'),
                ];
            });
    
        return view('dashboard.index', compact(
            'totalCustomers',
            'totalExpensesThisMonth',
            'outstandingBalances',
            'totalSubscriptionsCount',
            'totalSubscriptionsValue',
            'totalReceiptsThisMonth', // **تم تمرير المتغير إلى الواجهة**
            'subscriptionsPerCompany'
        ));
    }
    
}

<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Expense;
use App\Models\Subscription;
use App\Models\Receipt;
use Carbon\Carbon;

class DashboardController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:customer-list', ['only' => ['index', 'show']]);
    }

    public function index()
    {
        // ✅ استدعاء الدالة الجديدة لجلب البيانات
        $dashboardData = $this->getDashboardData();

        return view('dashboard.index', $dashboardData);
    }

    // ✅ دالة منفصلة لحساب البيانات مع التحقق من الإذن
    private function getDashboardData()
    {
        // 🔹 التحقق مما إذا كان المستخدم لديه الإذن "account-list"
        if (!auth()->user()->can('account-list')) {
            return [
                'totalCustomers' => null,
                'totalExpensesThisMonth' => null,
                'outstandingBalances' => null,
                'totalSubscriptionsCount' => null,
                'totalSubscriptionsValue' => null,
                'totalReceiptsThisMonth' => null,
                'cashBoxBalance' => null,
                'subscriptionsPerCompany' => collect(), // منع الأخطاء عند عرض البيانات
            ];
        }

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

        // **حساب رصيد الصندوق الحالي**
        $totalReceipts = Receipt::sum('amount'); // إجمالي المقبوضات
        $totalExpenses = Expense::sum('amount'); // إجمالي المصاريف
        $cashBoxBalance = $totalReceipts - $totalExpenses; // ✅ الرصيد النهائي للصندوق

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

        return compact(
            'totalCustomers',
            'totalExpensesThisMonth',
            'outstandingBalances',
            'totalSubscriptionsCount',
            'totalSubscriptionsValue',
            'totalReceiptsThisMonth',
            'cashBoxBalance',
            'subscriptionsPerCompany'
        );
    }
}
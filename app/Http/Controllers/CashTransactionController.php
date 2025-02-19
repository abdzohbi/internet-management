<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Models\Receipt;
use App\Models\Expense;
use App\Models\Customer;

class CashTransactionController extends Controller
{
    public function index(Request $request)
    {
        $selectedMonth = $request->input('month', now()->format('Y-m'));

        // الحصول على نطاق التواريخ المحدد من الطلب، أو تعيين القيم الافتراضية
        $startDate = $request->input('start_date', Carbon::now()->startOfMonth()->format('Y-m-d'));
        $endDate = $request->input('end_date', Carbon::now()->endOfMonth()->format('Y-m-d'));

        // استرجاع المقبوضات بين تاريخين مع تحميل العملاء
        $receipts = Receipt::whereBetween('created_at', [$startDate, $endDate])
                           ->orderBy('created_at', 'asc')
                           ->with('customer')
                           ->get();

        // استرجاع المصاريف بين تاريخين
        $expenses = Expense::whereBetween('created_at', [$startDate, $endDate])
                           ->orderBy('created_at', 'asc')
                           ->get();

        // تجهيز بيانات كشف الصندوق
        $transactions = [];
        $total_debit = 0; // إجمالي المدين
        $total_credit = 0; // إجمالي الدائن

        foreach ($receipts as $receipt) {
            $transactions[] = [
                'date' => $receipt->created_at->format('Y-m-d'),
                'description' => "مقبوضات من " . ($receipt->customer ? $receipt->customer->username : "عميل غير معروف"),
                'debit' => $receipt->amount,
                'credit' => null,
                'balance' => 0,
            ];
            $total_debit += $receipt->amount;
        }

        foreach ($expenses as $expense) {
            $transactions[] = [
                'date' => $expense->created_at->format('Y-m-d'),
                'description' => $expense->description,
                'debit' => null,
                'credit' => $expense->amount,
                'balance' => 0,
            ];
            $total_credit += $expense->amount;
        }

        // ترتيب العمليات حسب التاريخ
        usort($transactions, function ($a, $b) {
            return strtotime($a['date']) - strtotime($b['date']);
        });

        // حساب الرصيد
        $balance = 0;
        foreach ($transactions as &$transaction) {
            if ($transaction['debit']) {
                $balance += $transaction['debit'];
            }
            if ($transaction['credit']) {
                $balance -= $transaction['credit'];
            }
            $transaction['balance'] = $balance;
        }

        return view('cash.index', compact('transactions', 'selectedMonth', 'startDate', 'endDate', 'total_debit', 'total_credit'));
    }




    public function getCurrentBalance()
{
    $total_debit = Receipt::sum('amount'); // إجمالي المقبوضات
    $total_credit = Expense::sum('amount'); // إجمالي المصاريف

    return $total_debit - $total_credit; // الرصيد الحالي
}

}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Receipt;
use App\Models\Expense;
use App\Models\Subscription;

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use Illuminate\Support\Facades\Response;

class ReportsController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:account-list', ['only' => ['index', 'show', 'outstandingReport', 'showTransactions']]);
         $this->middleware('permission:account-create', ['only' => ['create', 'store']]);
         $this->middleware('permission:account-edit', ['only' => ['edit', 'update']]);
         $this->middleware('permission:account-delete', ['only' => ['destroy']]);
    }
    public function outstandingCustomers()
    {
        $customers = Customer::with(['subscriptions', 'receipts'])->get();
    
        $outstandingCustomers = $customers->filter(function ($customer) {
            $totalSubscriptions = $customer->subscriptions->sum('price');
            $totalReceipts = $customer->receipts->sum('amount');
            $balance = $totalSubscriptions - $totalReceipts;
    
            return $balance > 0; // العملاء الذين لديهم رصيد مستحق
        });
    
        // ترتيب العملاء حسب المدينة
        $outstandingCustomers = $outstandingCustomers->sortBy('town');
    
        return view('reports.outstanding_customers', compact('outstandingCustomers'));
    }
    


    public function exportCustomersWithBalance()
    {
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        // إعداد العناوين
        $sheet->setCellValue('A1', 'Full Name');
        $sheet->setCellValue('B1', 'Username');
        $sheet->setCellValue('C1', 'Phone');
        $sheet->setCellValue('D1', 'Town');
        $sheet->setCellValue('E1', 'Total Subscriptions');
        $sheet->setCellValue('F1', 'Total Receipts');
        $sheet->setCellValue('G1', 'Balance');

        // البيانات
        $customers = Customer::with(['subscriptions', 'receipts'])->get();
        $row = 2;
        foreach ($customers as $customer) {
            $totalSubscriptions = $customer->subscriptions->sum('price');
            $totalReceipts = $customer->receipts->sum('amount');
            $balance = $totalSubscriptions - $totalReceipts;

            $sheet->setCellValue("A{$row}", $customer->full_name);
            $sheet->setCellValue("B{$row}", $customer->username);
            $sheet->setCellValue("C{$row}", $customer->phone);
            $sheet->setCellValue("D{$row}", $customer->town);
            $sheet->setCellValue("E{$row}", $totalSubscriptions);
            $sheet->setCellValue("F{$row}", $totalReceipts);
            $sheet->setCellValue("G{$row}", $balance);
            $row++;
        }

        // حفظ الملف
        $fileName = 'customers_with_balance.xlsx';
        $writer = new Xlsx($spreadsheet);
        $writer->save($fileName);

        return response()->download($fileName)->deleteFileAfterSend();
    }



    public function exportReceipts()
{
    $spreadsheet = new Spreadsheet();
    $sheet = $spreadsheet->getActiveSheet();

    // إعداد العناوين
    $sheet->setCellValue('A1', 'Receipt ID');
    $sheet->setCellValue('B1', 'Customer Name');
    $sheet->setCellValue('C1', 'Username');
    $sheet->setCellValue('D1', 'Amount');
    $sheet->setCellValue('E1', 'Description');
    $sheet->setCellValue('F1', 'Date');

    // البيانات
    $receipts = Receipt::with('customer')->get();
    $row = 2;
    foreach ($receipts as $receipt) {
        $sheet->setCellValue("A{$row}", $receipt->id);
        $sheet->setCellValue("B{$row}", $receipt->customer->full_name ?? 'N/A');
        $sheet->setCellValue("C{$row}", $receipt->customer->username ?? 'N/A');
        $sheet->setCellValue("D{$row}", $receipt->amount);
        $sheet->setCellValue("E{$row}", $receipt->description);
        $sheet->setCellValue("F{$row}", $receipt->date);
        $row++;
    }

    // حفظ الملف
    $fileName = 'receipts.xlsx';
    $writer = new Xlsx($spreadsheet);
    $writer->save($fileName);

    return response()->download($fileName)->deleteFileAfterSend();
}


public function index()
{
    return view('reports.index'); // عرض صفحة إدخال التواريخ
}


public function financialReport(Request $request)
{
    $request->validate([
        'start_date' => 'required|date',
        'end_date' => 'required|date|after_or_equal:start_date',
    ]);

    $start_date = $request->start_date;
    $end_date = $request->end_date;

    // حساب مجموع المصروفات
    $totalExpenses = Expense::whereBetween('date', [$start_date, $end_date])->sum('amount');

    // حساب مجموع الاشتراكات
    $totalIncome = Subscription::whereBetween('start_date', [$start_date, $end_date])->sum('price');

    // حساب مجموع الديون على الزبائن
    $totalDebts = Receipt::whereBetween('date', [$start_date, $end_date])
        ->where('amount', '>', 0)
        ->sum('amount');

    // إرسال البيانات إلى العرض
    return view('reports.financial', compact(
        'totalExpenses',
        'totalIncome',
        'totalDebts',
        'start_date',
        'end_date'
    ));
}






}

<?php

namespace App\Helpers;

use App\Models\Receipt;
use App\Models\Expense;

class FinanceHelper
{
    public static function getCurrentBalance()
    {
        $total_debit = Receipt::sum('amount'); // إجمالي المقبوضات
        $total_credit = Expense::sum('amount'); // إجمالي المصاريف

        return $total_debit - $total_credit; // الرصيد الحالي
    }
}

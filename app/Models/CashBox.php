<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CashBox extends Model
{
    // حساب إجمالي المقبوضات
    public static function totalReceipts()
    {
        return Receipt::sum('amount');
    }

    // حساب إجمالي المصاريف
    public static function totalExpenses()
    {
        return Expense::sum('amount');
    }

    // حساب رصيد الصندوق
    public static function balance()
    {
        return self::totalReceipts() - self::totalExpenses();
    }
}

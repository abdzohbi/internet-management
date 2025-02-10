<?php

namespace App\Exports;

use App\Models\Customer;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class OutstandingCustomersExport implements FromCollection, WithHeadings
{
    public function collection()
    {
        $customers = Customer::with(['subscriptions', 'receipts'])->get();

        $outstandingCustomers = $customers->filter(function ($customer) {
            $totalSubscriptions = $customer->subscriptions->sum('price');
            $totalReceipts = $customer->receipts->sum('amount');
            $balance = $totalSubscriptions - $totalReceipts;

            return $balance > 0; // العملاء الذين لديهم رصيد مستحق
        });

        return $outstandingCustomers->map(function ($customer) {
            $totalSubscriptions = $customer->subscriptions->sum('price');
            $totalReceipts = $customer->receipts->sum('amount');
            $balance = $totalSubscriptions - $totalReceipts;

            return [
                'Full Name' => $customer->full_name,
                'Username' => $customer->username,
                'Phone' => $customer->phone,
                'Town' => $customer->town,
                'Total Subscriptions' => number_format($totalSubscriptions, 2),
                'Total Receipts' => number_format($totalReceipts, 2),
                'Balance' => number_format($balance, 2),
            ];
        });
    }

    public function headings(): array
    {
        return [
            'Full Name',
            'Username',
            'Phone',
            'Town',
            'Total Subscriptions',
            'Total Receipts',
            'Balance',
        ];
    }
}

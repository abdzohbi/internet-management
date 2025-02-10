<?php 
namespace App\Exports;

use App\Models\Receipt;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ReceiptsExport implements FromCollection, WithHeadings
{
    public function collection()
    {
        return Receipt::all(['id', 'customer_id', 'amount', 'description', 'date']);
    }

    public function headings(): array
    {
        return ['ID', 'Customer ID', 'Amount', 'Description', 'Date'];
    }
}

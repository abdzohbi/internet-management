@extends('layouts.app')

@section('title', 'Receipts List')

@section('content')
<div class="container">
    <h1 class="mb-4 text-center">Receipts List</h1>

    <!-- أزرار إضافية -->
    <div class="mb-3 d-flex justify-content-between align-items-center">
        <a href="{{ route('receipts.create') }}" class="btn btn-primary">
            <i class="fa fa-plus"></i> Add New Receipt
        </a>
        <div>
            <button  id="printButton" class="btn btn-success me-2">
                <i class="fa fa-print"></i> Print
            </button>
            <a href="{{ route('reports.export.receipts') }}" class="btn btn-info">
                <i class="fa fa-file-excel"></i> Export to Excel
            </a>
        </div>
    </div>

    <!-- نموذج البحث والفلترة -->
    <form method="GET" action="{{ route('receipts.index') }}" class="mb-4">
        <div class="row g-3 align-items-center">
            <div class="col-md-3">
                <input type="text" name="search" id="search" class="form-control" 
                       placeholder="Search by name or username" value="{{ request('search') }}">
            </div>
            <div class="col-md-3">
                <input type="date" name="start_date" id="start_date" class="form-control" 
                       value="{{ request('start_date') }}" placeholder="Start Date">
            </div>
            <div class="col-md-3">
                <input type="date" name="end_date" id="end_date" class="form-control" 
                       value="{{ request('end_date') }}" placeholder="End Date">
            </div>
            <div class="col-md-3 d-flex justify-content-between">
                <button type="submit" class="btn btn-primary w-100 me-2"><i class="fa fa-filter"></i> Filter</button>
                <a href="{{ route('receipts.index') }}" class="btn btn-secondary"><i class="fa fa-sync"></i> Reset</a>
            </div>
        </div>
    </form>

    <!-- جدول الدفعات -->
    <div class="table-responsive">
        <table id="receiptsTable" class="table table-bordered table-hover text-center">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Customer</th>
                    <th>Username</th>
                    <th>Amount</th>
                    <th>Description</th>
                    <th>Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @forelse($receipts as $receipt)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>
                            <a href="{{ route('customers.report', $receipt->customer->id) }}" class="text-primary">
                                {{ $receipt->customer->full_name }}
                            </a>
                        </td>
                        <td>{{ $receipt->customer->username }}</td>
                        <td>${{ number_format($receipt->amount, 2) }}</td>
                        <td>{{ $receipt->description }}</td>
                        <td>{{ $receipt->date }}</td>
                        <td>
                            <a href="{{ route('receipts.edit', $receipt->id) }}" class="btn btn-warning btn-sm">
                                <i class="fa fa-edit"></i> Edit
                            </a>
                            <a href="{{ route('receipt.print', $receipt->id) }}" class="btn btn-warning btn-sm">
                                <i class="fa fa-print"></i> Print
                            </a>


                            <form action="{{ route('receipts.destroy', $receipt->id) }}" method="POST" style="display:inline;">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">
                                    <i class="fa fa-trash"></i> Delete
                                </button>
                            </form>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="7" class="text-center text-danger">No receipts found.</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>

    <!-- مجموع الدفعات -->
    <div class="alert alert-info text-end">
        <strong>Total Receipts: ${{ number_format($totalReceipts, 2) }}</strong>
    </div>

    <!-- التصفح -->
    <div class="d-flex justify-content-center">
        {{ $receipts->withQueryString()->links() }}
    </div>
</div>

<script>
    document.getElementById('printButton').addEventListener('click', function () {
        // جلب محتوى الجدول
        const tableContent = document.getElementById('receiptsTable').outerHTML;

        // فتح نافذة جديدة
        const printWindow = window.open('', '', 'height=600,width=800');

        // إضافة محتوى الجدول فقط
        printWindow.document.write('<html><head><title>Print Receipts</title></head><body>');
        printWindow.document.write('<table border="1" style="width: 100%; border-collapse: collapse;">');
        printWindow.document.write(tableContent);
        printWindow.document.write('</table>');
        printWindow.document.write('</body></html>');

        // إغلاق نافذة التحرير وتشغيل الطباعة
        printWindow.document.close();
        printWindow.print();
    });
</script>

@endsection

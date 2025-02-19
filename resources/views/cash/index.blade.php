@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4 text-center">كشف حساب الصندوق</h2>

    <!-- نموذج لاختيار التاريخ -->
    <form method="GET" action="{{ route('cash.index') }}" class="mb-4 d-flex gap-2">
        <div>
            <label for="start_date">From :</label>
            <input type="date" name="start_date" id="start_date" value="{{ $startDate }}" class="form-control">
        </div>
        <div>
            <label for="end_date"> To:</label>
            <input type="date" name="end_date" id="end_date" value="{{ $endDate }}" class="form-control">
        </div>
        <div>
            <label>&nbsp;</label>
            <button type="submit" class="btn btn-primary">Filter</button>
        </div>
    </form>

    <table class="table table-bordered text-center">
        <thead class="table-warning">
            <tr>
                <th>التاريخ</th>
                <th>البيان</th>
                <th>مدين</th>
                <th>دائن</th>
                <th>الرصيد</th>
            </tr>
        </thead>
        <tbody>
            @foreach($transactions as $transaction)
            <tr>
                <td>{{ $transaction['date'] }}</td>
                <td>{{ $transaction['description'] }}</td>
                <td>{{ $transaction['debit'] ? number_format($transaction['debit'], 2) : '-' }}</td>
                <td>{{ $transaction['credit'] ? number_format($transaction['credit'], 2) : '-' }}</td>
                <td><strong>{{ number_format($transaction['balance'], 2) }}</strong></td>
            </tr>
            @endforeach
        </tbody>
        <tfoot>
            <tr class="table-info">
                <th colspan="2">الإجمالي</th>
                <th>{{ number_format($total_debit, 2) }}</th>
                <th>{{ number_format($total_credit, 2) }}</th>
                <th>-</th>
            </tr>
        </tfoot>
    </table>
</div>

@endsection

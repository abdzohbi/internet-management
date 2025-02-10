@extends('layouts.app')

@section('title', 'Financial Report')

@section('content')
<div class="container">
    <h1 class="mb-4"><i class="bi bi-file-earmark-text"></i> Financial Report</h1>
    <h5 class="text-muted">Report from {{ $start_date }} to {{ $end_date }}</h5>

    <div class="row my-4">
        <div class="col-md-4">
            <h3>Total Expenses</h3>
            <p class="fs-4 text-danger">${{ number_format($totalExpenses, 2) }}</p>
        </div>
        <div class="col-md-4">
            <h3>Total Subscriptions</h3>
            <p class="fs-4 text-success">${{ number_format($totalIncome, 2) }}</p>
        </div>
        <div class="col-md-4">
            <h3>Total Debts</h3>
            <p class="fs-4 text-warning">${{ number_format($totalDebts, 2) }}</p>
        </div>
    </div>
</div>
@endsection

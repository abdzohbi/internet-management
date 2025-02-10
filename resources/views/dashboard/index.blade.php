@extends('layouts.app')

@section('title', 'Dashboard')

@section('content')
<div class="container mt-4">
    <div class="row">
        <div class="col-md-3">
            <div class="card text-white bg-primary">
                <div class="card-body">
                    <h5 class="card-title">Total Customers</h5>
                    <p class="card-text display-6">{{ $totalCustomers }}</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-white bg-success">
                <div class="card-body">
                    <h5 class="card-title">Expenses This Month</h5>
                    <p class="card-text display-6">${{ number_format($totalExpensesThisMonth, 2) }}</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-white bg-danger">
                <div class="card-body">
                    <h5 class="card-title">Outstanding Balances</h5>
                    <p class="card-text display-6">${{ number_format($outstandingBalances, 2) }}</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-white bg-info">
                <div class="card-body">
                    <h5 class="card-title">Subscriptions This Month</h5>
                    <p class="card-text display-6">{{ $totalSubscriptionsCount }} / ${{ number_format($totalSubscriptionsValue, 2) }}</p>
                </div>
            </div>
        </div>


        <div class="col-md-3">
    <div class="card text-white bg-warning">
        <div class="card-body">
            <h5 class="card-title">Total Receipts This Month</h5>
            <p class="card-text display-6">${{ number_format($totalReceiptsThisMonth, 2) }}</p>
        </div>
    </div>
</div>

    </div>

    <div class="mt-4">
        <h4>Subscriptions Per Company</h4>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Company</th>
                    <th>Count</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($subscriptionsPerCompany as $company => $data)
                <tr>
                    <td>{{ $company }}</td>
                    <td>{{ $data['count'] }}</td>
                    <td>${{ number_format($data['total'], 2) }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection

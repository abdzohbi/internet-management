@extends('layouts.app')

@section('title', 'Outstanding Customers')

@section('content')
<div class="container">
    <h1 class="mb-4">Outstanding Customers</h1>

    @if($outstandingCustomers->isEmpty())
        <div class="alert alert-success">
            No outstanding bills found.
        </div>
    @else
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Full Name</th>
                    <th>Username</th>
                    <th>Phone</th>
                    <th>Town</th>
                    <th>Total Subscriptions</th>
                    <th>Total Receipts</th>
                    <th>Balance</th>
                </tr>
            </thead>
            <tbody>
                @foreach($outstandingCustomers as $customer)
                    @php
                        $totalSubscriptions = $customer->subscriptions->sum('price');
                        $totalReceipts = $customer->receipts->sum('amount');
                        $balance = $totalSubscriptions - $totalReceipts;
                    @endphp
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $customer->full_name }}</td>
                        <td>{{ $customer->username }}</td>
                        <td>{{ $customer->phone }}</td>
                        <td>{{ $customer->town }}</td>
                        <td>${{ number_format($totalSubscriptions, 2) }}</td>
                        <td>${{ number_format($totalReceipts, 2) }}</td>
                        <td>${{ number_format($balance, 2) }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    @endif
</div>
@endsection

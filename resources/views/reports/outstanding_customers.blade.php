@extends('layouts.app')

@section('title', 'Outstanding Customers Report')

@section('content')
<style>
    @media print {
        body * {
            visibility: hidden;
        }
        .container, .container * {
            visibility: visible;
        }
        .container {
            position: absolute;
            top: 0;
            left: 0;
        }
        .btn {
            display: none;
        }
    }
</style>

<div class="container">
    <h1 class="mb-4">Outstanding Customers Report</h1>

    <!-- زر الطباعة -->
    <div class="mb-3">
        <button class="btn btn-primary" onclick="window.print()">
            <i class="bi bi-printer"></i> Print
        </button>
        <a href="{{ route('reports.export.customers.balance') }}" class="btn btn-success">
            <i class="bi bi-file-earmark-excel"></i> Export Customers to Excel
        </a>
    </div>

    @if($outstandingCustomers->isEmpty())
        <div class="alert alert-success">No outstanding bills found.</div>
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
                        <td>
                            <a href="{{ route('customers.transactions', $customer->id) }}" class="text-primary text-decoration-none">
                                {{ $customer->full_name }}
                            </a>
                        </td>
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

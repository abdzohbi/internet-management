@extends('layouts.app')

@section('title', 'Customer Report')

@section('content')

<style>
    @media print {

        @page {
            margin: 20mm;
        }

        /* إخفاء العناصر الإضافية */
        body {
            margin: 0;
            padding: 0;
        }

        /* إخفاء أي أزرار أو عناصر غير التقرير */
        button, .navbar, footer, .d-print-none {
            display: none !important;
        }
        /* إزالة العناصر غير الضرورية */
        body * {
            visibility: hidden;
        }

        #print-area, #print-area * {
            visibility: visible;
        }

        #print-area {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
        }

        /* تقليل حجم النص لتحسين التناسب */
        body {
            font-size: 12px;
        }

        h1, h4 {
            text-align: center;
            margin-bottom: 10px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            font-size: 12px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 5px;
        }

        th {
            background-color: #f2f2f2;
            text-align: left;
        }

        /* إزالة زر الطباعة */
        .d-print-none {
            display: none !important;
        }

        /* تخصيص المساحة للطباعة */
        @page {
            size: A4;
            margin: 20mm;
        }
    }
</style>

<div class="container" id="print-area">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1 class="text-center w-100">Customer Report</h1>
        <button onclick="window.print()" class="btn btn-primary d-print-none">Print</button>
    </div>

    <!-- معلومات العميل -->
    <div class="mb-4">
        <p><strong>Full Name:</strong> {{ $customer->full_name }}</p>
        <p><strong>Username:</strong> {{ $customer->username }}</p>
        <p><strong>Phone:</strong> {{ $customer->phone }}</p>
        <p><strong>Town:</strong> {{ $customer->town }}</p>
    </div>

    <!-- جدول الاشتراكات -->
    <div class="mb-4">
        <h4>Subscriptions</h4>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Package</th>
                    <th>Price</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                </tr>
            </thead>
            <tbody>
                @foreach($customer->subscriptions as $subscription)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $subscription->package_name }}</td>
                        <td>${{ $subscription->price }}</td>
                        <td>{{ $subscription->start_date }}</td>
                        <td>{{ $subscription->end_date }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <!-- جدول الدفعات -->
    <div class="mb-4">
        <h4>Receipts</h4>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Amount</th>
                    <th>Description</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                @foreach($customer->receipts as $receipt)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>${{ $receipt->amount }}</td>
                        <td>{{ $receipt->description }}</td>
                        <td>{{ $receipt->date }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <!-- ملخص القيم التراكمية -->
    <div>
        <h4>Summary</h4>
        <p><strong>Total Subscriptions:</strong> ${{ $totalSubscriptions }}</p>
        <p><strong>Total Receipts:</strong> ${{ $totalReceipts }}</p>
        <p><strong>Balance:</strong> ${{ $balance }}</p>
    </div>
</div>
@endsection

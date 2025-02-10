@extends('layouts.app')

@section('content')
<div class="container">
    <h2>جميع الإيصالات والاشتراكات الخاصة بـ {{ $customer->name }}</h2>

    <h3>الإيصالات</h3>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>رقم الإيصال</th>
                <th>المبلغ</th>
                <th>التاريخ</th>
                <th>الإجراء</th>
            </tr>
        </thead>
        <tbody>
            @foreach($receipts as $receipt)
                <tr>
                    <td>
                        <a href="{{ route('receipts.edit', $receipt->id) }}" class="text-primary text-decoration-none">
                            {{ $receipt->id }}
                        </a>
                    </td>
                    <td>{{ $receipt->amount }}</td>
                    <td>
                        <a href="{{ route('receipts.edit', $receipt->id) }}" class="text-primary text-decoration-none">
                            {{ $receipt->date }}
                        </a>
                    </td>
                    <td><a href="{{ route('receipts.edit', $receipt->id) }}" class="btn btn-warning">تعديل</a></td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <h3>الاشتراكات</h3>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>الباقة</th>
                <th>السعر</th>
                <th>تاريخ الاشتراك</th>
                <th>الإجراء</th>
            </tr>
        </thead>
        <tbody>
            @foreach($subscriptions as $subscription)
                <tr>
                <td>{{ $subscription->package->name ?? 'غير متوفر' }}</td>
                <td>{{ $subscription->price }}</td>
                    <td>
                        <a href="{{ route('subscriptions.edit', $subscription->id) }}" class="text-primary text-decoration-none">
                            {{ $subscription->start_date }}
                        </a>
                    </td>
                    <td><a href="{{ route('subscriptions.edit', $subscription->id) }}" class="btn btn-warning">تعديل</a></td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection

@extends('layouts.app')

@section('content')
<div class="container">
    <h2>تعديل الإيصال</h2>

    <form action="{{ route('receipts.update', $receipt->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="customer_id" class="form-label">الزبون</label>
            <select class="form-control" name="customer_id" required>
                @foreach($customers as $customer)
                    <option value="{{ $customer->id }}" {{ $customer->id == $receipt->customer_id ? 'selected' : '' }}>
                        {{ $customer->full_name }}
                    </option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="amount" class="form-label">المبلغ</label>
            <input type="number" class="form-control" name="amount" value="{{ $receipt->amount }}" required>
        </div>

        <div class="mb-3">
            <label for="date" class="form-label">التاريخ</label>
            <input type="date" class="form-control" name="date" value="{{ $receipt->date }}" required>
        </div>

        <button type="submit" class="btn btn-primary">حفظ التغييرات</button>
    </form>
</div>
@endsection

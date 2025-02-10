@extends('layouts.app')

@section('title', 'Add Receipt')

@section('content')
<div class="container">
    <h1 class="mb-4">Add Receipt</h1>

    <form method="POST" action="{{ route('receipts.store') }}">
        @csrf

        <div class="mb-3">
            <label for="customer_id" class="form-label">Customer</label>
            <select name="customer_id" id="customer_id" class="form-select" required>
                @foreach($customers as $customer)
                    <option value="{{ $customer->id }}" {{ isset($customer_id) && $customer_id == $customer->id ? 'selected' : '' }}>
                        {{ $customer->full_name }}
                    </option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="amount" class="form-label">Amount</label>
            <input type="number" name="amount" id="amount" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea name="description" id="description" class="form-control"></textarea>
        </div>

        <div class="mb-3">
            <label for="date" class="form-label">Date</label>
            <input type="date" name="date" id="date" class="form-control" value="{{ date('Y-m-d') }}" required>
        </div>

        <button type="submit" class="btn btn-success">Add Receipt</button>
    </form>
</div>
@endsection

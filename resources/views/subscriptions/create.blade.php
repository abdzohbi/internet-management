@extends('layouts.app')

@section('title', 'Add Subscription')

@section('content')
<div class="container">
    <h1 class="mb-4">Add Subscription</h1>
    <form method="POST" action="{{ route('subscriptions.store') }}">
        @csrf
        <div class="mb-3">
    <label for="customer_id" class="form-label">Customer</label>
    <select name="customer_id" id="customer_id" class="form-select" required>
        @foreach($customers as $customer)
            <option value="{{ $customer->id }}" 
                {{ request('customer_id') == $customer->id ? 'selected' : '' }}>
                {{ $customer->full_name }}
            </option>
        @endforeach
    </select>
</div>
        <div class="mb-3">
            <label for="package_id" class="form-label">Package</label>
            <select name="package_id" id="package_id" class="form-select" required onchange="updatePrice()">
                <option value="">Select a Package</option>
                @foreach($packages as $package)
                    <option value="{{ $package->id }}" data-price="{{ $package->sale_price }}">
                        {{ $package->name }} ({{ $package->company->name }}) - ${{ $package->sale_price }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Price</label>
            <input type="text" name="price" id="price" class="form-control" >
        </div>
        <div class="mb-3">
            <label for="start_date" class="form-label">Start Date</label>
            <input type="date" name="start_date" id="start_date" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="end_date" class="form-label">End Date</label>
            <input type="date" name="end_date" id="end_date" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Add Subscription</button>
    </form>
</div>

<script>
    // ضبط التواريخ الافتراضية
    document.addEventListener('DOMContentLoaded', function() {
        const startDate = document.getElementById('start_date');
        const endDate = document.getElementById('end_date');
        const today = new Date();
        const nextMonth = new Date(today);
        nextMonth.setMonth(today.getMonth() + 1);

        startDate.value = today.toISOString().split('T')[0];
        endDate.value = nextMonth.toISOString().split('T')[0];

        // تحديث End Date تلقائيًا عند تعديل Start Date
        startDate.addEventListener('change', function() {
            const selectedDate = new Date(startDate.value);
            const updatedEndDate = new Date(selectedDate);
            updatedEndDate.setMonth(selectedDate.getMonth() + 1);
            endDate.value = updatedEndDate.toISOString().split('T')[0];
        });
    });

    // تحديث السعر بناءً على الباقة المحددة
    function updatePrice() {
        const packageSelect = document.getElementById('package_id');
        const priceInput = document.getElementById('price');
        const selectedOption = packageSelect.options[packageSelect.selectedIndex];
        const price = selectedOption.getAttribute('data-price');
        priceInput.value = price ? `$${price}` : '';
    }
</script>
@endsection

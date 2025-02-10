@extends('layouts.app')

@section('title', 'Edit Subscription')

@section('content')
<div class="container">
    <h1 class="mb-4">Edit Subscription</h1>
    <form method="POST" action="{{ route('subscriptions.update', $subscription->id) }}">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="customer_id" class="form-label">Customer</label>
            <select name="customer_id" id="customer_id" class="form-select" required>
                @foreach($customers as $customer)
                    <option value="{{ $customer->id }}" {{ $subscription->customer_id == $customer->id ? 'selected' : '' }}>
                        {{ $customer->full_name }}
                    </option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="package_id" class="form-label">Package</label>
            <select name="package_id" id="package_id" class="form-select" required>
                @foreach($packages as $package)
                    <option value="{{ $package->id }}" {{ $subscription->package_id == $package->id ? 'selected' : '' }}>
                        {{ $package->name }}
                    </option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="price" class="form-label">Price</label>
            <input type="number" name="price" id="price" class="form-control" value="{{ $subscription->price }}" required>
        </div>

        <div class="mb-3">
            <label for="start_date" class="form-label">Start Date</label>
            <input type="date" name="start_date" id="start_date" class="form-control" value="{{ $subscription->start_date }}" required>
        </div>

        <div class="mb-3">
            <label for="end_date" class="form-label">End Date</label>
            <input type="date" name="end_date" id="end_date" class="form-control" value="{{ $subscription->end_date }}" required>
        </div>

        <button type="submit" class="btn btn-success">Update Subscription</button>
    </form>
</div>
@endsection

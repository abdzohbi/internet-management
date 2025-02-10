@extends('layouts.app')

@section('title', 'Customer Details')

@section('content')
<div class="container">
    <h1>Customer Details</h1>

    <div class="mb-3">
        <label class="form-label">Full Name:</label>
        <p>{{ $customer->full_name }}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Phone:</label>
        <p>{{ $customer->phone }}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Town:</label>
        <p>{{ $customer->town }}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Address:</label>
        <p>{{ $customer->address }}</p>
    </div>
    <div class="mb-3">
        <label class="form-label">Point:</label>
        <p>{{ $customer->connectionPoint->name ?? 'N/A'  }}</p>
    </div>

    <a href="{{ route('customers.index') }}" class="btn btn-secondary">Back to List</a>
</div>
@endsection

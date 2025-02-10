@extends('layouts.app')

@section('title', 'Create Maintenance Log')

@section('content')
<div class="container">
    <h1>Create Maintenance Log</h1>
    <form action="{{ route('maintenance_logs.store') }}" method="POST">
        @csrf
        <div class="mb-3">
    <label for="customer_id" class="form-label">Customer</label>
    <select name="customer_id" id="customer_id" class="form-control" required>
        <option value="" disabled selected>Select a customer</option>
        @foreach($customers as $customer)
            <option value="{{ $customer->id }}">{{ $customer->full_name }}</option>
        @endforeach
    </select>
</div>


        <div class="mb-3">
            <label for="maintenance_date" class="form-label">Maintenance Date</label>
            <input type="date" name="maintenance_date" id="maintenance_date" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="notes" class="form-label">Notes</label>
            <textarea name="notes" id="notes" class="form-control"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>
@endsection

@extends('layouts.app')

@section('title', 'Edit Maintenance Log')

@section('content')
<div class="container">
    <h1>Edit Maintenance Log</h1>
    <form action="{{ route('maintenance_logs.update', $maintenanceLog->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label for="customer_id" class="form-label">Customer</label>
            <select name="customer_id" id="customer_id" class="form-control" required>
                @foreach($customers as $customer)
                    <option value="{{ $customer->id }}" {{ $customer->id == $maintenanceLog->customer_id ? 'selected' : '' }}>
                        {{ $customer->full_name }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="mb-3">
            <label for="maintenance_date" class="form-label">Maintenance Date</label>
            <input type="date" name="maintenance_date" id="maintenance_date" class="form-control" value="{{ $maintenanceLog->maintenance_date }}" required>
        </div>
        <div class="mb-3">
            <label for="notes" class="form-label">Notes</label>
            <textarea name="notes" id="notes" class="form-control">{{ $maintenanceLog->notes }}</textarea>
        </div>
        <button type="submit" class="btn btn-primary">Save Changes</button>
    </form>
</div>
@endsection

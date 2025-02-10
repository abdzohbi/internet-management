@extends('layouts.app')

@section('title', 'Add Customer')

@section('content')
<div class="container">
    <h1>Add New Customer</h1>

    <form method="POST" action="{{ route('customers.store') }}">
        @csrf
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" name="username" id="username" class="form-control" value="{{ old('username') }}" required>
        </div>
        <div class="mb-3">
            <label for="full_name" class="form-label">Full Name</label>
            <input type="text" name="full_name" id="full_name" class="form-control" value="{{ old('full_name') }}" required>
        </div>
        <div class="mb-3">
            <label for="phone" class="form-label">Phone</label>
            <input type="text" name="phone" id="phone" class="form-control" value="{{ old('phone') }}" required>
        </div>
        <div class="mb-3">
            <label for="town" class="form-label">Town</label>
            <input type="text" name="town" id="town" class="form-control" value="{{ old('town') }}">
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <textarea name="address" id="address" class="form-control">{{ old('address') }}</textarea>
        </div>
        <div class="mb-3">
    <label for="connection_point_id" class="form-label">Connection Point</label>
    <select name="connection_point_id" id="connection_point_id" class="form-select">
        <option value="">Select a Connection Point</option>
        @foreach($connectionPoints as $point)
            <option value="{{ $point->id }}">{{ $point->name }} ({{ $point->station }})</option>
        @endforeach
    </select>
</div>
        <button type="submit" class="btn btn-primary">Add Customer</button>
    </form>
</div>
@endsection

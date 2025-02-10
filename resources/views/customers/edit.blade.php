@extends('layouts.app')

@section('title', 'Edit Customer')

@section('content')
<div class="container">
    <h1>Edit Customer</h1>

    <form method="POST" action="{{ route('customers.update', $customer->id) }}">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" name="username" id="username" class="form-control" value="{{ old('username', $customer->username) }}" required>
        </div>
        <div class="mb-3">
            <label for="full_name" class="form-label">Full Name</label>
            <input type="text" name="full_name" id="full_name" class="form-control" value="{{ old('full_name', $customer->full_name) }}" required>
        </div>
        <div class="mb-3">
            <label for="phone" class="form-label">Phone</label>
            <input type="text" name="phone" id="phone" class="form-control" value="{{ old('phone', $customer->phone) }}" required>
        </div>
        <div class="mb-3">
            <label for="town" class="form-label">Town</label>
            <input type="text" name="town" id="town" class="form-control" value="{{ old('town', $customer->town) }}">
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <textarea name="address" id="address" class="form-control">{{ old('address', $customer->address) }}</textarea>
        </div>
        <div class="mb-3">
            <label for="connection_point_id" class="form-label">Connection Point</label>
            <select name="connection_point_id" id="connection_point_id" class="form-select">
                <option value="">Select a Connection Point</option>
                @foreach($connectionPoints as $point)
                    <option value="{{ $point->id }}" {{ $customer->connection_point_id == $point->id ? 'selected' : '' }}>
                        {{ $point->name }} ({{ $point->station }})
                    </option>
                @endforeach
            </select>
</div>
        <button type="submit" class="btn btn-primary">Update Customer</button>
    </form>
</div>
@endsection

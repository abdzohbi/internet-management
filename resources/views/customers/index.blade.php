@extends('layouts.app')

@section('title', 'Customer List')

@section('content')
<div class="container">
    <!-- Header Section -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1 class="text-primary">Customer List</h1>
        <a href="{{ route('customers.create') }}" class="btn btn-primary">
            <i class="bi bi-person-plus"></i> Add Customer
        </a>
    </div>

    <!-- Search and Filters -->
    <form method="GET" action="{{ route('customers.index') }}" class="mb-4">
        <div class="row g-2">
            <div class="col-md-4">
                <input type="text" name="search" id="search" class="form-control" placeholder="Search by name or town" autocomplete="off" value="{{ request('search') }}">
            </div>
            <div class="col-md-4">
                <select name="sort_by" class="form-select">
                    <option value="full_name" {{ request('sort_by') == 'name' ? 'selected' : '' }}>Sort by Name</option>
                    <option value="town" {{ request('sort_by') == 'town' ? 'selected' : '' }}>Sort by Town</option>
                </select>
            </div>
            <div class="col-md-4">
                <button type="submit" class="btn btn-primary w-100">
                    <i class="bi bi-filter"></i> Filter
                </button>
            </div>
        </div>
    </form>

    <!-- Customer Table -->
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="table-light">
                <tr>
                    <th>#</th>
                    <th>Username</th>
                    <th>الأسم</th>
                    <th>الهاتف</th>
                    <th>المدينة</th>
                    <th> الرصيد
                    <a href="{{ route('customers.index', array_merge(request()->query(), ['sort_balance' => $sortBalance === 'asc' ? 'desc' : 'asc'])) }}">
                        @if ($sortBalance === 'asc')
                            🔼
                        @else
                            🔽
                        @endif
                    </a>
        </th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach($customers as $customer)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td> <a href="{{ route('customers.report', $customer->id) }}">
                                {{ $customer->username }}
                            </a></td>
                        <td>{{ $customer->full_name }}</td>
                        <td>{{ $customer->phone }}</td>
                        <td>{{ $customer->town }}</td>
                        <td>${{ number_format($customer->balance, 2) }}</td>
                        
                        <td>
                            <!-- Dropdown for Actions -->
                            <div class="dropdown">
                                <button class="btn btn-primary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton{{ $customer->id }}" data-bs-toggle="dropdown" aria-expanded="false">
                                    Actions
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton{{ $customer->id }}">
                                    <li>
                                        <a href="{{ route('subscriptions.create', ['customer_id' => $customer->id]) }}" class="dropdown-item">
                                            <i class="bi bi-arrow-repeat"></i> Renew
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('receipts.create', ['customer_id' => $customer->id]) }}" class="dropdown-item">
                                            <i class="bi bi-cash"></i> Payment
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('maintenance_logs.create', ['customer_id' => $customer->id]) }}" class="dropdown-item">
                                            <i class="bi bi-tools"></i> Maintenance
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('customers.show', $customer->id) }}" class="dropdown-item">
                                            <i class="bi bi-info-circle"></i> Details
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('customers.edit', $customer->id) }}" class="dropdown-item">
                                            <i class="bi bi-pencil"></i> Edit
                                        </a>
                                    </li>
                                    <li>
                                        <form action="{{ route('customers.destroy', $customer->id) }}" method="POST" style="display:inline;">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="dropdown-item text-danger">
                                                <i class="bi bi-trash"></i> Delete
                                            </button>
                                        </form>
                                    </li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection

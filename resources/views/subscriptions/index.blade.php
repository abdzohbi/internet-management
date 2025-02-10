@extends('layouts.app')

@section('title', 'Subscriptions')

@section('content')
<div class="container">
    <h1 class="mb-4">Subscriptions</h1>
    
    <a href="{{ route('subscriptions.create') }}" class="btn btn-primary">
            <i class="fa fa-plus"></i> Add New Receipt
        </a>
    <!-- نموذج البحث والفلترة -->
    <form method="GET" action="{{ route('subscriptions.index') }}" class="mb-4">
        <div class="row">
            <div class="col-md-3">
                <input type="text" name="search" id="search" class="form-control" 
                       placeholder="Search by username or customer name" value="{{ request('search') }}">
            </div>
            <div class="col-md-3">
                <input type="date" name="start_date" id="start_date" class="form-control" 
                       value="{{ request('start_date') }}" placeholder="Start Date">
            </div>
            <div class="col-md-3">
                <input type="date" name="end_date" id="end_date" class="form-control" 
                       value="{{ request('end_date') }}" placeholder="End Date">
            </div>
            <div class="col-md-3">
                <button type="submit" class="btn btn-primary w-100">Filter</button>
            </div>
        </div>
    </form>

    <!-- جدول الاشتراكات -->
    <table class="table table-bordered table-striped">
    <thead class="table-dark">
        <tr>
            <th>#</th>
            <th>Username</th>
            <th>Customer Name</th>
            <th>Package</th>
            <th>Price</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        @foreach($subscriptions as $subscription)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>
                    <a href="{{ route('customers.report', $subscription->customer->id) }}" class="text-decoration-none">
                        {{ $subscription->customer->username }}
                    </a>
                </td>
                <td>{{ $subscription->customer->full_name }}</td>
                <td>{{ $subscription->package_name }}</td>
                <td>${{ $subscription->price }}</td>
                <td>{{ $subscription->start_date }}</td>
                <td>{{ $subscription->end_date }}</td>
                <td>
                    <a href="{{ route('subscriptions.edit', $subscription->id) }}" class="btn btn-sm btn-warning">
                        <i class="fa fa-edit"></i> Edit
                    </a>
                    <form action="{{ route('subscriptions.destroy', $subscription->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?')">
                            <i class="fa fa-trash"></i> Delete
                        </button>
                    </form>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

    <!-- التصفح -->
    <div class="d-flex justify-content-center">
        {{ $subscriptions->withQueryString()->links() }}
    </div>
</div>
@endsection

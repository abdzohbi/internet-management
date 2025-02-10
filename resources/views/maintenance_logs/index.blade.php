@extends('layouts.app')

@section('title', 'Maintenance Logs')

@section('content')
<div class="container">
    <h1>Maintenance Logs</h1>
    <a href="{{ route('maintenance_logs.create') }}" class="btn btn-primary mb-3">Add New Log</a>
    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif
    <div class="mb-3">
    <form action="{{ route('maintenance_logs.index') }}" method="GET">
        <div class="input-group">
            <input type="text" name="search" class="form-control" placeholder="Search by Username or Name" value="{{ request('search') }}">
            <button type="submit" class="btn btn-primary">Search</button>
        </div>
    </form>
</div>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>UserName</th>
                <th>Name</th>
                <th>Date</th>
                <th>Notes</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($logs as $log)
            <tr>
                <td>{{ $log->id }}</td>
                <td><a href="{{ route('maintenance_logs.by_customer', $log->customer->id) }}">{{ $log->customer->username }}</a></td>
                <td>{{ $log->customer->full_name }}</td>
                <td>{{ $log->maintenance_date }}</td>
                <td>{{ $log->notes }}</td>
                <td>
                    <a href="{{ route('maintenance_logs.edit', $log->id) }}" class="btn btn-warning btn-sm">Edit</a>
                    <form action="{{ route('maintenance_logs.destroy', $log->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection

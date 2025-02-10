@extends('layouts.app')

@section('title', "Maintenance Logs for $customer->full_name")

@section('content')
<div class="container">
    <h1>Maintenance Logs for {{ $customer->full_name }} ({{ $customer->username }})</h1>
    <a href="{{ route('maintenance_logs.index') }}" class="btn btn-secondary mb-3">Back to All Logs</a>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Date</th>
                <th>Notes</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($logs as $log)
            <tr>
                <td>{{ $log->id }}</td>
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

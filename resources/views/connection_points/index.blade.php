@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Connection Points</h1>
    <a href="{{ route('connection_points.create') }}" class="btn btn-primary mb-3">Add Connection Point</a>

    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Station</th>
                <th>Customers Linked</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($connectionPoints as $point)
            <tr>
                <td>{{ $point->id }}</td>
                <td>{{ $point->name }}</td>
                <td>{{ $point->station }}</td>
                <td>{{ $point->customers->count() }}</td>
                <td>
                    <a href="{{ route('connection_points.edit', $point->id) }}" class="btn btn-warning btn-sm">Edit</a>
                    <form action="{{ route('connection_points.destroy', $point->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection

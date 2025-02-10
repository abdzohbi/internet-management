@extends('layouts.app')

@section('title', 'Edit Connection Point')

@section('content')
<div class="container">
    <h1>Edit Connection Point</h1>
    <form action="{{ route('connection_points.update', $connectionPoint->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" name="name" id="name" class="form-control" value="{{ $connectionPoint->name }}" required>
        </div>
        <div class="mb-3">
            <label for="station" class="form-label">Station</label>
            <input type="text" name="station" id="station" class="form-control" value="{{ $connectionPoint->station }}">
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
        <a href="{{ route('connection_points.index') }}" class="btn btn-secondary">Cancel</a>
    </form>
</div>
@endsection

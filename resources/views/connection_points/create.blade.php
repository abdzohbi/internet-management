@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Add Connection Point</h1>
    <form action="{{ route('connection_points.store') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" name="name" id="name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="station" class="form-label">Station</label>
            <input type="text" name="station" id="station" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>
@endsection

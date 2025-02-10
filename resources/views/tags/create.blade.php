@extends('layouts.app')

@section('title', 'Add New Tag')

@section('content')
<div class="container">
    <h1>Add New Tag</h1>
    <form method="POST" action="{{ route('tags.store') }}">
        @csrf
        <div class="mb-3">
            <label for="name" class="form-label">Tag Name</label>
            <input type="text" name="name" id="name" class="form-control" placeholder="Enter tag name" required>
        </div>
        <button type="submit" class="btn btn-primary">Add Tag</button>
        <a href="{{ route('expenses.index') }}" class="btn btn-secondary">Back to Expenses</a>
    </form>
</div>
@endsection

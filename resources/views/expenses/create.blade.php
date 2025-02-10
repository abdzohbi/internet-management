@extends('layouts.app')

@section('title', 'Add Expense')

@section('content')
<div class="container">
    <h1 class="mb-4">Add Expense</h1>

    <form method="POST" action="{{ route('expenses.store') }}">
                @csrf

                <div class="mb-3">
            <label for="tags" class="form-label">Tags</label>
            <select name="tags[]" id="tags" class="form-select" multiple>
                @foreach($availableTags as $tag)
                    <option value="{{ $tag->id }}" {{ isset($selectedTags) && in_array($tag->id, $selectedTags) ? 'selected' : '' }}>
                        {{ $tag->name }}
                    </option>
                @endforeach
            </select>
        </div>
        <p>
            <a href="{{ route('tags.create') }}" class="btn btn-link">Add New Tag</a>
        </p>








        <div class="mb-3">
            <label for="type" class="form-label">Type</label>
            <input type="text" name="type" id="type" class="form-control" value="{{ old('type') }}" required>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea name="description" id="description" class="form-control">{{ old('description') }}</textarea>
        </div>
        <div class="mb-3">
            <label for="amount" class="form-label">Amount</label>
            <input type="number" step="0.01" name="amount" id="amount" class="form-control" value="{{ old('amount') }}" required>
        </div>
        <div class="mb-3">
            <label for="date" class="form-label">Date</label>
            <input type="date" name="date" id="date" class="form-control" value="{{ old('date') }}" required>
        </div>
        <button type="submit" class="btn btn-primary">Add Expense</button>
    </form>
</div>
@endsection

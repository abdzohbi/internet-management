@extends('layouts.app')

@section('title', 'Expenses List')

@section('content')
<div class="container">
    <!-- العنوان وزر إضافة المصروف -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1 class="h3"><i class="bi bi-wallet2"></i> Expenses List</h1>
        <a href="{{ route('expenses.create') }}" class="btn btn-primary">
            <i class="bi bi-plus-lg"></i> Add Expense
        </a>
        <a href="{{ route('tags.index') }}" class="btn btn-info">
            <i class="bi bi-tags"></i> Manage Tags
        </a>
    </div>

    <!-- إشعارات النجاح -->
    @if(session('error'))
    <div class="alert alert-danger">
        {{ session('error') }}
    </div>
@endif

@if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif

    <form method="GET" action="{{ route('expenses.index') }}" class="mb-4">
    <div class="row g-3 align-items-center">
        <!-- البحث -->
        <div class="col-md-4">
            <input type="text" name="search" id="search" class="form-control"
                   placeholder="Search by type or description" value="{{ request('search') }}">
        </div>

        <!-- الفلترة بالتواريخ -->
        <div class="col-md-3">
            <input type="date" name="start_date" id="start_date" class="form-control"
                   value="{{ request('start_date') }}">
        </div>
        <div class="col-md-3">
            <input type="date" name="end_date" id="end_date" class="form-control"
                   value="{{ request('end_date') }}">
        </div>

        <!-- الفلترة حسب التاغات -->
        <div class="col-md-4">
            <select name="tags[]" id="tags" class="form-select" multiple>
                @foreach($availableTags as $tag)
                    <option value="{{ $tag->id }}" 
                        {{ request('tags') && in_array($tag->id, request('tags')) ? 'selected' : '' }}>
                        {{ $tag->name }}
                    </option>
                @endforeach
            </select>
        </div>

        <!-- أزرار البحث -->
        <div class="col-md-2 d-flex gap-2">
            <button type="submit" class="btn btn-primary w-100">Filter</button>
            <a href="{{ route('expenses.index') }}" class="btn btn-secondary w-100">Reset</a>
        </div>
    </div>
</form>



    <!-- جدول المصاريف -->
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Tags</th>
                <th>Type</th>
                <th>Description</th>
                <th>Amount</th>
                <th>Date</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse($expenses as $expense)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>
                        @if($expense->tags && $expense->tags->isNotEmpty())
                            @foreach($expense->tags as $tag)
                                <span class="badge bg-secondary">{{ $tag->name }}</span>
                            @endforeach
                        @else
                            <span class="text-muted">No Tags</span>
                        @endif
                    </td>

                    <td>{{ $expense->type }}</td>
                    <td>{{ $expense->description }}</td>
                    <td>${{ number_format($expense->amount, 2) }}</td>
                    <td>{{ $expense->date }}</td>
                    <td>
                        <a href="{{ route('expenses.edit', $expense->id) }}" class="btn btn-warning btn-sm">
                            <i class="bi bi-pencil"></i> Edit
                        </a>
                        <form action="{{ route('expenses.destroy', $expense->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">
                                <i class="bi bi-trash"></i> Delete
                            </button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="6" class="text-center">No expenses found</td>
                </tr>
            @endforelse
        </tbody>
    </table>

    <!-- التصفح -->
    <div class="d-flex justify-content-center mt-4">
        {{ $expenses->links('pagination::bootstrap-5') }}
    </div>
</div>
@endsection

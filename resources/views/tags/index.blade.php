@extends('layouts.app')

@section('title', 'Tags Management')

@section('content')
<div class="container">
    <h1 class="mb-4"><i class="bi bi-tags"></i> Tags Management</h1>

    <!-- إشعارات النجاح أو الخطأ -->
    @if(session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    @if(session('error'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            {{ session('error') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    <!-- نموذج إضافة تاغ جديد -->
    <form method="POST" action="{{ route('tags.store') }}" class="mb-4">
        @csrf
        <div class="input-group">
            <input type="text" name="name" class="form-control" placeholder="Enter tag name" required>
            <button type="submit" class="btn btn-primary">Add Tag</button>
        </div>
    </form>

    <!-- جدول عرض التاغات -->
    @if($tags->isNotEmpty())
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach($tags as $tag)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $tag->name }}</td>
                        <td>
                            <form action="{{ route('tags.destroy', $tag->id) }}" method="POST" style="display:inline;">
                                @csrf
                                @method('DELETE')
                                <!-- التحقق من إمكانية الحذف -->
                                @if($tag->expenses->isEmpty())
                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">
                                        <i class="bi bi-trash"></i> Delete
                                    </button>
                                @else
                                    <button type="button" class="btn btn-secondary btn-sm" disabled>
                                        <i class="bi bi-lock"></i> Used
                                    </button>
                                @endif
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    @else
        <p class="text-center text-muted">No tags found. Start adding some!</p>
    @endif
</div>
@endsection

@extends('layouts.app')

@section('title', 'Financial Report')

@section('content')
<div class="container">
    <h1 class="mb-4"><i class="bi bi-file-earmark-text"></i> Financial Report</h1>

    <!-- نموذج إدخال التواريخ -->
    <form method="GET" action="{{ route('reports.financial') }}" class="mb-4">
        <div class="row g-3 align-items-center">
            <div class="col-md-5">
                <label for="start_date" class="form-label">Start Date</label>
                <input type="date" name="start_date" id="start_date" class="form-control" required>
            </div>
            <div class="col-md-5">
                <label for="end_date" class="form-label">End Date</label>
                <input type="date" name="end_date" id="end_date" class="form-control" required>
            </div>
            <div class="col-md-2">
                <button type="submit" class="btn btn-primary w-100 mt-4">General Report</button>
            </div>
        </div>
    </form>
</div>
@endsection

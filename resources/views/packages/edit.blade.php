@extends('layouts.app')

@section('title', 'Edit Package')

@section('content')
<div class="container">
    <h1 class="mb-4">Edit Package</h1>
    <form method="POST" action="{{ route('packages.update', $package->id) }}">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label for="company_id" class="form-label">Company</label>
            <select name="company_id" id="company_id" class="form-select" required>
                @foreach($companies as $company)
                    <option value="{{ $company->id }}" {{ $company->id == $package->company_id ? 'selected' : '' }}>
                        {{ $company->name }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="mb-3">
            <label for="name" class="form-label">Package Name</label>
            <input type="text" name="name" id="name" class="form-control" value="{{ $package->name }}" required>
        </div>
        <div class="mb-3">
            <label for="purchase_price" class="form-label">Purchase Price</label>
            <input type="number" name="purchase_price" id="purchase_price" class="form-control" value="{{ $package->purchase_price }}" required>
        </div>
        <div class="mb-3">
            <label for="sale_price" class="form-label">Sale Price</label>
            <input type="number" name="sale_price" id="sale_price" class="form-control" value="{{ $package->sale_price }}" required>
        </div>
        <button type="submit" class="btn btn-primary">Update Package</button>
    </form>
</div>
@endsection

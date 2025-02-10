@extends('layouts.app')

@section('title', 'Packages')

@section('content')
<div class="container">
    <h1 class="mb-4">Packages</h1>
    <a href="{{ route('packages.create') }}" class="btn btn-primary mb-3">Add Package</a>
    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <th>#</th>
                <th>Company</th>
                <th>Package Name</th>
                <th>Purchase Price</th>
                <th>Sale Price</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($packages as $package)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $package->company->name }}</td>
                    <td>{{ $package->name }}</td>
                    <td>${{ $package->purchase_price }}</td>
                    <td>${{ $package->sale_price }}</td>
                    <td>
                        <a href="{{ route('packages.edit', $package->id) }}" class="btn btn-sm btn-warning">Edit</a>
                        <form action="{{ route('packages.destroy', $package->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection

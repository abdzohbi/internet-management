@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Import Previous Backup</h1>
    <form action="#" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="backupFile" class="form-label">Select Backup File</label>
            <input type="file" class="form-control" id="backupFile" name="backup_file" required>
        </div>
        <button type="submit" class="btn btn-primary">Import</button>
    </form>
</div>
@endsection

@extends('layouts.app')

@section('content')
<div class="container">
    <h1>إدارة معلومات الشركة</h1>
    <form action="{{ route('company-info.update') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="name" class="form-label">اسم الشركة</label>
            <input type="text" name="name" class="form-control" value="{{ $info->name ?? '' }}">
        </div>

        <div class="mb-3">
            <label for="report_name" class="form-label">الاسم في التقارير</label>
            <input type="text" name="report_name" class="form-control" value="{{ $info->report_name ?? '' }}">
        </div>

        <div class="mb-3">
            <label for="logo" class="form-label">شعار الشركة</label>
            <input type="file" name="logo" class="form-control">
            @if($info && $info->logo)
                <img src="{{ asset('storage/' . $info->logo) }}" alt="الشعار" width="100">
            @endif
        </div>

        <div class="mb-3">
            <label for="address" class="form-label">العنوان</label>
            <input type="text" name="address" class="form-control" value="{{ $info->address ?? '' }}">
        </div>

        <div class="mb-3">
            <label for="phone" class="form-label">الهاتف</label>
            <input type="text" name="phone" class="form-control" value="{{ $info->phone ?? '' }}">
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">البريد الإلكتروني</label>
            <input type="email" name="email" class="form-control" value="{{ $info->email ?? '' }}">
        </div>

        <button type="submit" class="btn btn-primary">حفظ</button>
    </form>
</div>
@endsection

@extends('layouts.app')
@section('content')
    <a href="{{ route('admin.movietime.index') }}" class="btn btn-danger mb-3">Quay Lại</a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Thêm Danh Mục</h6>
        </div>
        <div class="card-body">
            <form action="{{ route('admin.movietime.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label>Tên Danh Mục</label>
                    <select name="date_id" class="form-control ">
                        @foreach($movie_date as $movie_date)
                            <option value="{{ $movie_date->id }}">{{ $movie_date->name }} ----- {{ $movie_date->date }} </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Giờ Chiếu</label>
                    <input type="time" name="time" id="" class="form-control">
                </div>
                <div class="form-group">
                    <label>Tên Danh Mục</label>
                    <select name="status" class="form-control ">
                        <option value="1">Hiển Thị</option>
                        <option value="0">Không Hiển Thị</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-success">Thêm</button>
            </form>
        </div>
    </div>
@endsection

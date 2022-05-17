@extends('layouts.app')
@section('content')
    <a href="{{ route('admin.news.index') }}" class="btn btn-danger mb-3">Quay Lại</a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Sửa Tin Tức</h6>
        </div>
        <div class="card-body">
            <form action="{{ route('admin.news.update', $news->id) }}" method="POST"
                enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label>Tiêu Đề</label>
                    <input type="text" name="title" placeholder="Nhập Tiêu Đề" value="{{ $news->title }}" id="" class="form-control">
                </div>
                <div class="form-group">
                    <label>Mô tả</label>
                    <textarea name="description" id="editor" class="form-control" cols="30" rows="5">{{ $news->description }}</textarea>
                </div>
                <div class="form-group">
                    <label>Hình Ảnh Cũ</label>
                    <img src="{{ asset('storage/'.$news->image) }}" alt="">
                </div>
                <div class="form-group">
                    <label>Hình Ảnh</label>
                    <input type="file" name="image" class="form-control">
                </div>
                <div class="form-group">
                    <label>Tên Trạng Thái</label>
                    <select name="status" class="form-control ">
                        <option value="1">Hiển Thị</option>
                        <option value="0">Không Hiển Thị</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-success">Sửa</button>
            </form>
        </div>
    </div>
@endsection

@extends('layouts.app')
@section('content')
    <a href="{{ route('admin.movie.index') }}" class="btn btn-danger mb-3">Quay Lại</a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Thêm Danh Mục</h6>
        </div>
        <div class="card-body">
            <form action="{{ route('admin.movie.update', $movie->id) }}" method="POST"
                enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label>Tên Danh Mục</label>
                    <input type="text" name="name" class="form-control" value="{{ $movie->name }}"
                        placeholder=" Tên danh mục" id="slug" onkeyup="ChangeToSlug()">
                </div>
                <div class="form-group">
                    <label>Tên Danh Mục</label>
                    <input type="text" name="slug" class="form-control" value="{{ $movie->slug }}"
                        placeholder="Tên danh mục" id="convert_slug">
                </div>
                <div class="form-group">
                    <label>Mã Danh Mục</label>
                    <select name="category_id" class="form-control">
                        @foreach ($category as $category)
                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label>Hình Ảnh Cũ</label>
                    <img src="{{ asset('storage/'.$movie->image) }}" width="15%" alt="" >
                </div>
                <div class="form-group">
                    <label>Hình Ảnh</label>
                    <input type="file" name="image" class="form-control">
                </div>
                <div class="form-group">
                    <label>Mô tả</label>
                    <textarea name="description" id="editor" class="form-control" cols="30" rows="5">{{ $movie->description }}</textarea>
                </div>
                <div class="form-group">
                    <label>Trailer</label>
                    <input type="text" name="trailer" class="form-control" placeholder="Nhập Link Trailer" value="{{ $movie->trailer }}">
                </div>
                <div class="form-group">
                    <label>Đạo Diễn</label>
                    <input type="text" name="director" class="form-control" placeholder="Nhập tên đạo diễn" value="{{ $movie->director }}">
                </div>
                <div class="form-group">
                    <label>Diễn Viên</label>
                    <input type="text" name="actors" class="form-control" placeholder="Nhập tên diễn viên" value="{{ $movie->actors }}">
                </div>
                <div class="form-group">
                    <label>Thể loại</label>
                    <input type="text" name="genre" class="form-control" placeholder="Nhập thể loại" value="{{ $movie->genre }}">
                </div>
                <div class="form-group">
                    <label>Thời gian ra mắt</label>
                    <input type="text" name="premiere" class="form-control" placeholder="Nhập thời gian ra mắt" value="{{ $movie->premiere }}">
                </div>
                <div class="form-group">
                    <label>Thời lượng</label>
                    <input type="text" name="time" class="form-control" placeholder="Nhập thời lượng" value="{{ $movie->time }}">
                </div>
                <div class="form-group">
                    <label>Ngôn ngữ</label>
                    <input type="text" name="language" class="form-control" placeholder="Nhập ngôn ngữ" value="{{ $movie->language }}">
                </div>
                <div class="form-group">
                    <label>Giới Hạn Tuôi</label>
                    <select name="rated" class="form-control">
                        <option value="0">P - PHIM DÀNH CHO MỌI ĐỐI TƯỢNG</option>
                        <option value="1">C13 - PHIM CẤM KHÁN GIẢ DƯỚI 13 TUỔI</option>
                        <option value="2">C16 - PHIM CẤM KHÁN GIẢ DƯỚI 16 TUỔI</option>
                        <option value="3">C18 - PHIM CẤM KHÁN GIẢ DƯỚI 18 T UỔI</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Tên Danh Mục</label>
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

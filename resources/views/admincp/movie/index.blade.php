@extends('layouts.app')
@section('content')
    <a href="{{ route('admin.movie.create') }}" class="btn btn-success mb-3">Thêm Phim</a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Phim</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Tên Phim</th>
                            <th>Danh Mục</th>
                            <th>Hình Ảnh</th>
                            <th>Giới Hạn Tuổi</th>
                            <th>Trạng Thái</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $sn = 1;
                        @endphp
                        @foreach ($movie as $movie)
                            <tr>
                                <td>{{ $sn++ }}</td>
                                <td>{{ $movie->name }}</td>
                                <td>{{ $movie->category->name }}</td>
                                <td><img src="{{ asset('storage/'. $movie->image) }}" alt="" width="20%"></td>
                                <td>
                                    @if ($movie->rated === '0')
                                        P - PHIM DÀNH CHO MỌI ĐỐI TƯỢNG
                                    @elseif($movie->rated === '1')
                                        C13 - PHIM CẤM KHÁN GIẢ DƯỚI 13 TUỔI
                                    @elseif($movie->rated === '2')
                                        C16 - PHIM CẤM KHÁN GIẢ DƯỚI 16 TUỔI
                                    @elseif($movie->rated === '3')
                                        C18 - PHIM CẤM KHÁN GIẢ DƯỚI 18 TUỔI
                                    @endif       
                                </td>
                                <td> 
                                    @if ($movie->status === '1')
                                        Hiển Thị
                                    @else
                                        Không Hiển Thị
                                    @endif    
                                </td>
                                <td>
                                    <a href="{{ route('admin.movie.edit', $movie) }}" class="btn btn-warning">Sửa</a>
                                    <form action="{{ route('admin.movie.destroy', $movie) }}" method="POST">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger">Xóa</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

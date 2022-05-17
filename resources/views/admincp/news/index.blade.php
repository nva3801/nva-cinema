@extends('layouts.app')
@section('content')
    <a href="{{ route('admin.news.create') }}" class="btn btn-success mb-3">Thêm Tin Tức</a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Tin Tức</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Tiêu Đề</th>
                            <th>Mô Tả</th>
                            <th>Hình Ảnh</th>
                            <th>Trạng Thái</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $sn = 1;
                        @endphp
                        @foreach ($news as $news)
                            <tr>
                                <td>{{ $sn++ }}</td>
                                <td>{{ $news->title }}</td>
                                <td><?php echo $news['description'] ?></td>
                                <td><img src="{{ asset('storage/'. $news->image) }}" alt=""></td>
                                <td> 
                                    @if ($news->status === 1)
                                        Hiển Thị
                                    @else
                                        Không Hiển Thị
                                    @endif    
                                </td>
                                <td>
                                    <a href="{{ route('admin.news.edit', $news) }}" class="btn btn-warning">Sửa</a>
                                    <form action="{{ route('admin.news.destroy', $news) }}" method="POST">
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

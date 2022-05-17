@extends('layouts.app')
@section('content')
    <a href="{{ route('admin.moviedate.create') }}" class="btn btn-success mb-3">Thêm Ngày Chiếu</a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Ngày Chiếu</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Tên Phim</th>
                            <th>Ngày Chiếu</th>
                            <th>Trạng Thái</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $sn = 1;
                        @endphp
                        @foreach ($moviedate as $moviedate)
                            <tr>
                                <td>{{ $sn++ }}</td>
                                <td>{{ $moviedate->movie->name }}</td>
                                <td>{{ date('d-m-Y', strtotime($moviedate->date)); }}</td>
                                <td> 
                                    @if ($moviedate->status === 1)
                                        Hiển Thị
                                    @else
                                        Không Hiển Thị
                                    @endif    
                                </td>
                                <td>
                                    <a href="{{ route('admin.moviedate.edit', $moviedate) }}" class="btn btn-warning">Sửa</a>
                                    <form action="{{ route('admin.moviedate.destroy', $moviedate) }}" method="POST">
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

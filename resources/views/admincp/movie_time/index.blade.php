@extends('layouts.app')
@section('content')
    <a href="{{ route('admin.movietime.create') }}" class="btn btn-success mb-3">Thêm Giờ Chiếu</a>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Giờ Chiếu</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Ngày Chiếu</th>
                            <th>Giờ Chiếu</th>
                            <th>Trạng Thái</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $sn = 1;
                        @endphp
                        @foreach ($movietime as $movietime)
                            <tr>
                                <td>{{ $sn++ }}</td>
                                <td>{{ date('d-m-Y', strtotime($movietime->date->date)); }}</td>
                                <td>{{ $movietime->time }}</td>
                                <td> 
                                    @if ($movietime->status === 1)
                                        Hiển Thị
                                    @else
                                        Không Hiển Thị
                                    @endif    
                                </td>
                                <td>
                                    <a href="{{ route('admin.movietime.edit', $movietime) }}" class="btn btn-warning">Sửa</a>
                                    <form action="{{ route('admin.movietime.destroy', $movietime) }}" method="POST">
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

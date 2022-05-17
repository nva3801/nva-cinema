@extends('layouts.app')
@section('content')
<a href="{{ url("admin/bookingtime") }}" class="btn btn-danger mb-3">Quay Lại</a>
<div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Đơn Hàng</h6>
        </div>
        <h2 class="text-center mt-3">Số ghế đã được đặt: {{ $bookingcount }}/72</h2>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Tên Phim</th>
                            <th>Ngày Chiếu</th>
                            <th>Giờ Chiếu</th>
                            <th>Tên Ghế</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $sn = 1;
                        @endphp
                        @foreach ($seat as $seat)
                            <tr>
                                <td>{{ $sn++ }}</td>
                                <td>{{ $seat->name }}</td>
                                <td>{{ $seat->date }}</td>
                                <td>{{ $seat->time }}</td>
                                <td>{{ $seat->chair }}</td>
                                <td>
                                    <a href="{{ route('admin.userbook', $seat->chair) }}" class="btn btn-success">Chi tiết</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
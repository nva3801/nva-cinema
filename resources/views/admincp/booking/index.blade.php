@extends('layouts.app')
@section('content')
<div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Đơn Hàng</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Mã Đơn Hàng</th>
                            <th>Tên Khách Hàng</th>
                            <th>Email</th>
                            <th>Số Điện Thoại</th>
                            <th>Tên Phim</th>
                            <th>Ngày Chiếu</th>
                            <th>Giờ Chiếu</th>
                            <th>Tổng Tiền</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $sn = 1;
                        @endphp
                        @foreach ($booking as $booking)
                            <tr>
                                <td>{{ $sn++ }}</td>
                                <td>{{ $booking->madonhang }}</td>
                                <td>{{ $booking->username }}</td>
                                <td>{{ $booking->email }}</td>
                                <td>{{ $booking->phoneNumber }}</td>
                                <td>{{ $booking->name }}</td>
                                <td>{{ date('d-m-Y', strtotime($booking->date)); }}</td>
                                <td>{{ $booking->time }}</td>
                                <td>{{ number_format($booking->total) }}đ</td>
                                <td>
                                    <a href="{{ route('admin.bookingdetail', $booking->madonhang) }}" class="btn btn-success">Chi tiết</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
@extends('layouts.app')
@section('content')
<a href="{{ url("admin/booking") }}" class="btn btn-danger mb-3">Quay Lại</a>
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
                            <th>Ghế</th>
                            <th>Tên Phim</th>
                            <th>Ngày Chiếu</th>
                            <th>Giờ Chiếu</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $sn = 1;
                        @endphp
                        @foreach ($bookingdetail as $bookingdetail)
                            <tr>
                                <td>{{ $sn++ }}</td>
                                <td>{{ $bookingdetail->madonhang }}</td>
                                <td>{{ $bookingdetail->chair }}</td>
                                 <td>{{ $bookingdetail->name }}</td>
                                <td>{{ date('d-m-Y', strtotime($bookingdetail->date)); }}</td>
                                <td>{{ $bookingdetail->time }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
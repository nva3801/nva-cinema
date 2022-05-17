@extends('layouts.app')
@section('content')
@foreach ($userbook as $userbook)
<a href="{{ route("admin.seat", $userbook->time_id) }}" class="btn btn-danger mb-3">Quay Lại</a>
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
                            <th>Tên Người Đặt</th>
                            <th>Số Điện Thoại</th>
                            <th>Email</th>
                            <th>Mã Ghế</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $sn = 1;
                        @endphp
                            <tr>
                                <td>{{ $sn++ }}</td>
                                <td>{{ $userbook->madonhang }}</td>
                                <td>{{ $userbook->username }}</td>
                                <td>{{ $userbook->phoneNumber }}</td>
                                <td>{{ $userbook->email }}</td>
                                <td>{{ $userbook->chair }}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        @endforeach
    @endsection
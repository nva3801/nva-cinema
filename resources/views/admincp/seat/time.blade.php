@extends('layouts.app')
@section('content')
<div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Quản Lý Ghế</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="myTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Tên Phim</th>
                            <th>Ngày Chiếu</th>
                            <th>Giờ Chiếu</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $sn = 1;
                        @endphp
                        @foreach ($showtime as $showtime)
                            <tr>
                                <td>{{ $sn++ }}</td>
                                <td>{{ $showtime->name }}</td>
                                <td>{{ date('d-m-Y', strtotime($showtime->date)); }}</td>
                                <td>{{ $showtime->time }}</td>
                                <td>
                                    <a href="{{ route('admin.seat', $showtime->id) }}" class="btn btn-success">Ghế đã đặt</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
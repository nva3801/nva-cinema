@extends('welcome')
@section('content')
<section class="breadcumb-section">
    <div class="container">
        <a href="{{ ('/') }}"><span>Trang Chủ</span></a> >> 
        <span class="text-capitalize">Đơn Hàng</span>
    </div>
</section>
<section class="py-3">
    <div class="container">
        <table class="table text-white">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Tên Khách Hàng</th>
                    <th>Email</th>
                    <th>Số Điện Thoại</th>
                </tr>
            </thead>
            <tbody>
                @foreach($user as $user)
                @php 
                $sn = 1;
                @endphp
                <tr>
                    <td>{{ $sn++ }}</td>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->phoneNumber }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <table class="table text-white mt-5">
            @php 
            $sn = 1;
            @endphp
            <thead>
                <tr>
                    <th>#</th>
                    <th>Mã Đơn Hàng</th>
                    <th>Tên Phim</th>
                    <th>Ngày Chiếu</th>
                    <th>Giờ Chiếu</th>
                    <th>Tổng Tiền</th>
                </tr>
            </thead>
            <tbody>
            @foreach($booking as $booking)
                <tr>
                    <td>{{ $sn++ }}</td>
                    <td>{{ $booking->madonhang }}</td>
                    <td>{{ $booking->name }}</td>
                    <td><?php echo date("d-m-Y", strtotime($booking['date'])) ?></td>
                    <td>{{ $booking->time }}</td>
                    <td>{{ number_format($booking->total) }}đ</td>
                    <td>
                        <a href="{{ route('billdetail', $booking->madonhang) }}" class="btn btn-success">Xem chi tiết</a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
</section>
@endsection


@extends('welcome')
@section('content')
<section class="breadcumb-section">
    <div class="container">
        <a href="{{ ('/') }}"><span>Trang Chủ</span></a> >> 
        <a href="{{ url('don-hang') }}"><span class="text-capitalize">Đơn Hàng</span></a> >>
        <span>Đơn Hàng Số: {{ $bookingdetail_id->madonhang }}</span>
    </div>
</section>
<section class="py-3">
    <div class="container">
        <h3 class="text-center">Đơn hàng số: {{ $bookingdetail_id->madonhang }}</h3>
        @if(Auth::id() !== $user->id)
            <h3 class="text-center mt-4">Không có giá trị cần tìm</h3>
        @else
        <table class="table text-white">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Mã Đơn Hàng</th>
                    <th>Ghế</th>
                    <th>Tên Phim</th>
                    <th>Thời Gian</th>
                </tr>
            </thead>
            <tbody>
                @foreach($bookingdetail as $bookingdetail)
                @php
                    $sn = 1;
                @endphp
                <tr>
                    <td>{{ $sn++ }}</td>
                    <td>{{ $bookingdetail->madonhang }}</td>
                    <td>{{ $bookingdetail->chair }}</td>
                    <td>{{ $bookingdetail->name }}</td>
                    <td><?php echo date("d-m-Y", strtotime($bookingdetail['date'])) ?> --- {{ $bookingdetail->time }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        @endif
    </div>
</section>

@endsection
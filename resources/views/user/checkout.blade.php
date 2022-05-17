@extends('welcome')
@section('content')
<section class="booking_banner-section">
    <div class="booking-banner"></div>
    <div class="container">
        <div class="booking-content">
            <h1>Thanh Toán</h1>
        </div>
    </div>
</section>
<form action="{{ url('thanh-toan') }}" method="POST">
    @csrf
    <section class="checkout-section">
        <div class="container">
            <div class="row">
                <div class="col-8">
                    <div class="checkout_contact">
                        <h3>Thông Tin Khách Hàng</h3>
                        <div class="checkout_contact-form">
                            @if (Route::has('login'))
                            @auth
                                    <input type="hidden" name="id" id="" value="{{ Auth::user()->id }}" placeholder="Tên khách hàng">
                                <div class="form-group">
                                    <input type="text" name="name" id="" value="{{ Auth::user()->name }}" placeholder="Tên khách hàng">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="email" id="" value="{{ Auth::user()->email }}" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="phoneNumber" id="" value="{{ Auth::user()->phoneNumber }}" placeholder="Số điện thoại">
                                </div>
                            @else
                                <div class="form-group">
                                    <input type="text" name="" id=""  placeholder="Tên khách hàng">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="" id="" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="" id="" placeholder="Số điện thoại">
                                </div>
                            @endauth
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-4">
                <div class="checkout_ticket">
                    <h3 class="text-uppercase text-center">Vé đã đặt</h3>
                        <ul>
                            <li>
                                <h6 class="subtitle">
                                    <span>{{ Session::get('name') }}</span>
                                    <span>ghế</span>
                                </h6>
                                <div class="info">
                                    <span>{{ Session::get('time') }}</span>
                                    <span class="info-seat">{{ Session::get('seat') }}</span>
                                </div>
                                <div class="input_info-seat"></div>
                            </li>
                            <li>
                                <div class="subtitle">
                                    <span>Tổng Tiền Vé</span>
                                    @php 
                                    $price = Session::get('price')
                                    @endphp
                                    <span>{{number_format($price) }}đ</span>
                                </div>
                            </li>
                            <li>
                                <div class="subtitle">
                                    <span>VAT</span>
                                    @php 
                                    $vat = Session::get('price') /10 
                                    @endphp
                                    <span>{{number_format($vat) }}đ</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="checkout_area text-center">
                        <h6 class="subtitle">
                            <span>Tổng tiền</span>
                            <span>{{ number_format($vat + $price) }}đ</span>
                            <input type="hidden" name="count_price" value="{{ $vat + $price }}">
                        </h6>
                        @if (Route::has('login'))
                            @auth
                                <button type="submit" class="checkout-btn">Thanh Toán</button>
                            @else
                                <a class="checkout-btn" href="{{ url('login') }}">Đăng Nhập</a></td>
                            @endauth
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>
</form>

@endsection
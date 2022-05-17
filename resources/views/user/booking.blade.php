@extends('welcome')
@section('content')

<section class="booking_banner-section">
    <form action="{{ url('checkout') }}" method="POST">
        @csrf
    <div class="booking-banner"></div>
        <div class="container">
            <div class="booking-content">
                <h2 class="text-center">{{ $movie->name }}</h2>
                <input type="hidden" value="{{ $movie->name }}" name="name">
                <h4 class="text-center mt-3"><?php echo date("d-m-Y", strtotime($moviedate['date'])) ?> --- {{ $movietime->time }}</h3>
                <input type="hidden" value="<?php echo date("d-m", strtotime($moviedate['date'])) ?> - {{ $movietime->time }}" name="time">
                <input type="hidden" name="movietime_id" value="{{ $movietime->id }}">
            </div>
        </div>
</section>
<section class="booking-section">
    <div class="container">
        <div class="booking-area">
            <h4 class="booking-screen-text">Màn Hình</h4>
            <div class="booking-img">
                <img src="{{ asset('img/screen-thumb.png') }}" alt="">
            </div>
            <div class="seat_booking_done">
                @foreach($booking as $booking)
                    <input type="hidden" class="checked" value="{{ $booking->chair }}">
                @endforeach
            </div>
            <ul class="seat-area">
                <li class="seat-line">
                    <span>A</span>
                    <div class="seat-list">
                        <div class="seat-items free" data-name="A1" data-price="120000">A1</div>
                        <div class="seat-items free" data-name="A2" data-price="120000">A2</div>
                        <div class="seat-items free" data-name="A3" data-price="120000">A3</div>
                        <div class="seat-items free" data-name="A4" data-price="120000">A4</div>
                        <div class="seat-items free" data-name="A5" data-price="120000">A5</div>
                        <div class="seat-items free" data-name="A6" data-price="120000">A6</div>
                        <div class="seat-items free" data-name="A7" data-price="120000">A7</div>
                        <div class="seat-items free" data-name="A8" data-price="120000">A8</div>
                        <div class="seat-items free" data-name="A9" data-price="120000">A9</div>
                        <div class="seat-items free" data-name="A10" data-price="120000">A10</div>
                        <div class="seat-items free" data-name="A11" data-price="120000">A11</div>
                        <div class="seat-items free" data-name="A12" data-price="120000">A12</div>
                        <div class="seat-items free" data-name="A13" data-price="120000">A13</div>
                        <div class="seat-items free" data-name="A14" data-price="120000">A14</div>
                        <div class="seat-items free" data-name="A15" data-price="120000">A15</div>
                        <div class="seat-items free" data-name="A16" data-price="120000">A16</div>
                        <div class="seat-items free" data-name="A17" data-price="120000">A17</div>
                        <div class="seat-items free" data-name="A18" data-price="120000">A18</div>
                    </div>
                </li>
                <li class="seat-line">
                    <span>B</span>
                    <div class="seat-list">
                        <div class="seat-items free" data-name="B1" data-price="120000">B1</div>
                        <div class="seat-items free" data-name="B2" data-price="120000">B2</div>
                        <div class="seat-items free" data-name="B3" data-price="120000">B3</div>
                        <div class="seat-items free" data-name="B4" data-price="120000">B4</div>
                        <div class="seat-items free" data-name="B5" data-price="120000">B5</div>
                        <div class="seat-items free" data-name="B6" data-price="120000">B6</div>
                        <div class="seat-items free" data-name="B7" data-price="120000">B7</div>
                        <div class="seat-items free" data-name="B8" data-price="120000">B8</div>
                        <div class="seat-items free" data-name="B9" data-price="120000">B9</div>
                        <div class="seat-items free" data-name="B10" data-price="120000">B10</div>
                        <div class="seat-items free" data-name="B11" data-price="120000">B11</div>
                        <div class="seat-items free" data-name="B12" data-price="120000">B12</div>
                        <div class="seat-items free" data-name="B13" data-price="120000">B13</div>
                        <div class="seat-items free" data-name="B14" data-price="120000">B14</div>
                        <div class="seat-items free" data-name="B15" data-price="120000">B15</div>
                        <div class="seat-items free" data-name="B16" data-price="120000">B16</div>
                        <div class="seat-items free" data-name="B17" data-price="120000">B17</div>
                        <div class="seat-items free" data-name="B18" data-price="120000">B18</div>
                    </div>
                </li>
                <li class="seat-line">
                    <span>C</span>
                    <div class="seat-list">
                        <div class="seat-items free" data-name="C1" data-price="120000">C1</div>
                        <div class="seat-items free" data-name="C2" data-price="120000">C2</div>
                        <div class="seat-items free" data-name="C3" data-price="120000">C3</div>
                        <div class="seat-items free" data-name="C4" data-price="120000">C4</div>
                        <div class="seat-items free" data-name="C5" data-price="120000">C5</div>
                        <div class="seat-items free" data-name="C6" data-price="120000">C6</div>
                        <div class="seat-items free" data-name="C7" data-price="120000">C7</div>
                        <div class="seat-items free" data-name="C8" data-price="120000">C8</div>
                        <div class="seat-items free" data-name="C9" data-price="120000">C9</div>
                        <div class="seat-items free" data-name="C10" data-price="120000">C10</div>
                        <div class="seat-items free" data-name="C11" data-price="120000">C11</div>
                        <div class="seat-items free" data-name="C12" data-price="120000">C12</div>
                        <div class="seat-items free" data-name="C13" data-price="120000">C13</div>
                        <div class="seat-items free" data-name="C14" data-price="120000">C14</div>
                        <div class="seat-items free" data-name="C15" data-price="120000">C15</div>
                        <div class="seat-items free" data-name="C16" data-price="120000">C16</div>
                        <div class="seat-items free" data-name="C17" data-price="120000">C17</div>
                        <div class="seat-items free" data-name="C18" data-price="120000">C18</div>
                    </div>
                </li>
                <li class="seat-line">
                    <span>D</span>
                    <div class="seat-list">
                        <div class="seat-items free" data-name="D1" data-price="120000">D1</div>
                        <div class="seat-items free" data-name="D2" data-price="120000">D2</div>
                        <div class="seat-items free" data-name="D3" data-price="120000">D3</div>
                        <div class="seat-items free" data-name="D4" data-price="120000">D4</div>
                        <div class="seat-items free" data-name="D5" data-price="120000">D5</div>
                        <div class="seat-items free" data-name="D6" data-price="120000">D6</div>
                        <div class="seat-items free" data-name="D7" data-price="120000">D7</div>
                        <div class="seat-items free" data-name="D8" data-price="120000">D8</div>
                        <div class="seat-items free" data-name="D9" data-price="120000">D9</div>
                        <div class="seat-items free" data-name="D10" data-price="120000">D10</div>
                        <div class="seat-items free" data-name="D11" data-price="120000">D11</div>
                        <div class="seat-items free" data-name="D12" data-price="120000">D12</div>
                        <div class="seat-items free" data-name="D13" data-price="120000">D13</div>
                        <div class="seat-items free" data-name="D14" data-price="120000">D14</div>
                        <div class="seat-items free" data-name="D15" data-price="120000">D15</div>
                        <div class="seat-items free" data-name="D16" data-price="120000">D16</div>
                        <div class="seat-items free" data-name="D17" data-price="120000">D17</div>
                        <div class="seat-items free" data-name="D18" data-price="120000">D18</div>
                    </div>
                </li>
            </ul>
            <div class="booking_note d-flex justify-content-center">
                <div class="d-flex mt-3 mx-3">
                    <div class="seat_note-free"></div>
                    <span class="mx-2 mt-2">Ghế có thể đặt</span>
                </div>
                <div class="d-flex mt-3 mx-3">
                    <div class="seat_note-selected"></div>
                    <span class="mx-2 mt-2">Ghế được chọn</span>
                </div>
                <div class="d-flex mt-3 mx-3">
                    <div class="seat_note-booked"></div>
                    <span class="mx-2 mt-2">Ghế đã được đặt</span>
                </div>
            </div>
            <div class="booking-total">
                <div class="total-seat">
                    <span>Bạn đã chọn ghế: </span>
                    <h3 class="seat-name"></h3>
                    <input type="hidden" name="seat" class="input_seat" value="">
                </div>
                <div class="total-price">
                    <span>Tổng tiền:</span>
                    <div class="price_text">
                        <h3 class="seat-price">0</h3>
                        <span>đ</span>
                        <input type="hidden" name="price" class="input_price" value="">
                    </div>
                </div>
                <button type="submit" class="booking-btn" id="seat_btn">Thanh Toán</button>
            </div>
        </div>
    </div>
</section>
</form>
@endsection
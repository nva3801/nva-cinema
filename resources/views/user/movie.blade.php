@extends('welcome')

@section('content')
<section class="breadcumb-section">
    <div class="container">
        <a href="{{ ('/') }}"><span>Trang Chủ</span></a> >> 
        <a class="text-capitalize" href="{{ route('category', $category_slug->slug) }}"><span class="text-capitalize">{{ $category_slug->name }}</span></a> >>
        <a class="text-capitalize" href="{{ route('movie', $movie_slug->slug) }}"><span class="text-capitalize">{{ $movie_slug->name }}</span></a>
    </div>
</section>
<section class="product_section">
    <div class="container">
        <h2 class="category-heading">Nội Dung</h2>
        @foreach($movie as $movie)
        <div class="product_info">
            <div class="product_banner">
                <img src="{{ asset('storage/'.$movie->image) }}" alt="" width="100%">
            </div>
            <div class="product_right">
                <div class="product_title">{{ $movie->name }}</div>
                <div class="product_directors">
                    <label for="">Đạo diễn:</label>
                    <span>{{ $movie->director }}</span>
                </div>
                <div class="product_actor">
                    <label for="">Diễn viên:</label>
                    <span>{{ $movie->actors }}</span>
                </div>
                <div class="product_genre">
                    <label for="">Thể loại:</label>
                    <span>{{ $movie->genre }}</span>
                </div>
                <div class="product_premiere">
                    <label for="">Thể loại:</label>
                    <span>{{ $movie->premiere }}</span>
                </div>
                <div class="product_time">
                    <label for="">Thời lượng:</label>
                    <span>{{ $movie->time }}</span>
                </div>
                <div class="product_language">
                    <label for="">Ngôn ngữ:</label>
                    <span>{{ $movie->language }}</span>
                </div>
                <div class="product_rated">
                    <label for="">Rated:</label>
                    @if ($movie->rated === '0')
                        <span>P - PHIM DÀNH CHO MỌI ĐỐI TƯỢNG</span>              
                    @elseif($movie->rated === '1')
                        <span>C13 - PHIM CẤM KHÁN GIẢ DƯỚI 13 TUỔI</span>            
                    @elseif($movie->rated === '2')
                        <span>C16 - PHIM CẤM KHÁN GIẢ DƯỚI 16 TUỔI</span>                
                    @elseif($movie->rated === '3')
                        <span>C18 - PHIM CẤM KHÁN GIẢ DƯỚI 18 TUỔI</span>                
                    @endif
                </div>
                <div class="product_btn">
                    <button type="button" id="openOverlay">Mua vé</button>
                    <div id="backgroundOverlay"></div>
                    <div id="popup">
                        <div class="popup_menu">
                            <ul class="popup_tab">
                                @foreach($date as $date)
                                <li data-id="<?php echo $date["id"] ?>" class="show-time">
                                        <?php echo date("d-m", strtotime($date['date'])) ?></li>
                                @endforeach
                            </ul>
                            <div class="tab_content">
                                <div class="popup_cinema">
                                    <div class="site">Hà Nôi</div>
                                    <ul id="show-time">

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product_summary">
            <h2>Tóm tắt</h2>
            <?php echo $movie["description"] ?>
        </div>
        <div class="product_trailer">
            <h2>Trailer</h2>
            <?php echo $movie["trailer"] ?>
        </div>
        @endforeach
    </div>
</section>
@endsection
@section('script')
<script>
$(document).ready(function () {
    $(".show-time").click(function () {
        let id = $(this).data('id');
        $.ajax({
            url: 'http://127.0.0.1:8000/time/' + id,
            type: "GET",
            data: {
                id
            },
            success: function (res) {
                let _html = '';
                for (var pro of res) {
                    _html += '<li>';
                    _html += '<a href="http://127.0.0.1:8000/booking/'+pro.id+'">'+pro.time+'</a>';
                    _html += '</li>';
                }
                $('#show-time').html(_html);
            }
        });
    });
});
$(".booking-btn").click(function () {
    $.ajax({
        url: 'http://127.0.0.1:8000/time/'+id,
        type: "GET",
        data: {
            id
        },
        success: function (res) {
            let _html = '';
            for (var pro of res) {
                _html += '<li>';
                _html += '<a href="http://127.0.0.1:8000/booking/'+pro.id+'">'+pro.time+'</a>';
                _html += '</li>';
            }
            $('#show-time').html(_html);
        }
    });
});
</script>

@endsection
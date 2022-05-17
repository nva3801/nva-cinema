@extends('welcome')
@section('content')
<section class="banner-section">
    <div class="slide_show"></div>
    <div class="container">
        <div class="banner-content">
            <h1 class="banner-title">
                <span style="display: block">BOOK YOUR</span>
                TICKETS FOR
                <span style="color: #31d7a9;">MOVIE</span>
            </h1>
            <p>Safe, secure, reliable ticketing.Your ticket to live entertainment!</p>
        </div>
    </div>
</section>
<section class="movie-section">
    <div class="container">
        <div class="tab">
            <div class="movie-section-header">
                <h2 class="title">MOVIES</h2>
                <p>Đừng bỏ lỡ những bộ phim ngày hôm nay.</p>
            </div>
            <div class="tab-area">
                @foreach($movie as $movie)
                <div class="tab-item">
                    <a href="{{ route('movie', $movie->slug) }}" class="tab-item-link">
                        <img src="{{ asset('storage/'. $movie->image) }}" alt="" width="100%" height="400px" style="object-fit: cover">
                        <div class="movie-rating">
                            @if($movie->rated === '0') 
                                P
                            @elseif($movie->rated === '1')
                                C13
                            @elseif($movie->rated === '2')
                                C16
                            @elseif($movie->rated === '3')
                                C18  
                            @endif
                        </div>
                        <div class="tab-item-list">
                            <p>{{ $movie->name }}</p>
                            <div class="line"></div>
                            <div class="d-flex justify-content-between tab-button">
                                <div>{{ $movie->time }}</div>
                                <button class="btn btn-success tab-button">Mua vé</button>
                            </div>
                        </div>
                    </a>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
<section class="event-section">
    <div class="container">
        <div class="tab">
             <div class="movie-section-header">
                <h2 class="title">EVENTS</h2>
                <p>Tin mới và tin ưu đãi.</p>
            </div>
            <div class="tab-area">
                @foreach($news as $news)
                <div class="tab-item">
                    <a href="{{ route('news', $news->id) }}" class="tab-item-link">
                        <img src="{{ asset('storage/'. $news->image) }}" alt="" width="100%" height="100%">
                    </a>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endsection
@extends('welcome')
@section('content')
<section class="breadcumb-section">
    <div class="container">
        <a href="{{ ('/') }}"><span>Trang Chủ</span></a> >> 
        <a href="{{ route('category', $category_slug->slug) }}"><span class="text-capitalize">{{ $category_slug->name }}</span></a>
    </div>
</section>
<section class="category-section">
    <div class="container">
        <h2 class="category-heading">{{ $category_slug->name }}</h2>
        <div class="category_list">
            @foreach($movie as $movie)
            <div class="category_items">
                <a href="{{ route('movie', $movie->slug) }}" class="category_items-link">
                    <img src="{{ asset('storage/'.$movie->image) }}" alt="" width="100%" height="462px" style="object-fit: cover;">
                    <div class="category_info">
                        <div class="category_name">{{ $movie->name }}</div>
                        <div class="category_type d-flex">
                            <span class="category_type-bold fw-bold">Thể Loại:
                                <span class="category_type-normal fw-normal">{{ $movie->genre }}</span>
                            </span>
                        </div>
                        <div class="category_time d-flex">
                            <span class="category_time-bold fw-bold">Thời lượng:
                                <span class="category_time-normal fw-normal">{{ $movie->time }}</span>
                            </span>
                        </div>
                        <div class="category_premiere d-flex">
                            <span class="category_premiere-bold fw-bold">Khởi chiếu:
                                <span class="category_premiere-normal fw-normal">{{ $movie->premiere }}</span>
                            </span>
                        </div>
                    </div>
                    <button class="category-btn">Đặt vé</button>
                </a>
            </div>
            @endforeach
            <div style="clear: both;"></div>
        </div>
    </div>
</section>
@endsection
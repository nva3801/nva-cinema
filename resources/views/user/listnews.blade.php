@extends('welcome')
@section('content')
<section class="breadcumb-section">
    <div class="container">
        <a href="{{ ('/') }}"><span>Trang Chủ</span></a> >> 
        <span class="text-capitalize">Tin Tức</span>
    </div>
</section>
<section class="py-3">
    <div class="container">
        <div class="listnews">
        @foreach($listnews as $listnews)
            <a href="{{ route('news', $listnews->id) }}">
                <div class="listnews-item">
                    <img src="{{ asset('storage/'.$listnews->image) }}" alt="">
                    <div class="listnews-title">{{ $listnews->title }}</div>
                </div>
            </a>
        @endforeach
        </div>
    </div>
</section>
@endsection
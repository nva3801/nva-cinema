@extends('welcome')
@section('content')
<section class="breadcumb-section">
    <div class="container">
        <a href="{{ ('/') }}"><span>Trang Chủ</span></a> >> 
        <span class="text-capitalize">Tin Tức</span>
    </div>
</section>
<section class="news">
    <div class="container">
        <div class="news_title my-3 ">{{ $news->title }}</div>
        <div class="d-flex">
            <div class="news_image mx-4">
                <img src="{{ asset('storage/'.$news->image) }}" alt="" width="350px" height="500px">
            </div>
            <div class="news_description">
                <?php echo $news['description'] ?>
            </div>
        </div>
    </div>
</section>
@endsection
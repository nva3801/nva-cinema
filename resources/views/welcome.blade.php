<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cinema</title>
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

</head>

<body>
    <div id="app">
        <header>
            <div class="container">
                <div class="header_navbar">
                    <div class="header_logo">
                        <a href="{{ '/' }}">
                            <img src="{{ asset('img/logo.png') }}" alt="" class="header_img" width="150px">
                        </a>
                    </div>
                    <ul class="header_list">
                        <li class="header_items">
                            Phim
                            <i class="fa-solid fa-chevron-down" style="font-size: 12px;"></i>
                            <div class="header_dropdown">
                                @foreach($category as $category)
                                <div class="header_dropdown-item">
                                    <a href="{{ route('category', $category->slug) }}">{{ $category->name }}</a>
                                </div>
                                @endforeach
                                
                            </div>
                        </li>
                        <li class="header_items">
                            Rạp CGV
                            <i class="fa-solid fa-chevron-down" style="font-size: 12px;"></i>
                        </li>
                        <li class="header_items">
                            <a href="{{ url('tin-tuc') }}">Tin Tức</a>
                        </li>
                    </ul>
                    <div class="header_icon">
                        @if (Route::has('login'))
                        @auth
                        <a id="navbarDropdown" class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }}
                        </a>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                            <a href="{{ url('don-hang') }}" class="dropdown-item">Đơn Hàng</a>
                            <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();                                                                                                                                                                                                                                                                                                                                                          document.getElementById('logout-form').submit();">{{ __('Logout') }}</a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                            </form>
                            <form action="{{ url('cartshow') }}" method="POST">
                                <input type="hidden" class="form-control mb-2" name="id" value="{{ Auth::user()->id }}">
                            </form>
                        </div>
                        @else
                        <a href="{{ route('login') }}" class="text-sm text-gray-700 dark:text-gray-500 underline text-white navbar-icon">
                            <i class="fas fa-user"></i>
                        </a>            
                        @endauth
                        @endif
                    </div>
                </div>
            </div>
        </header>
        <main>
            @yield('content')
        </main>
        <footer>
            <div class="footer_img">
                <img src="{{ asset('img/footer-shape.png') }}" alt="" width="100%">
            </div>
            <div class="footer_main">
                <div class="container">
                    <div class="footer_main-top">
                        <a href="">
                            <img src="{{ asset('img/logo.png') }}" alt="">
                        </a>
                        <div class="footer_main-social">
                            <a class="footer_main-social-item" href="">
                                <i class="fa-brands fa-facebook-f"></i>
                            </a>
                            <a class="footer_main-social-item" href="">
                                <i class="fa-brands fa-youtube"></i>
                            </a>
                            <a class="footer_main-social-item" href="">
                                <i class="fa-brands fa-instagram"></i>
                            </a>
                        </div>
                    </div>
                    <div class="footer_main-bottom">
                        <div class="footer_main-copyright">
                            Copyright © 2020. All Rights Reserved By An
                        </div>
                        <div class="d-flex">
                            <ul class="footer_main-bottom-list">
                                <li class="fw-bold">Điều khoản sử dụng</li>
                                <li class="footer_main-bottom-items">
                                    <a href="">Điều khoản chung</a>
                                </li>
                                <li class="footer_main-bottom-items">
                                    <a href="">Điều Khoản Giao Dịch</a>
                                </li>
                                <li class="footer_main-bottom-items">
                                    <a href="">Chính Sách Thanh Toán</a>
                                </li>
                                <li class="footer_main-bottom-items">
                                    <a href="">Chính Sách Bảo Mật</a>
                                </li>
                                <li class="footer_main-bottom-items">
                                    <a href="">Câu Hỏi Thường Gặp</a>
                                </li>
                            </ul>
                            <ul class="footer_main-bottom-list">
                                <li class="fw-bold">Chăm sóc khách hàng</li>
                                <li class="footer_main-bottom-items">Hotline: 1900 6017</li>
                                <li class="footer_main-bottom-items">Giờ làm việc: 8:00 - 22:00 (Tất cả các ngày bao gồm
                                    cả
                                    Lễ Tết)</li>
                                <li class="footer_main-bottom-items">Email hỗ trợ:
                                    <a href="">hoidap@cgv.vn</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <!-- Slick Slider -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="{{ asset('js/main.js') }}"></script>
    @yield('script')
</body>

</html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nhà thuốc</title>
    <link rel="icon" type="image/x-icon" href="/images/icons8_health_book.ico">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;1,200;1,300&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <base href="{{ asset('') }}">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <!-- Scripts -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])

    <link rel="stylesheet" href="style/layout.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
        integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>

<body>
    <div class="topnav">

        <div class="navlink">
            <a href="{{ route('homepage') }}">Trang chủ</a>
            <a href="{{ route('add') }}">Thêm sản phẩm</a>
            <a href="{{ route('productlist') }}">Danh sách sản phẩm</a>

        </div>

        <div class="search_container">
            <form for="search" action="{{ route('search') }}" method="get">
                <input class="inputFind" type="text" placeholder="Tìm kiếm..." name="search" id="search">
                <button type="submit" class="btnFind"><i class="fa-solid fa-magnifying-glass"></i></button>
            </form>
        </div>
    </div>
    <a class="logout" href="{{ route('home') }}">Logout</a>

    <div class="content">
        <div class="dropdown">
            <button class="nut_dropdown">Sắp xếp </button>
            <div class="noidung_dropdown">
                <a href="{{ route('SortProductASC') }}">Giá tăng dần</a>
                <a href="{{ route('SortProductDESC') }}">Giá giảm dần</a>
                <a href="{{ route('SortProductAZ') }}">Tên A - Z</a>
                <a href="{{ route('SortProductZA') }}">Tên Z - A</a>
            </div>
        </div>

        @yield('content')
    </div>

    <div class="footer">
        <div class="about">
            <div>
                <h1>Thông tin liên lạc</h1>
            </div>
            <h2><i class="fab fa-facebook"></i><span><a href="#">Facebook</a></span></h2>
            <h2><i class="fab fa-instagram-square"></i><span><a href="#">Instagram</a></span></h2>
            <h2><i class="fab fa-linkedin"></i><span><a href="#">Linkedin</a></span></h2>
            <a href="#" class="mail">https://nhathuoc.com.vn</a>
        </div>
    </div>

</body>

</html>

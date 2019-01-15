<?php
    $setting = Cache::get('setting');
    $sliders = DB::table('slider')->where('com','gioi-thieu')->where('status',1)->get();
    $categories = DB::table('news_categories')->where('com', 'thiet-ke')->where('status',1)->where('parent_id', 0)->get();
    $cate_thicong  = DB::table('news_categories')->where('com', 'thi-cong')->where('status',1)->where('parent_id', 0)->get();
?>
<header id="header" class="">
    <div class="container">
        <div class="row hidden-xs">
            <div class="logo">
                <a href="{{url('')}}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}"></a>
            </div>
            <div class="menu">                    
                <ul class="list-menu">
                    <li class=""><a href="{{url('')}}">Trang chủ</a></li>
                    <li class="dropdown submenux">
                        <a href="">Thiết kế</a>
                        <ul class="dropdown-menu dropmenux">
                            @foreach($categories as $category)
                            <li><a href="{{url('thiet-ke/'.$category->alias)}}">{{$category->name}}</a></li>                                
                            @endforeach                               
                        </ul>
                    </li>
                    <li class="dropdown submenux">
                        <a href="">Thi công</a>
                        <ul class="dropdown-menu dropmenux">
                            @foreach($cate_thicong as $cate)
                            <li><a href="{{url('thi-cong/'.$cate->alias)}}">{{$cate->name}}</a></li>                                
                            @endforeach                               
                        </ul>
                    </li>
                    <li><a href="{{url('anh-cong-trinh')}}">Ảnh công trình</a></li>
                    <li><a href="{{url('bao-gia')}}">Báo giá</a></li>
                    <li><a href="{{url('tin-tuc')}}">Tin tức</a></li>
                    <li><a href="{{url('lien-he')}}">Liên hệ</a></li>
                </ul>                    
            </div>
        </div>
        <div class="row visible-xs visible-sm">
            <div class="logo_mobile"><a href="{{url('')}}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}"></a></div>
            <div class="vk-header__search">
                <div class="container">
                    
                    <a href="#menuMobile" data-toggle="collapse" class="_btn d-lg-none menu_title"><i class="fa fa-bars"></i> Menu</a>
                </div>
            </div>
            <nav class="vk-header__menu-mobile">
                <ul class="vk-menu__mobile collapse" id="menuMobile">
                    <li><a href="{{url('')}}">Trang chủ</a></li>
                    <li><a href="">Thiết kế</a></li>
                    <li>
                        <a href="#">Thi công</a>
                        <a href="#menu1" data-toggle="collapse" class="_arrow-mobile"><i class="_icon fa fa-angle-down"></i></a>
                        <ul class="collapse" id="menu1">
                            <li><a href="#">Tổng quan</a></li>
                            <li><a href="#">Tầm nhìn  -  Giá trị cốt lõi</a></li>
                            <li><a href="#">Sơ đồ tổ chức</a></li>
                            <li><a href="#">Hệ thống quản trị</a></li>
                            <li><a href="#">Chứng chỉ</a></li>
                            <li><a href="#">Đối tác - khách hàng</a></li>
                        </ul>
                    </li>
                    <li><a href="{{url('anh-cong-trinh')}}">Ảnh công trình</a></li>
                    <li><a href="{{url('bao-gia')}}">Báo giá</a></li>
                    <li><a href="{{url('tin-tuc')}}">Tin tức</a></li>
                    <li><a href="{{url('lien-he')}}">Liên hệ</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header><!-- /header -->
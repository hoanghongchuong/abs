<?php
    $setting = Cache::get('setting');
    $sliders = DB::table('slider')->where('com','gioi-thieu')->where('status',1)->get();
    $categories = DB::table('news_categories')->where('com', 'thiet-ke')->where('status',1)->where('parent_id', 0)->get();
    $cate_thicong  = DB::table('news_categories')->where('com', 'thi-cong')->where('status',1)->where('parent_id', 0)->get();
?>
<header id="header" class="_mPS2id-t mPS2id-target mPS2id-target-first mPS2id-target-last">
        <div class="menu_mb butt_mobile visible-xs clearfix">
            <button class="nav-toggle">
               <div class="icon-menu">
                  <span class="line line-1"></span>
                  <span class="line line-2"></span>
                  <span class="line line-3"></span>
               </div>
            </button>
            <div class="text-center">
               <img class="img_logo_mb" src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="">
               <div class="lag_header visible-xs">
                  
               </div>
            </div>
        </div>
         <!-- /menu_mb -->
        <div class="clearfix clearfix-60 visible-sm visible-xs"></div>
        <div class="menu_mobile visible-xs">
            <nav class="nav is-fixed" role="navigation">
               <div class="wrapper wrapper-flush">
                  <div class="nav-container">
                     <ul class="nav-menu menu clearfix">
                        <li class="menu-item"><a href="{{url('')}}" class="menu-link">Trang chủ</a></li>
                        <li class="menu-item">
                           <a href="{{url('/')}}/#section-1" class="menu-link">Giới thiệu </a>
                        </li>
                        <li class="menu-item">
                           <a href="{{url('/')}}/#section-2" class="menu-link">Thông tin đơn hàng</a>
                        </li>
                        <li class="menu-item">
                           <a href="{{url('/')}}/#section-3" class="menu-link">Tin tức</a>
                        </li>
                        <li class="menu-item">
                           <a href="" class="menu-link">Hình ảnh - video</a>
                        </li>
                        <li class="menu-item active">
                           <a href="{{url('/')}}/#section-5" class="menu-link">Liên hệ</a>
                        </li>
                     </ul>
                  </div>
               </div>
            </nav>
        </div>
        <section class="sc_left_fix">
          
            <nav id="navigation-menu" class="hidden-xs">
               <ul>
                  <li><a href="{{url('')}}/#header" class="sc_icon _mPS2id-h mPS2id-clicked mPS2id-highlight mPS2id-highlight-first mPS2id-highlight-last">Trang chủ</a></li>
                  <li><a href="{{url('/')}}/#section-1" class="sc_icon _mPS2id-h">Giới thiệu </a></li>
                  <li><a href="{{url('/')}}/#section-2" class="sc_icon _mPS2id-h">Thông tin đơn hàng</a></li>
                  <li><a href="{{url('/')}}/#section-3" class="sc_icon _mPS2id-h">Tin tức</a></li>
                  <li><a href="{{url('/')}}/#section-4" class="sc_icon _mPS2id-h">Hình ảnh - video</a></li>
                  <li><a href="{{url('/')}}/#section-5" class="sc_icon _mPS2id-h">Liên hệ</a></li>
               </ul>
            </nav>
          
            <div class="sharethis-inline-share-buttons" style="margin-top: 200px; bottom: 0"></div>
        </section>
        <div class="clearfix clearfix-35 visible-xs"></div>
        <div class="clearfix clearfix-87 visible-sm visible-md"></div>
        <section class="sc_content">
            <div class="header_top">
               <div class="container_content">
                  <div class="add_header fadeInRight wow" style="visibility: visible; animation-name: fadeInRight;">
                     <i class="fa fa-map-marker"></i> {!! $setting->address !!}
                  </div>
               </div>
            </div>
        </section>
</header>
      <!-- end header-->
<div class="clearix"></div>
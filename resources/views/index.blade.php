<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php 
        $setting = Cache::get('setting'); 
        $product_list = Cache::get('product_list');
    ?>
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name='revisit-after' content='1 days' /> 
    <title><?php if(!empty($title)) echo $title; else echo $setting->title; ?></title>
    <meta name="author" content="{!! $setting->website !!}" />
    <meta name="copyright" content="GCO" />
    <meta name="keywords" content="<?php if(!empty($keyword)) echo $keyword; else echo $setting->keyword; ?>" />
    <meta name="description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta http-equiv="content-language" content="vi" />
    <meta property="og:title" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content="{!! $setting->website !!}" />
    <meta property="og:site_name" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="<?php if(!empty($img_share)) echo $img_share; else echo asset('upload/hinhanh/'.$setting->photo) ?>" />
    <meta property="og:description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta name="googlebot" content="all, index, follow" />
    <meta name="geo.region" content="VN" />
    <meta name="geo.position" content="10.764338, 106.69208" />
    <meta name="geo.placename" content="Hà Nội" />
    <meta name="Area" content="HoChiMinh, Saigon, Hanoi, Danang, Vietnam" />    
    <link rel="shortcut icon" href="{!! asset('upload/hinhanh/'.$setting->favico) !!}" type="image/png" />
    
    <link href="{{asset('public/css/bootstrap.min.css')}}" rel="stylesheet"/>
    <link href="{{asset('public/css/font-awesome.css')}}" rel="stylesheet"/>
    <link href="{{asset('public/css/owl.carousel.css')}}" rel="stylesheet"/>
    <link href="{{asset('public/css/owl.theme.css')}}" rel="stylesheet"/>
    <link href="{{asset('public/css/animate.css')}}" rel="stylesheet"/>
    <link href="{{asset('public/css/menu-2.css')}}" rel="stylesheet"/>
    <link href="{{asset('public/css/style_menu_right.css')}}" rel="stylesheet"/>
    <link href="{{asset('public/css/style00.css')}}" rel="stylesheet"/>
    <link href="{{asset('public/css/setmedia.css')}}" rel="stylesheet"/>
    <link href="{{asset('public/css/slick.css')}}" rel="stylesheet"/>
    <link href="{{asset('public/css/phone.css')}}" rel="stylesheet"/>

    <link rel="stylesheet" href="{{asset('public/css/jquery.animateSlider.css')}}">
    <link rel="stylesheet" href="{{asset('public/css/demo1.css')}}">
    
    <script type="text/javascript" src="{{asset('public/js/jquery-1.11.1.min.js')}}"></script>        
    <script type="text/javascript">
        function baseUrl(){
            return '<?php echo url('/'); ?>';
        }
        window.token = '{{ csrf_token() }}';
   </script>
</head>
<body>
    <div class="main-wrapper">
        @include('templates.layout.header')    
        @yield('content')
        @include('templates.layout.footer')

        <div id="fb-root"></div>
        <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    </div>
    
    {!! $setting->codechat !!}
    {{ $setting->analytics }}
    @yield('script')
    <script type="text/javascript" src="{{asset('public/js/bootstrap.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/js/menu-2.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/js/style-img.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/js/wow.min.js')}}"></script>
    <script src="{{asset('public/js/modernizr.custom.js')}}"></script>
   <!-- Load the plugin -->
    <script src="{{asset('public/js/jquery.animateSlider.js')}}"></script>

    <!-- Page Scroll to id plugin -->
      <script src="{{asset('public/js/menu_right.js')}}"></script>
      <script src="{{asset('public/js/slick.min.js')}}"></script>
      <script src="{{asset('public/js/script.js')}}"></script>
      
     
      <script type="text/javascript " src="{{asset('public/js/add-js.js')}}"></script>
      <script type="text/javascript " src="{{asset('public/js/owl.carousel.js')}} "></script>
      </footer>
      <!--Phần lien quan đến đăng nhập giỏ hàng không được xóa-->
      <script type="text/javascript" src="{{asset('public/js/init.js')}}"></script>
      <link rel="stylesheet" href="{{asset('public/js/validationEngine.jquery.css')}}">
      <script src="{{asset('public/js/jquery.validationEngine-vi.js')}}" charset="utf-8"></script>
      <script src="{{asset('public/js/jquery.validationEngine.js')}}"></script>
     
    <script>
         new WOW().init();
    </script>
</body>
</html>
@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<article id="body_home">
	<section class="sc_content">
	    <ul class="back_link">
	        <li><a href="{{url('')}}">Trang chủ</a></li>
	        <li class="active"><a href="{{url('')}}/#section-1">{{$about->name}}</a></li>
	    </ul>
	    <div class="clearfix"></div>

    	<img class="w_100  fadeInRight wow" src="{{asset('public/images/banner_about.jpg')}}" alt="" style="visibility: visible; animation-name: fadeInRight;">
	    <div id="section-1">
	        <div class="container_content">
	            <div class="content_about">
	                <div class="tab-content tab_content_about">
	                   @foreach($list_abouts as $cate)
	                    <div id="tabs_about{{$cate->id}}" class="tab-pane fade @if($cate->id == $about->id)active @endif in">
	                        <h2 class="tit_tabs_about">{{$cate->name}}</h2>
	                        <div class="clearfix"></div>
	                        <div class="txt_content_about">
	                            {!! $cate->content !!}
	                        </div>
	                    </div>
	                    @endforeach
	                </div>
	                <ul class="nav nav-tabs nav_tabs_about">
	                    
	                    @foreach($list_abouts as $cate)
	                    <li class=" @if($cate->id == $about->id)active @endif">
	                        <a data-toggle="tab" href="#tabs_about{{$cate->id}}">
	                                <span class="icon_about_page"><img src="{{asset('upload/banner/'.@$cate->image)}}" alt=""></span>
	                                <span class="txt_about_page"><span>{{@$cate->name}}</span></span>
	                        </a>
	                    </li>
	                    @endforeach
	                </ul>

	            </div>
	        </div>
	    </div>
	    <div class="clearfix"></div>
	</section>
</article>
@endsection
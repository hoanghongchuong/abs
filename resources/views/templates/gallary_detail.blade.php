@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<article id="body_home">
   <section class="sc_content">
      <div class="container_content">
         <div class="page_recruit">
            <ul class="back_link">
               <li><a href="{{url('')}}">Trang chủ</a></li>
               <li><a href="thu-vien-anh">Thư viện ảnh</a></li>
               <li class=""><a href="">{{$news_detail->name}}</a></li>
            </ul>
            <div class="clearfix"></div>
            <div class="album-imag left-detail">
               <div class="slider-for">                        
                     @if(count($album_hinh) > 0)
                     @foreach($album_hinh as $album)
                         <div class="item">
                             <img src="{{asset('upload/albumnews/'.$album->photo)}}" alt="image" class=""  draggable="false"/>
                         </div>
                     @endforeach
                     @else
                        <div class="item">
                             <img src="{{asset('upload/news/'.$product_detail->photo)}}" alt="image" class=""  draggable="false"/>
                        </div>
                     @endif                        
               </div>
               <div class="slider-nav">
                     @if(count($album_hinh) > 0)
                     @foreach($album_hinh as $album)
                         <div class="item">
                             <img src="{{asset('upload/albumnews/'.$album->photo)}}" alt="image" class=""  draggable="false"/>
                         </div>
                     @endforeach
                     @else
                         <div class="item">
                             <img src="{{asset('upload/news/'.$product_detail->photo)}}" alt="image" class=""  draggable="false"/>
                         </div>
                     @endif                        
               </div>
            </div>
         </div>
      </div>
   </section>
</article>
<div class="clearfix"></div>
@endsection
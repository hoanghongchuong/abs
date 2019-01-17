@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<article id="body_home">
    <section class="sc_content">
         <ul class="back_link">
            <li><a href="{{url('')}}">Trang chủ</a></li>
            <li><a href="{{url('tin-tuc')}}">Thị trường XKLĐ Việt Nam  </a></li>
            <li class=""><a href="">{{$news_detail->name}}</a></li>
         </ul>
         <div class="clearfix"></div>
         <div id="section-1">
            <div class="container_content">
               <div class="content_about">
                  <div class="tab-content tab_content_about">
                     <div id="tabs_about1" class="">
                        <h2 class="tit_tabs_about">{{$news_detail->name}}</h2>
                        <div class="clearfix"></div>
                        <div class="txt_content_about">
                           {!! $news_detail->content !!}
                        </div>
                        
                     </div>
                  </div>
                  <div class="clearfix"></div>
                  <h2 class="tit_tabs_about">Các tin liên quan</h2>
                  <ul class="list_xkld_home">
                    @foreach($newsSameCate as $item)
                    <li class="fadeInDown wow" style="visibility: visible; animation-name: fadeInDown;">
                        <h3 class="name_vbpq_home"><a href="{{url('tin-tuc/'.$item->alias.'.html')}}">{{$item->name}}</a></h3>
                        <div class="clearfix"></div>
                        <div class="date_download">
                           <span class="date_vdpq_home">({{date('d/m/Y', strtotime($item->created_at))}})</span>
                           <a href="{{asset('upload/news/'.$item->photo)}}" class="download_vdpq"><i class="fa fa-download"></i></a>
                        </div>
                    </li>
                    @endforeach
                  </ul>
               </div>
            </div>
         </div>
        <div class="clearfix"></div>
    </section>
</article>
 
<div class="clearfix "></div>

@endsection


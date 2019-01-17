@extends('index')
@section('content')
<article id="body_home">
    <section class="sc_content">
         <ul class="back_link">
            <li><a href="{{url('')}}">Trang chủ</a></li>
            <li><a href="{{url('video')}}">Video</a></li>
            <li class=""><a href="">{{$data->name}}</a></li>
         </ul>
         <div class="clearfix"></div>
         <div id="section-1">
            <div class="container_content">
               <div class="content_about">
                  <div class="tab-content tab_content_about">
                     <div id="tabs_about1" class="">
                        <h2 class="tit_tabs_about">{{$data->name}}</h2>
                        <div class="clearfix"></div>
                        <div class="txt_content_about">
                           <iframe width="100%" height="515" src="https://www.youtube.com/embed/{{$data->link}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                        
                     </div>
                  </div>
                  <div class="clearfix"></div>
                  <h2 class="tit_tabs_about">Video khác</h2>
                  <ul class="list_xkld_home">
                    @foreach($newsSameCate as $item)
                    <li class="fadeInDown wow" style="visibility: visible; animation-name: fadeInDown;">
                        <h3 class="name_vbpq_home"><a href="{{url('video/'.$item->alias)}}">{{$item->name}}</a></h3>
                        <div class="clearfix"></div>
                        
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
@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<article id="body_home">
    <section class="sc_content">
        <ul class="back_link">
            <li><a href="{{url('')}}">Trang chủ</a></li>
            <li class=""><a href="">Video</a></li>
        </ul>
        <div class="clearfix"></div>
        <div id="section-3">
            <div class="container_content">
                <div class="content_about">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <h2 class="tit_about_home xkld_tit fadeInUp wow" style="visibility: visible; animation-name: fadeInUp;"><a href="{{url('tin-tuc')}}">Video</a></h2>
                        <div class="clearfix clearfix-10"></div>
                        <ul class="list_xkld_home">
                            @foreach($data as $item)
                            <li class="fadeInDown wow" style="visibility: visible; animation-name: fadeInDown;">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <a class="box_xkld_home" href="{{url('video/'.$item->alias)}}">
                                        <img class="w_100" src="http://img.youtube.com/vi/{{$item->link}}/hqdefault.jpg" alt=""/>
                                        <h3 class="name_xkld_home" style="margin-top: 20px;"><span>{{$item->name}}</span></h3>                                       
                                    </a>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                        <div class="pull-right">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="clearfix"></div>

  </article>
@endsection
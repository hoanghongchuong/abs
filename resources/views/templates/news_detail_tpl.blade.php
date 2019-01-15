@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<div class="breadcrumb">
    <div class="container">
        <div class="row">
            <ul>
                <li><a href="{{url('')}}">Trang chủ / </a></li>
                <li><a href="{{url('tin-tuc')}}">Tin tức /</a></li>
                <li>{{$news_detail->name}}</li>
            </ul>
        </div>
    </div>
</div>
<content >
    <div class="container" style="margin-top: 0px;">
        <div class="row detail">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <h1>{{$news_detail->name}}</h1>
                <div class="content_detail_news">{!! $news_detail->content !!}</div>
            </div>
           
            
        </div>
    </div>
</content>

@endsection


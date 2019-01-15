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
                <li><a href="{{url('thiet-ke'.@$news_cate->alias)}}">{{@$news_cate->name}} /</a></li>
                <li>{{$news_detail->name}}</li>
            </ul>
        </div>
    </div>
</div>
<content >
    <div class="container" style="margin-top: 0px;">
        <div class="row detail">
            <div class="col-xs-12 col-sm-9 col-md-19">
                <h1 style="margin-top: 0px;">{{$news_detail->name}}</h1>
                <div class="content_detail_news">{!! $news_detail->content !!}</div>
            </div>
            <div class="col-xs-12 col-md-3">
                <h4 class="tt-right">Bài viết liên quan</h4>
                @foreach($postSame as $post)
                <div class="media right_sidebar">
                    <a class="pull-left" href="{{url('thiet-ke/'.$post->alias.'.html')}}">
                        <img class="media-object" src="{{asset('upload/news/'.$post->photo)}}" alt="{{$post->name}}">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading"><a href="{{url('thiet-ke/'.$post->alias.'.html')}}" title="">{{$post->name}}</a></h4>                        
                    </div>
                </div>
                @endforeach
            </div>
            
        </div>
    </div>
</content>

@endsection


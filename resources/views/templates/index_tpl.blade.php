@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$sliders = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
?>
@include('templates.layout.slider')
<div class="project">
    <div class="container">
        <div class="row">
            <h3 class="title_home">Dự án đã thực hiện</h3>
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    @foreach($categories_design_home as $k=>$cate_tab)
                    <li class="@if($k == 0)active @endif"><a href="#tab_{{$k}}" data-toggle="tab" aria-expanded="false">{{$cate_tab->name}}</a></li>
                    @endforeach
                    
                    <li><a href="#tab_3" data-toggle="tab" aria-expanded="true">Ảnh công trình</a></li>
                </ul>
                <div class="tab-content ">
                    @foreach($categories_design_home as $k=>$cate_tab)
                    <?php $data = DB::table('news')->where('status',1)->where('cate_id',$cate_tab->id)->take(5)->orderBy('id','desc')->get(); ?>
                    <div class="tab-pane @if($k == 0)active @endif" id="tab_{{$k}}">
                        <div class="list-hot-item">
                            <div class="col-md-8 left">
                                @for($i = 0 ; $i <=3; $i++)
                                <div class="box-item col-md-6">
                                    <a href="{{asset('thiet-ke/'.@$data[$i]->alias.'.html')}}" title="">
                                        <p><img src="{{asset('upload/news/'.@$data[$i]->photo)}}"></p>
                                        <div class="box_fix"></div>
                                        <div class="short-des-home">
                                            <div class="name_vk">{{@$data[$i]->name}}</div>
                                            <div class="readmore">
                                                <span>Xem thêm</span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                @endfor
                            </div>
                            <div class="col-md-4 right rights rightxx">
                                <a href="{{asset('thiet-ke/'.@$data[4]->alias.'.html')}}" title="{{@$data[4]->name}}">
                                    <p><img src="{{asset('upload/news/'.@$data[4]->photo)}}"></p>
                                    <div class="box_fixs"></div>
                                    <div class="short-des-home right_banner">
                                        <div class="name_vk">{{@$data[4]->name}}</div>
                                        <div class="readmore">
                                            <span>Xem thêm</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    
                    <div class="tab-pane" id="tab_3">
                        <div class="list-hot-item">
                            <div class="col-md-8 left">
                                @for($i = 0 ; $i <=3; $i++)
                                <div class="box-item col-md-6">
                                    <a href="{{asset('anh-cong-trinh/'.@$products[$i]->alias.'.html')}}" title="">
                                        <p><img src="{{asset('upload/news/'.@$products[$i]->photo)}}"></p>
                                        <div class="box_fix"></div>
                                        <div class="short-des-home">
                                            <div class="name_vk">{{@$products[$i]->name}}</div>
                                            <div class="readmore">
                                                <span>Xem thêm</span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                @endfor
                            </div>
                            <div class="col-md-4 right rights rightxx">
                                <a href="{{asset('anh-cong-trinh/'.@$products[4]->alias.'.html')}}" title="">
                                    <p><img src="{{asset('upload/news/'.@$products[4]->photo)}}"></p>
                                    <div class="box_fixs"></div>
                                    <div class="short-des-home right_banner">
                                        <div class="name_vk">{{@$products[4]->name}}</div>
                                        <div class="readmore">
                                            <span>Xem thêm</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="service">
    <div class="container">
        <div class="row">
            <h3 class="title_home">Dịch vụ của chúng tôi</h3>
            <div class="box-service-home">
                @foreach($categories_design_home as $cate_home)
                <div class="col-md-6 col-xs-12">
                    <p><a href="{{url('thiet-ke/'.$cate_home->alias)}}" title="{{$cate_home->name}}"><img src="{{asset('upload/news/'.$cate_home->photo)}}" alt="{{$cate_home->name}}"></a></p>
                    <p class="name_service_home"><a href="{{url('thiet-ke/'.$cate_home->alias)}}" title="{{$cate_home->name}}">{{$cate_home->name}}</a></p>
                    <div class="short-des-service">
                        {!! $cate_home->mota !!}
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
<div class="about_home">
    <div class="container">
        <div class="row" style="background: url('{{asset('upload/hinhanh/'.$about->photo)}}') no-repeat right;">
            <div class="col-md-5 col-xs-12">
                <div class="box-about-home">
                    <p class="title-about-home">{{$about->name}}</p>
                    <div class="short-des-about">
                        {!! $about->mota !!}
                    </div>
                    <a href="{{url('gioi-thieu')}}" title=""><p class="readmore"><span>Xem thêm</span></p></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="news_home">
    <div class="container">
        <div class="row">
            <p class="title-about-home">Tin tức</p>
            <div class="box-news-home">
                @foreach($news as $item_news)
                <div class="col-md-6 col-xs-12 mb-20">
                    <div class="col-md-6 col-xs-12 pdr-0">
                        <a href="{{url('tin-tuc/'.$item_news->alias.'.html')}}" title="{{$item_news->name}}">
                            <img src="{{asset('upload/news/'.$item_news->photo)}}">
                        </a>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <div class="name_news_home"><a href="{{url('tin-tuc/'.$item_news->alias.'.html')}}" title="{{$item_news->name}}">{{$item_news->name}}</a></div>
                        <div class="short-news">{!! $item_news->mota !!}</div>
                        <p class="readmore" style="margin-top: 20px;"><a href="{{url('tin-tuc/'.$item_news->alias.'.html')}}" title="{{$item_news->name}}"><span>Xem thêm</span></a></p>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
<div class="video">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                {!! $video->link !!}
            </div>
        </div>
    </div>
</div>
<div class="box-contact-home">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-xs-12">
                <p class="title-about-home">Liên hệ</p>
                <p class="p1">Bạn đang muốn thiết kế không gian sống</p>
                <p class="p2">Hãy liên hệ với chúng tôi</p>
                <form action="{{route('postContact')}}" method="post" id="form-contact" accept-charset="utf-8">
                	{{csrf_field()}}
                    <div class="col-md-6">
                        <input type="text" name="name" required="" class="form-control" value="" placeholder="Họ tên">
                    </div>
                    <div class="col-md-6">
                        <input type="text" name="phone" required="" class="form-control" value="" placeholder="Số điện thoại">
                    </div>
                     <div class="col-md-6">
                        <input type="email" name="email" required="" class="form-control" value="" placeholder="Email">
                    </div>
                     <div class="col-md-6">
                        <input type="text" name="address" required="" class="form-control" value="" placeholder="Địa chỉ">
                    </div>
                    <div class="col-md-12">
                        <textarea name="content" class="form-control" rows="5" placeholder="Nội dung"></textarea>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-send">Gửi</button>
                    </div>
                </form>
            </div>
            <div class="col-md-6 col-xs-12">
                <div class="box-map">
                    {!! $setting->iframemap !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

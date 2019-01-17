@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $cateProducts = Cache::get('cateProducts');
?>
<article id="body_home">
    <section class="sc_content">
         <div id="section-2">
            <div class="container_content">
               <div class="page_recruit">
                  <ul class="back_link">
                     <li><a href="{{url('')}}">Trang chủ</a></li>
                     <li><a href="javascript:;">Thông tin đơn hàng</a></li>
                  </ul>
                  <div class="clearfix"></div>
                    <div class="tab-content tab_content_recruit" id="ketqua">
                        @foreach($cate_pro as $k=>$cate)
                        <div id="tabs_recruit{{$k}}" class="tab-pane fade in @if($cate->id == $product_cate->id) active @endif">
                            {!! $cate->mota !!}                              
                            <div class="clearfix clearfix-20"></div>
                            <div class="table-responsive table_recruit">
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên đơn hàng</th>
                                            <th>Số lượng</th>
                                            <th>Địa điểm</th>
                                            <th>Mức lương</th>
                                            <th>Ngày thi tuyển</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($cate->products as $key=>$item)
                                        <tr>
                                            <td>{{$key+1}}</td>
                                            <td>{{$item->name}}</td>
                                            <td>{{$item->numb}}</td>
                                            <td>{{$item->address}}</td>
                                            <td>{{$item->price}}</td>
                                            <td>{{$item->date_test}}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        @endforeach
                    </div>
                  <ul class="nav nav-tabs nav_tabs_recruit">
                    @foreach($cate_pro as $k=>$cate)
                        <li class="@if($cate->id == $product_cate->id) active @endif">
                            <a data-toggle="tab" href="#tabs_recruit{{$k}}" data-id="{{$cate->id}}">
                            <span class="icon_rc_page"><img src="{{asset('upload/product/'.$cate->photo)}}" alt=""></span>
                            <span class="txt_rc_page"><span>{{$cate->name}}</span></span>
                            </a>
                        </li>
                    @endforeach
                  </ul>
               </div>
            </div>
         </div>
    </section>
</article>

@endsection

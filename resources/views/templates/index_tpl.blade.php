@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$sliders = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
?>
<article id="body_home">
    <section class="sc_content">
            <div class="sc_header_slogan fadeInUp wow">
               
               <ul class="anim-slider-23">
                  <li class="anim-slide" style=" min-height: 690px;
                     max-height: 720px;">
                     <img src="{{asset('public/images/ABS_logo_15.png')}}" style="width:500px;top: 190px; right:10px" id="logochim">    
                     <img src="{{asset('public/images/ABS_logo.png')}}" style="width:150px; left:60px;top:70px" id="logo"">
                     <img src="{{asset('public/images/Absvietnam.png')}}" style="width:550px; left:220px;top:100px" id="Absvietnam" >
                     <img src="{{asset('public/images/khatvong.png')}}" style="height: 50px;left:210px;top:190px;" id="khatvong">
                     <img src="{{asset('public/images/gach.png')}}" style=" height: 18px;top: 205px;left: 400px;" id="gach1" >
                     <img src="{{asset('public/images/Niemtin.png')}}" style="height: 50px;left:430px;top:190px;" id="Niemtin" >
                     <img src="{{asset('public/images/gach.png')}}" style="height: 18px;top: 205px;left: 595px;" id="gach2" >
                     <img src="{{asset('public/images/toasang.png')}}" style="height: 50px;left:620px;top:190px;" id="toasang" >
                  </li>
                  <!-- Arrows -->
                  <nav class="anim-arrows">
                     <span class="anim-arrows-prev"></span>
                     <span class="anim-arrows-next"></span>
                  </nav>
                  <!-- Dynamically created dots -->
               </ul>
               <image src="{{asset('public/images/banner2.jpg')}}" class="img-header">
               <style>
                  .anim-slider-23 {
                  background-image: url(public/images/bg.png);
                  list-style-type: none;
                  position: relative;
                  overflow: hidden;
                  text-align: center;
                  top: 0; left: 0;
                  width: 100%; height: 720px; padding:0; margin:0;
                  }
                  .img-header {
                  display:none;
                  }
                  @media only screen and (max-width: 900px) {
                  .anim-slider-23 { 
                  display: none; 
                  }
                  .img-header {
                  display:inline-block;
                  width: 100%;
                  }
                  #go_top {
                  width: 34px;
                  height: 35px;
                  line-height: 35px;
                  }
                  }
               </style>
               
            </div>
            <div class="clearfix clearfix-10"></div>
            <div id="section-1">
               <div class="container_content">
                  <h2 class="tit_about_home fadeInUp wow"><span>{{@$about_first->name}}</span></h2>
                  <div class="clearfix clearfix-10"></div>
                  <div class="des_about_home fadeInRight wow">
                    {!! $about->mota !!}        
                  </div>
                  <div class="text-center"><a href="{{url('gioi-thieu/'.@$about_first->alias)}}" class="view_about_home fadeInUp wow">Chi tiết >></a></div>
                  <ul class="list_about_home fadeInUp wow">
                    @for($i = 1; $i < count($list_abouts); $i++)
                    <li>
                        <div class="box_about_home">
                           <span class="icon_about">
                           <img src="{{asset('upload/banner/'.@$list_abouts[$i]->image)}}" alt=""/>
                           </span>
                           <div class="sub_about">
                              <h3 class="name_about"><a href="{{url('gioi-thieu/'.@$list_abouts[$i]->alias)}}">{{@$list_abouts[$i]->name}}</a></h3>
                              <div class="clearfix"></div>
                              <div class="des_about">
                                {!! @$list_abouts[$i]->mota !!}                              
                              </div>
                              <div class="pull-right">
                                 <a href="{{url('gioi-thieu/'.@$list_abouts[$i]->alias)}}" class="view_about_list">
                                 <i class="fa fa-angle-double-right"></i><i class="fa fa-angle-double-right"></i>
                                 </a>
                              </div>
                           </div>
                        </div>
                    </li>
                    @endfor
                  </ul>
                  <div class="clearfix clearfix-25"></div>
               </div>
            </div>
            <div class="clearfix clearfix-10"></div>
            <div id="section-2">
               <div class="container_content">
                  <div class="text-center">
                     <h2 class="tit_employment fadeInDown wow text-left" style="float: left;"><a href="{{url('don-hang')}}">Thông tin đơn hàng</a></h2>
                     <div class="clearfix clearfix-10"></div>
                     <div class="list_employment_home">
                        
                        <div class="col-md-4 col-sm-4 col-xs-6 col-480-12">
                           <div class="row">
                              <div class="box_employment_home fadeInUp wow">
                                 <a href="http://www.absvietnam.com/dong-goi-cong-nghiep.html" class="img_employment_home h_5374">
                                 <img class="w_100" src="images/dg.jpg" alt=""/>
                                 </a>
                                 <div class="clearfix"></div>
                                 <h3 class="name_employment_home"><a href="http://www.absvietnam.com/dong-goi-cong-nghiep.html">Đóng gói công nghiệp</a></h3>
                              </div>
                           </div>
                        </div>
                        
                     </div>
                  </div>
               </div>
            </div>
            <div class="clearfix clearfix-10"></div>
            <div id="section-3">
               <div class="container_content">
                  <div class="bg_xkld_home clearfix">
                     <div class="row">
                        <h2 class="tit_about_home xkld_tit fadeInUp wow"><a href="{{url('tin-tuc')}}">Thị trường XKLĐ Việt Nam</a></h2>
                        
                        
                           <div class="clearfix clearfix-10"></div>
                           <div class="list_news">
                            @foreach($news as $item_news)
                               <div class="col-md-6 col-xs-12 box_item_news">
                                   <div class="media">
                                       <a class="pull-left" href="{{url('tin-tuc/'.$item_news->alias.'.html')}}">
                                           <img class="media-object" src="{{asset('upload/news/'.$item_news->photo)}}" alt="{{$item_news->name}}">
                                       </a>
                                       <div class="media-body">
                                           <h4 class="media-heading"><a href="{{url('tin-tuc/'.$item_news->alias.'.html')}}" title="{{$item_news->name}}" class="name_xkld_home">{{$item_news->name}}</a></h4>
                                           <div class="short-des-news des_xkld_home">{!! $item_news->mota !!}</div>
                                       </div>
                                   </div>
                               </div>
                            @endforeach
                           </div>
                        
                        
                     </div>
                  </div>
               </div>
            </div>
            <div class="clearfix clearfix-10"></div>
            <div id="section-4">
               <div class="container_content">
                  <div class="row">
                     <div class="col-md-6 col-xs-12">
                        <h2 class="tit_about_home xkld_tit fadeInUp wow">
                           <a href="{{url('thu-vien-anh')}}">Thư viện ảnh</a>
                        </h2>
                     </div>
                     <div class="clearfix clearfix-10"></div>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="box_album_hot fadeInUp wow">
                           <a href="{{url('thu-vien-anh/'.$image_hot->alias.'.html')}}" class="img_album_hot">
                           <img class="w_100" src="{{asset('upload/news/'.$image_hot->photo)}}" alt=""/>
                           </a>
                           <div class="clearfix"></div>
                           <h3 class="name_album_hot"><a href="{{url('thu-vien-anh/'.$image_hot->alias.'.html')}}">{{$image_hot->name}}</a></h3>
                        </div>
                     </div>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="list_album_home">
                           <div class="row_4">
                              <div class="col-md-4 col-sm-4 col-xs-6">
                                 <div class="row_11">
                                    <a href="http://www.absvietnam.com/cuoc-song-tts-abs-tai-nhat-ban-2.html" class="box_album_home fadeInUp wow">
                                       <span class="img_album_home h_5652">
                                       <img class="w_100" src="http://www.absvietnam.com/images/media/hinh-anh-nen-phong-canh-nhat-ban-5.jpg" alt=""/>
                                       </span>
                                       <div class="clearfix"></div>
                                       <h3 class="name_album_home"><span> Cuộc Sống TTS ABS Tại Nhật Bản</span></h3>
                                    </a>
                                 </div>
                              </div>
                              <div class="col-md-4 col-sm-4 col-xs-6">
                                 <div class="row_11">
                                    <a href="http://www.absvietnam.com/cuoc-song-hang-ngay-tai-abs.html" class="box_album_home fadeInUp wow">
                                       <span class="img_album_home h_5652">
                                       <img class="w_100" src="http://www.absvietnam.com/images/media/1._Xep_hang_.jpg" alt=""/>
                                       </span>
                                       <div class="clearfix"></div>
                                       <h3 class="name_album_home"><span> Cuộc sống hằng ngày tại ABS</span></h3>
                                    </a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="clearfix"></div>
                     <div class="col-md-6 col-xs-12">
                        <h2 class="tit_about_home xkld_tit fadeInUp wow"><a href="http://www.absvietnam.com/video.html">Video</a></h2>
                     </div>
                     <div class="clearfix clearfix-10"></div>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="list_album_home">
                           <div class="row_4">
                              <div class="col-md-4 col-sm-4 col-xs-6">
                                 <div class="row_11">
                                    <a href="http://www.absvietnam.com/video-tong-ket-cuoi-nam-2017.html" class="box_album_home fadeInUp wow">
                                       <span class="img_album_home h_5652">
                                       <img class="w_100" src="http://img.youtube.com/vi/5YIwTti2kCA/hqdefault.jpg" alt=""/>
                                       <div class="clearfix"></div>
                                       <h3 class="name_album_home"><span>Video tổng kết cuối năm 2017</span></h3>
                                    </a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="box_album_hot fadeInUp wow">
                           <a href="http://www.absvietnam.com/gioi-thieu-cong-ty-abs-viet-nam.html" class="img_album_hot">
                           <img class="w_100" src="http://img.youtube.com/vi/2DPrQi6mS88/hqdefault.jpg" alt=""/>
                           </a>
                           <div class="clearfix"></div>
                           <h3 class="name_album_hot"><a href="http://www.absvietnam.com/gioi-thieu-cong-ty-abs-viet-nam.html">Giới thiệu công ty Abs Việt Nam</a></h3>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="clearfix clearfix-10"></div>
            <div id="section-5">
               <div class="container_content">
                  <div class="clearfix"></div>
                  <div class="sc_contact">
                     <h2 class="tit_conteact fadeInDown wow"><span>Thông tin liên hệ</span></h2>
                     <div class="clearfix"></div>
                     <div class="row">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                           <form class="form_contact fadeInUp wow validate form-register" action="{{route('postContact')}}" id="send_message" method="post" role="form">
                            {{csrf_field()}}
                              <div class="row_8">
                                 <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="row_7">
                                       <input class="form-control input_name_mail" type="text" required="" name="name" id="name" placeholder="Name...">
                                    </div>
                                 </div>
                                 <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="row_7">
                                       <input class="form-control input_name_mail" type="email" required=""  name="email" id="email" title="Email không chính xác" placeholder="Email...">
                                    </div>
                                 </div>
                              </div>
                              <textarea rows="4" cols="50" name="content" required="" placeholder="Message..." class="content_input_contact"></textarea>
                              <div class="clearfix clearfix-5"></div>
                            
                              <div class="text-center">
                                 <input type="hidden" value="1" name="sendcontact_adadasfaf">
                                 <button class="butt_send_contact" type="submit" name="">Gửi đi</button>
                              </div>
                              <div class="clearfix clearfix-10"></div>
                           </form>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                           <div class="add_cpn">
                              <span class="name_cpn">{{$setting->company}}</span><br/>
                              @foreach($chinhanh as $cn)
                              <span class="txt_add_cpn">
                              <i class="fa fa-map-marker icon_cpn"></i>
                              <span>{{$cn->name}}: {{$cn->address}}</span>
                              </span>
                              @endforeach
                              <span class="txt_add_cpn">
                              <i class="glyphicon glyphicon-phone-alt icon_cpn"></i>
                              <span>Tel: {{$setting->phone}} - {{$setting->hotline}}</span>
                              </span>
                              <span class="txt_add_cpn">
                              <i class="glyphicon glyphicon-envelope icon_cpn"></i>
                              <span>Email: {{$setting->email}}</span>
                              </span>
                           </div>
                           <div class="clearfix"></div>
                           <div class="list_link_ft">
                              <!-- <a href="tel:+84-24-7302-8999" class="fa fa-phone"></a> -->
                              <a href="{{$setting->facebook}}" class="fa fa-facebook"></a>
                              <a href="{{$setting->twitter}}" class="fa fa-twitter"></a>
                              <a href="{{$setting->google}}" class="fa fa-google-plus"></a>
                           </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                           <div class="box_map_home">{!! $setting->iframemap !!}</div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
             
            <div class="clearfix clearfix-10"></div>
            <div id="section-6">
            <div class="container_content"></div>
            </div>
         </section>
      </article>
      <section class="sc_content">
      <div class="container_content">
      <div class="copyright_ft">
      <div class="pull-left">© 2019 ABS VietNam. All rights reserved</div>
      <div class="pull-right">Thiết kế bởi ABS VietNam</div>
      </div>
      </div>
      </section>
<div class="clearfix"></div>
@endsection

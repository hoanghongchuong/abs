<?php
    $setting = Cache::get('setting');
    $categories = DB::table('product_categories')->where('status',1)->where('parent_id',0)->get();
?>

<footer>
    <div class="top_footer">
        <div class="container">
            <div class="row">                    
                <div class="col-md-4">
                    <p><a href="" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo_footer)}}"></a></p>
                    <div class="des-footer">Công ty cổ phần kiến trúc - nội thất City Build là một trong số những công ty nội thất hàng đầu Việt Nam hoạt động trên những lĩnh vực chính như: tư vấn thiết kế kiến trúc, thiết kế nội thất</div>
                </div>
                <div class="col-md-4 center">
                    <p class="phone_f"><a href="" title=""><i class="fa fa-phone"></i> {{$setting->phone}}</a></p>
                    <p class="ht">Hỗ trợ</p>
                    <p class="gt"><a href="{{url('gioi-thieu')}}" title="">Giới thiệu CITY BUILD</a></p>
                    <p class="gt"><a href="{{url('lien-he')}}" title="">Liên hệ</a></p>
                </div>
                <div class="col-md-4 right">
                    <p class="phone_f"><i class="fa fa-evelop"></i> {{$setting->email}}</p>
                    <p class="ht">Fanpage</p>
                    <div class="fb">
                        <div class="fb-page" data-href="https://www.facebook.com/CityBuild-577051449385539/" data-tabs="timeline" data-width="300" data-height="200" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/CityBuild-577051449385539/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/CityBuild-577051449385539/">Facebook</a></blockquote></div>
                    </div>
                </div>                  
            </div>
        </div>
    </div>
    <div class="bot_footer">
        <p>Designed by Hungthinhads.com</p>
    </div>
</footer>
<div class="phonering-alo-phone phonering-alo-green phonering-alo-show" id="phonering-alo-phoneIcon" style="left: -35px; bottom: 0; display: block;position: fixed; z-index: 99999999999999999999999">
    <div class="phonering-alo-ph-circle"></div>
    <div class="phonering-alo-ph-circle-fill"></div>
    <a href="tel:0909 88 1357"></a>
    <div class="phonering-alo-ph-img-circle">
        <a href="tel:{{$setting->phone}}"></a>
        <a href="tel:{{$setting->phone}}" class="pps-btn-img " title="viet web">
            <img src="https://i.imgur.com/v8TniL3.png" alt="" width="50" onmouseover="this.src = 'https://i.imgur.com/v8TniL3.png';" onmouseout="this.src = 'https://i.imgur.com/v8TniL3.png';">
        </a>
   </div>
</div>
@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $sliders = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
?>
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
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.3025913807687!2d105.76920981432315!3d20.980504286024573!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313453306edd2d7f%3A0xffbe93a8c2a95adb!2zVsSDbiBwaMOybmcgVGjhu6thIHBow6F0IGzhuqFpIHF14bqtbiBIw6AgxJDDtG5n!5e0!3m2!1svi!2s!4v1547191297588" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

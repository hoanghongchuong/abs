<?php
    $setting = Cache::get('setting');
    $categories = DB::table('product_categories')->where('status',1)->where('parent_id',0)->get();
?>
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
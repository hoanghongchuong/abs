$(".anim-slider-23 ").animateSlider({

                 autoplay: true,
                 interval: 7000,
                 animations: {
                     0: //Slide No1
                     {
                         "img#logo ": {
                             show: "bounceIn ",
                             delayShow: "delay1s "
                         },
                         "img#Absvietnam ": {
                             show: "fadeIn ",
                             delayShow: "delay2s "
                         },
                         "img#khatvong ": {
                             show: "fadeInLeft ",
                             delayShow: "delay3s "
                         },
                         "img#gach1 ": {
                             show: "fadeInDown ",
                             delayShow: "delay4s "
                         },
                         "img#Niemtin ": {
                             show: "fadeIn ",
                             delayShow: "delay4s "
                         },
                         "img#gach2 ": {
                             show: "fadeInUp ",
                             delayShow: "delay5s "
                         },
                         "img#toasang ": {
                             show: "fadeInRight ",
                             delayShow: "delay5s "
                         },
                         "img#logochim ": {
                             show: "fadeIn ",
                             delayShow: "delay6s "
                         },
                     },
                 }
             });
$(document).ready(function() {
                $(".slider_main").owlCarousel({
                    navigation : true,
                    items : 1,
                    itemsCustom : false,
                    itemsDesktop : [1199, 1],
                    itemsDesktopSmall : [979,1],
                    itemsTablet : [768, 1],
                    itemsTabletSmall : false,
                    itemsMobile : [479, 1],
                    singleItem : false,
                    itemsScaleUp : false,
                    autoHeight : true,
            
                    navigationText : ["", ""],
                    rewindNav : true,
                    scrollPerPage : false,
            
                    slideSpeed : 2000,
                    paginationSpeed : 1000,
                    rewindSpeed : 1000,
                    autoPlay : true,
                    baseClass : "owl-carousel",
                    theme : "owl-theme",
                    stopOnHover : true,
            
                    lazyLoad : false,
                    lazyFollow : true,
                    lazyEffect : "fade"
                });
            });
            
            
            
            $("a[href='#top']").click(function() {
                $("html, body").animate({ scrollTop: 0 }, "slow");
                return false;
            });
            $(window).scroll(function () {
                if ($(window).scrollTop() >=200) {
                    $('#go_top').show();
                }
                else {
                    $('#go_top').hide();
                }
            });
 (function($){
                $(window).on("load",function(){
            
                    /* Page Scroll to id fn call */
                    $("#navigation-menu a,a[href='#top'],a[rel='m_PageScroll2id']").mPageScroll2id({
                        highlightSelector:"#navigation-menu a"
                    });
            
                    /* demo functions */
                    $("a[rel='next']").click(function(e){
                        e.preventDefault();
                        var to=$(this).parent().parent("section").next().attr("id");
                        $.mPageScroll2id("scrollTo",to);
                    });
            
                });
            })(jQuery);
    function danhmuc(id){
                //alert(id);
                var id = id;
                $.ajax({
                    url:base_url() + 'products/tangview',
                    dataType:"html",
                    type:"POST",
                    data:{id:id},
            
                    success:function(res){
                       // $('body').append(res);
                        $("#ketqua").html(res);
            
                    }
                });
            }
$(function () {
         //ZOOM
         $("#zoom_album").glassCase({
             'widthDisplay': 905,
             'heightDisplay': 465,
             'nrThumbsPerRow': 4,
             'isSlowZoom': true,
             'colorIcons': '#F15129',
             'colorActiveThumb': '#F15129'
         });
     });
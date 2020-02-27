@php
    $banners = \App\Models\ShopBanner::where('status', 1)->where('type', 0)->sort()->get()
@endphp
@if (!empty($banners))
    <div class="vc_row wpb_row vc_row-fluid">
        <div class="wpb_column vc_column_container vc_col-sm-12">
            <div class="vc_column-inner ">
                <div class="wpb_wrapper">
                    <div class="wpb_revslider_element ">
                        <link href="http://fonts.googleapis.com/css?family=Roboto+Slab:400%2C700%7CRoboto:300%2C700"
                              rel="stylesheet" property="stylesheet" type="text/css" media="all">
                        <div id="rev_slider_1_1_wrapper" class="rev_slider_wrapper fullscreen-container"
                             data-source="gallery" style="background:transparent; padding:0px;">
                            <!-- START REVOLUTION SLIDER 5.4.7 fullscreen mode -->
                            <div id="rev_slider_1_1" class="rev_slider fullscreenbanner"
                                 style="display: none;" data-version="5.4.7">
                                <ul>    <!-- SLIDE  -->
                                    @foreach ($banners as $key => $banner)
                                        <li data-index="rs-2" data-transition="fade"
                                            data-slotamount="default" data-hideafterloop="0"
                                            data-hideslideonmobile="off" data-easein="default"
                                            data-easeout="default" data-masterspeed="default"
                                            data-thumb="{{ asset($banner->image) }}"
                                            data-rotate="0" data-saveperformance="off" data-title="Slide"
                                            data-param1="" data-param2="" data-param3="" data-param4=""
                                            data-param5="" data-param6="" data-param7="" data-param8=""
                                            data-param9="" data-param10="" data-description="">
                                            <!-- MAIN IMAGE -->
                                            <img src="{{ asset($banner->image) }}"
                                                 alt="" title="Homepage 1" data-bgposition="center top"
                                                 data-bgfit="cover" data-bgrepeat="no-repeat"
                                                 data-bgparallax="4" class="rev-slidebg" data-no-retina>
                                            <!-- LAYERS -->
                                        </li>
                                    @endforeach
                                </ul>
                                <script>var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
                                    var htmlDivCss = "";
                                    if (htmlDiv) {
                                        htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                    } else {
                                        var htmlDiv = document.createElement("div");
                                        htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
                                        document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
                                    }
                                </script>
                                <div class="tp-bannertimer tp-bottom"
                                     style="visibility: hidden !important;"></div>
                            </div>
                            <script>var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
                                var htmlDivCss = "";
                                if (htmlDiv) {
                                    htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                } else {
                                    var htmlDiv = document.createElement("div");
                                    htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
                                    document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
                                }
                            </script>
                            <script type="text/javascript">
                                if (setREVStartSize !== undefined) setREVStartSize(
                                    {
                                        c: '#rev_slider_1_1',
                                        gridwidth: [1170],
                                        gridheight: [600],
                                        sliderLayout: 'fullscreen',
                                        fullScreenAutoWidth: 'off',
                                        fullScreenAlignForce: 'off',
                                        fullScreenOffsetContainer: '#farmvilla_organic_theme_header',
                                        fullScreenOffset: ''
                                    });

                                var revapi1,
                                    tpj;
                                (function () {
                                    if (!/loaded|interactive|complete/.test(document.readyState)) document.addEventListener("DOMContentLoaded", onLoad)
                                    else
                                        onLoad();

                                    function onLoad() {
                                        if (tpj === undefined) {
                                            tpj = jQuery;

                                            if ("off" == "on") tpj.noConflict();
                                        }
                                        if (tpj("#rev_slider_1_1").revolution == undefined) {
                                            revslider_showDoubleJqueryError("#rev_slider_1_1");
                                        } else {
                                            revapi1 = tpj("#rev_slider_1_1").show().revolution({
                                                sliderType: "standard",
                                                jsFileLocation: "//bliccathemes.com/themes/farmvilla/wp-content/plugins/revslider/public/assets/js/",
                                                sliderLayout: "fullscreen",
                                                dottedOverlay: "none",
                                                delay: 9000,
                                                navigation: {
                                                    keyboardNavigation: "off",
                                                    keyboard_direction: "horizontal",
                                                    mouseScrollNavigation: "off",
                                                    mouseScrollReverse: "default",
                                                    onHoverStop: "off",
                                                    arrows: {
                                                        style: "uranus",
                                                        enable: true,
                                                        hide_onmobile: false,
                                                        hide_onleave: true,
                                                        hide_delay: 200,
                                                        hide_delay_mobile: 1200,
                                                        tmp: '',
                                                        left: {
                                                            h_align: "left",
                                                            v_align: "center",
                                                            h_offset: 20,
                                                            v_offset: 0
                                                        },
                                                        right: {
                                                            h_align: "right",
                                                            v_align: "center",
                                                            h_offset: 20,
                                                            v_offset: 0
                                                        }
                                                    }
                                                },
                                                visibilityLevels: [1240, 1024, 778, 480],
                                                gridwidth: 1170,
                                                gridheight: 600,
                                                lazyType: "none",
                                                parallax: {
                                                    type: "scroll",
                                                    origo: "slidercenter",
                                                    speed: 400,
                                                    speedbg: 0,
                                                    speedls: 0,
                                                    levels: [5, 10, 15, 20, 25, 30, 35, 40, 45, 46, 47, 48, 49, 50, 51, 55],
                                                    disable_onmobile: "on"
                                                },
                                                shadow: 0,
                                                spinner: "spinner0",
                                                stopLoop: "off",
                                                stopAfterLoops: -1,
                                                stopAtSlide: -1,
                                                shuffle: "off",
                                                autoHeight: "off",
                                                fullScreenAutoWidth: "off",
                                                fullScreenAlignForce: "off",
                                                fullScreenOffsetContainer: "#farmvilla_organic_theme_header",
                                                fullScreenOffset: "",
                                                disableProgressBar: "on",
                                                hideThumbsOnMobile: "off",
                                                hideSliderAtLimit: 0,
                                                hideCaptionAtLimit: 0,
                                                hideAllCaptionAtLilmit: 0,
                                                debugMode: false,
                                                fallbacks: {
                                                    simplifyAll: "off",
                                                    nextSlideOnWindowFocus: "off",
                                                    disableFocusListener: false,
                                                }
                                            });
                                        }
                                        ; /* END OF revapi call */

                                    }; /* END OF ON LOAD FUNCTION */
                                }()); /* END OF WRAPPING FUNCTION */
                            </script>
                            <script>
                                var htmlDivCss = unescape("%23rev_slider_1_1%20.uranus.tparrows%20%7B%0A%20%20width%3A50px%3B%0A%20%20height%3A50px%3B%0A%20%20background%3Argba%28255%2C255%2C255%2C0%29%3B%0A%20%7D%0A%20%23rev_slider_1_1%20.uranus.tparrows%3Abefore%20%7B%0A%20width%3A50px%3B%0A%20height%3A50px%3B%0A%20line-height%3A50px%3B%0A%20font-size%3A40px%3B%0A%20transition%3Aall%200.3s%3B%0A-webkit-transition%3Aall%200.3s%3B%0A%20%7D%0A%20%0A%20%20%23rev_slider_1_1%20.uranus.tparrows%3Ahover%3Abefore%20%7B%0A%20%20%20%20opacity%3A0.75%3B%0A%20%20%7D%0A");
                                var htmlDiv = document.getElementById('rs-plugin-settings-inline-css');
                                if (htmlDiv) {
                                    htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
                                } else {
                                    var htmlDiv = document.createElement('div');
                                    htmlDiv.innerHTML = '<style>' + htmlDivCss + '</style>';
                                    document.getElementsByTagName('head')[0].appendChild(htmlDiv.childNodes[0]);
                                }
                            </script>
                        </div><!-- END REVOLUTION SLIDER -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1466710738389 vc_row-has-fill" style="opacity: 1;">
        <div class="vc_row wpb_row vc_row-fluid ">
            <div class="wpb_column vc_column_container vc_col-sm-12">
                <div class="vc_column-inner ">
                    <div class="wpb_wrapper">
                        <div class="bt_heading_7">
                            <div class="flipInX-1 blind text animated"
                                 style="color:#464646; font-size:40px; font-weight:400; "><span>{{ trans('front.title_physical') }}</span>
                            </div>
                            <div class="flipInX-1 blind line_1 animated"
                                 style="animation-delay: 100ms; -moz-animation-delay: 100ms; -webkit-animation-delay: 100ms;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" style="width: 85%">
            @for($i= 0; $i<4; $i++)
            <div class="wpb_column vc_column_container vc_col-sm-6 margin-t-2">
                <div class="vc_column-inner ">
                    <div class="wpb_wrapper">
                        <div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1466369435355 vc_row-has-fill">
                            <div class="wpb_column vc_column_container vc_col-sm-6">
                                <div class="vc_column-inner ">
                                    <div class="wpb_wrapper">
                                        <div class="wpb_single_image wpb_content_element vc_align_left  vc_custom_1466370321659">

                                            <figure class="wpb_wrapper vc_figure">
                                                <div class="vc_single_image-wrapper   vc_box_border_grey">
                                                    <img width="300" height="230"
                                                         src="{{ asset($templateFile.'/images/img-cbd/52519418_2248127775444561_3195011151993765888_n.jpg')}}"
                                                         class="vc_single_image-img attachment-full"
                                                         alt=""/></div>
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="wpb_column vc_column_container vc_col-sm-6">
                                <div class="vc_column-inner ">
                                    <div class="wpb_wrapper">
                                        <div class="wpb_text_column wpb_content_element  vc_custom_1466370369185">
                                            <div class="wpb_wrapper">
                                                <h3 style="margin-bottom: 20px; font-weight: bold;">NGỦ NGON HƠN</h3>
                                                <p>CBD giúp hệ thống thần kinh trung ương được nghỉ ngơi và điều chỉnh đồng hồ sinh học của cơ thể.</p>

                                            </div>
                                        </div>
                                        <div class=" ubtn-ctn-left ">
                                            <button type="button" id="ubtn-9553"
                                                    class="ubtn ult-adjust-bottom-margin ult-responsive ubtn-small ubtn-top-bg  none  ubtn-left   tooltip-5e4375e10547d"
                                                    data-hover="#ffffff" data-border-color="#7aa354"
                                                    data-bg="" data-hover-bg="#7aa354"
                                                    data-border-hover="#7aa354" data-shadow-hover=""
                                                    data-shadow-click="none" data-shadow=""
                                                    data-shd-shadow="" data-ultimate-target='#ubtn-9553'
                                                    data-responsive-json-new='{"font-size":"desktop:16px;","line-height":""}'
                                                    style="font-family: Roboto; font-weight:500;border-radius:0px;border-width:2px;border-color:#7aa354;border-style:solid;color: #7aa354;">
                                                                <span class="ubtn-data ubtn-icon">
                                                                    <i class="none"
                                                                       style="font-size:16px;color:#ffffff;"></i>
                                                                </span>
                                                <span class="ubtn-hover" style="background-color:#7aa354"></span>
                                                <span class="ubtn-data ubtn-text " style="font-weight: bold;">{{ trans('front.see_more') }}</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endfor
        </div>
    </div>

    {{-- <section id="slider"><!--slider-->--}}
    {{--    <div class="container">--}}
    {{--      <div class="row">--}}
    {{--        <div class="col-sm-12">--}}
    {{--          <div id="slider-carousel" class="carousel slide" data-ride="carousel">--}}
    {{--            <ol class="carousel-indicators">--}}
    {{--              @foreach ($banners as $key => $banner)--}}
    {{--              <li data-target="#slider-carousel" data-slide-to="{{ $key }}" class="{{ ($key)?'':'active' }}"></li>--}}
    {{--              @endforeach--}}
    {{--            </ol>--}}
    {{--            <div class="carousel-inner">--}}
    {{--               @foreach ($banners as $key => $banner)--}}
    {{--                  <div class="item {{ ($key)?'':'active' }}">--}}
    {{--                    <div class="col-sm-12">--}}
    {{--                      <a href="{{ route('banner.click',['id' => $banner->id]) }}" target="{{ $banner->target }}"><img src="{{ asset($banner->image) }}" class="girl img-responsive" alt="" /></a>--}}
    {{--                    </div>--}}
    {{--                  </div>--}}
    {{--               @endforeach--}}
    {{--            </div>--}}
    {{--            <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">--}}
    {{--              <i class="fa fa-angle-left"></i>--}}
    {{--            </a>--}}
    {{--            <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">--}}
    {{--              <i class="fa fa-angle-right"></i>--}}
    {{--            </a>--}}
    {{--          </div>--}}

    {{--        </div>--}}
    {{--      </div>--}}
    {{--    </div>--}}
    {{--  </section><!--/slider-->--}}
@endif

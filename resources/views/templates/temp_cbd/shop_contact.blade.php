@extends($templatePath.'.shop_layout')

@section('main')

    <section class="bliccaThemes-waypoint" data-animate-down="on-sticky" data-animate-up="off-sticky">
        <div>
            <div class="row">
                <div class="col-md-12 bt-reset-pd">
                    <!-- Page Content Start -->
                    <div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true"
                         class="vc_row wpb_row vc_row-fluid vc_custom_1466721639150 vc_row-no-padding">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div id='wrap_map_5e4747e7ac206'
                                         class='ultimate-map-wrapper ult-adjust-bottom-margin ' style=' height:400px;'>
                                        <div id='map_5e4747e7ac206' data-map_override='0'
                                             class='ultimate_google_map wpb_content_element page_margin_top'
                                             style='border-style:solid;border-color:#e9e9e9;border-width:2px;border-radius:0px;width:100%;height:400px;'>
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3709.836484672446!2d105.83232205100057!3d21.592304873605134!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313527943d2a7f51%3A0x50ba15fcd0f3f391!2zSFRDIC0gVHJ1bmcgdMOibSDEkMOgbyB04bqhbyB2w6AgUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIE5ow6JuIEzhu7Fj!5e0!3m2!1svi!2s!4v1581730306798!5m2!1svi!2s"
                                                    width="100%" height="100%" frameborder="0" style="border:0;"
                                                    allowfullscreen=""></iframe>
                                        </div>
                                    </div>
                                    <script type='text/javascript'>
                                        (function ($) {
                                            'use strict';
                                            var map_map_5e4747e7ac206 = null;
                                            var coordinate_map_5e4747e7ac206;
                                            var isDraggable = $(document).width() > 641 ? true : true;
                                            try {
                                                var map_map_5e4747e7ac206 = null;
                                                var coordinate_map_5e4747e7ac206;
                                                coordinate_map_5e4747e7ac206 = new google.maps.LatLng(40.667559, -73.954620);
                                                var mapOptions =
                                                    {
                                                        zoom: 13,
                                                        center: coordinate_map_5e4747e7ac206,
                                                        scaleControl: true,
                                                        streetViewControl: false,
                                                        mapTypeControl: false,
                                                        panControl: false,
                                                        zoomControl: false,
                                                        scrollwheel: false,
                                                        draggable: isDraggable,
                                                        zoomControlOptions: {
                                                            position: google.maps.ControlPosition.RIGHT_BOTTOM
                                                        }, mapTypeControlOptions: {
                                                            mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
                                                        }
                                                    };
                                                var styles = [
                                                    {
                                                        "featureType": "landscape",
                                                        "stylers": [
                                                            {"color": "#7aa354"}
                                                        ]
                                                    }
                                                ];
                                                var styledMap = new google.maps.StyledMapType(styles,
                                                    {name: "Styled Map"});
                                                var map_map_5e4747e7ac206 = new google.maps.Map(document.getElementById('map_5e4747e7ac206'), mapOptions);
                                                map_map_5e4747e7ac206.mapTypes.set('map_style', styledMap);
                                                map_map_5e4747e7ac206.setMapTypeId('map_style');
                                                var x = 'infowindow_open_value';
                                                var marker_map_5e4747e7ac206 = new google.maps.Marker({
                                                    position: new google.maps.LatLng(40.667559, -73.954620),
                                                    animation: google.maps.Animation.DROP,
                                                    map: map_map_5e4747e7ac206,
                                                    icon: 'http://109.199.124.100/~burakb26/themes/farmvilla/wp-content/uploads/2016/06/pin3.png'
                                                });
                                                google.maps.event.addListener(marker_map_5e4747e7ac206, 'click', toggleBounce);
                                            } catch (e) {
                                            }
                                            ;
                                            jQuery(document).ready(function ($) {
                                                google.maps.event.trigger(map_map_5e4747e7ac206, 'resize');
                                                $(window).resize(function () {
                                                    google.maps.event.trigger(map_map_5e4747e7ac206, 'resize');
                                                    if (map_map_5e4747e7ac206 != null)
                                                        map_map_5e4747e7ac206.setCenter(coordinate_map_5e4747e7ac206);
                                                });
                                                $('.ui-tabs').bind('tabsactivate', function (event, ui) {
                                                    if ($(this).find('.ultimate-map-wrapper').length > 0) {
                                                        setTimeout(function () {
                                                            $(window).trigger('resize');
                                                        }, 200);
                                                    }
                                                });
                                                $('.ui-accordion').bind('accordionactivate', function (event, ui) {
                                                    if ($(this).find('.ultimate-map-wrapper').length > 0) {
                                                        setTimeout(function () {
                                                            $(window).trigger('resize');
                                                        }, 200);
                                                    }
                                                });
                                                $(window).load(function () {
                                                    setTimeout(function () {
                                                        $(window).trigger('resize');
                                                    }, 200);
                                                });
                                                $('.ult_exp_section').select(function () {
                                                    if ($(map_map_5e4747e7ac206).parents('.ult_exp_section')) {
                                                        setTimeout(function () {
                                                            $(window).trigger('resize');
                                                        }, 200);
                                                    }
                                                });
                                                $(document).on('onUVCModalPopupOpen', function () {
                                                    if ($(map_map_5e4747e7ac206).parents('.ult_modal-content')) {
                                                        setTimeout(function () {
                                                            $(window).trigger('resize');
                                                        }, 200);
                                                    }
                                                });
                                                $(document).on('click', '.ult_tab_li', function () {
                                                    $(window).trigger('resize');
                                                    setTimeout(function () {
                                                        $(window).trigger('resize');
                                                    }, 200);
                                                });
                                            });

                                            function toggleBounce() {
                                                if (marker_map_5e4747e7ac206.getAnimation() != null) {
                                                    marker_map_5e4747e7ac206.setAnimation(null);
                                                } else {
                                                    marker_map_5e4747e7ac206.setAnimation(google.maps.Animation.BOUNCE);
                                                }
                                            }
                                        })(jQuery);
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container margin-t-3">
                        <div class="vc_row-full-width vc_clearfix"></div>
                        <div class="vc_row wpb_row vc_row-fluid vc_custom_1466719764188">
                            <div class="wpb_column vc_column_container vc_col-sm-12">
                                <div class="vc_column-inner ">
                                    <div class="wpb_wrapper">
                                        <div class="bt_heading_7">
                                            <div class="fadeInUp-1 blind text animated" style="color:#464646; font-size:40px; font-weight:400; ">
                                                <span>{{$title}}</span>
                                            </div>
                                            <div class="fadeIn-1 blind line_1 animated"
                                                 style="animation-delay: 100ms; -moz-animation-delay: 100ms; -webkit-animation-delay: 100ms;"></div>
                                        </div>
                                        <div class="conten margin-t-3" >
                                            <div style="font-weight:400; ">
                                                {!!  sc_html_render($page->content) !!}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="vc_row wpb_row vc_row-fluid padding-t-b-3">
                            <div class="wpb_column vc_column_container vc_col-sm-8">
                                <div class="vc_column-inner ">
                                    <div class="wpb_wrapper">
                                        <div role="form" class="wpcf7" id="wpcf7-f160-p167-o1" lang="en-US" dir="ltr">
                                            <div class="screen-reader-response"></div>
                                            <form action="/themes/farmvilla/contact-us/#wpcf7-f160-p167-o1"
                                                  method="post"
                                                  class="wpcf7-form" novalidate="novalidate">
                                                <div style="display: none;">
                                                    <input type="hidden" name="_wpcf7" value="160"/>
                                                    <input type="hidden" name="_wpcf7_version" value="5.0.1"/>
                                                    <input type="hidden" name="_wpcf7_locale" value="en_US"/>
                                                    <input type="hidden" name="_wpcf7_unit_tag"
                                                           value="wpcf7-f160-p167-o1"/>
                                                    <input type="hidden" name="_wpcf7_container_post" value="167"/>
                                                </div>
                                                <div class="contact-form-7">
<span class="col-md-6"><br/>
<span class="wpcf7-form-control-wrap text-345"><input type="text" name="text-345" value="" size="40"
                                                      class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                      aria-required="true" aria-invalid="false"
                                                      placeholder="Name"/></span><br/>
</span><br/>
                                                    <span class="col-md-6"><br/>
<span class="wpcf7-form-control-wrap text-674"><input type="text" name="text-674" value="" size="40"
                                                      class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                      aria-required="true" aria-invalid="false"
                                                      placeholder="Your Email Address"/></span><br/>
</span><br/>
                                                    <span class="col-md-12"><br/>
<span class="wpcf7-form-control-wrap email-45"><input type="email" name="email-45" value="" size="40"
                                                      class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-email"
                                                      aria-invalid="false" placeholder="Subject"/></span><br/>
</span><br/>
                                                    <span class="col-md-12"><br/>
<span class="wpcf7-form-control-wrap textarea-606"><textarea name="textarea-606" cols="40" rows="5"
                                                             class="wpcf7-form-control wpcf7-textarea wpcf7-validates-as-required"
                                                             aria-required="true" aria-invalid="false"
                                                             placeholder="Your Message"></textarea></span><br/>
</span><br/>
                                                    <span class="col-md-2"><br/>
<input type="submit" value="Submit" class="wpcf7-form-control wpcf7-submit"/><br/>
</span>
                                                </div>
                                                <div class="wpcf7-response-output wpcf7-display-none"></div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="wpb_column vc_column_container vc_col-sm-4 vc_col-has-fill">
                                <div class="vc_column-inner vc_custom_1466719318961">
                                    <div class="wpb_wrapper">
                                        <div class="contact-info">
                                            <div class="contact-widget"><i
                                                        class="fa fa-map-marker pull-left widget-icon"></i>
                                                <p>Envato Marketplace Melbourne Farlane St Sydney TF - 123456</p><i
                                                        class="fa fa-envelope-o pull-left widget-icon"></i>
                                                <p>hempsapa@gmail.com</p><i
                                                        class="fa fa-phone pull-left widget-icon"></i>
                                                <p>(+09) 0323 750 4561</p></div>
                                            <div class="social-widget"><a href="#">
                                                    <div class="socialbox"><i class="fa fa-facebook"></i></div>
                                                </a><a href="#">
                                                    <div class="socialbox"><i class="fa fa-dribbble"></i></div>
                                                </a><a href="#">
                                                    <div class="socialbox"><i class="fa fa-flickr"></i></div>
                                                </a><a href="#">
                                                    <div class="socialbox"><i class="fa fa-yelp"></i></div>
                                                </a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

{{--@section('breadcrumb')--}}
{{--    <div class="breadcrumbs">--}}
{{--        <ol class="breadcrumb">--}}
{{--          <li><a href="{{ route('home') }}">{{ trans('front.home') }}</a></li>--}}
{{--          <li class="active">{{ $title }}</li>--}}
{{--        </ol>--}}
{{--      </div>--}}
{{--@endsection--}}

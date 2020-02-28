@extends($templatePath.'.shop_layout')

@section('center')
    <div class="home">
        <div class="container container-width-85">
            <div class="vc_row wpb_row vc_row-fluid vc_custom_1468848677006 vc_row-has-fill">
                <div class="wpb_column vc_column_container vc_col-sm-12">
                    <div class="vc_column-inner ">
                        <div class="wpb_wrapper">
                            <div class="bt_heading_7 home_title">
                                <div class="flipInX-1 blind text animated "
                                     style="color:#464646; font-size:40px; font-weight:400; ">
                                    <span>{{ trans('front.title_promotional_products') }}</span>
                                </div>
                                <div class="flipInX-1 blind line_1 animated"
                                     style="animation-delay: 100ms; -moz-animation-delay: 100ms; -webkit-animation-delay: 100ms;"></div>
                            </div>
                            <div id="ult-carousel-19223484825e4375e12cf3b"
                                 class="ult-carousel-wrapper  vc_custom_1466721383271  ult_horizontal"
                                 data-gutter="15" data-rtl="false">
                                <div class="ult-carousel-12721472065e4375e12cebc">
                                    @if (count($products_new) ==0)
                                        @for($i=0; $i<6; $i++)
                                            <div class="ult-item-wrap" data-animation="animated fadeIn">
                                                <div class="bt-testimonial wpb_content_element"
                                                     style="position: relative">
                                                    <div style="position: absolute; right: 5px; top: 5px; padding: 5px 25px 5px 25px; border: 1px solid;z-index: 15; background-color: #63ba46;">
                                                        <h3 style=" color: white;">-50%</h3>
                                                    </div>
                                                    <div class="testimonial-style-2 woocommerce">
                                                        <div class="post-220 product type-product status-publish has-post-thumbnail product_cat-music product_cat-singles first instock downloadable shipping-taxable purchasable product-type-simple">
                                                            <ul class="products">
                                                                <li class="post-220 product custom-slick type-product status-publish has-post-thumbnail product_cat-music product_cat-singles first instock downloadable shipping-taxable purchasable product-type-simple">

                                                                    <a href="{{ asset("/product/productDetail")}}"
                                                                       class="woocommerce-LoopProduct-link woocommerce-loop-product__link">

                                                                        <div class="bliccathemes-shop-thumb">
                                                                            <img width="300" height="300"
                                                                                 src="{{ asset($product->getThumb()) }}"
                                                                                 class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image"
                                                                                 alt=""
                                                                                 srcset="{{ asset($product->getThumb()) }} 300w, {{ asset($product->getThumb()) }} 150w, {{ asset($product->getThumb()) }} 100w"
                                                                                 sizes="(max-width: 300px) 100vw, 300px"/>
                                                                        </div>
                                                                        <a href="{{ asset("/product/productDetail")}}">
                                                                            <h2>Hempsapa FE</h2>
                                                                        </a>
                                                                        <div>
                                                                            <p>Lorem ipsum dolor sit amet, consectetur
                                                                                adipisicing elit. Cumque dolore esse
                                                                                expedita fugiat in libero maxime, nihil
                                                                                pariatur quia rem repudiandae sint, unde
                                                                                voluptates! Aliquam consectetur dolorum
                                                                                sequi temporibus ullam?</p>
                                                                        </div>
                                                                        <div class="margin-t-3">
                                                                            <span>3.000.000 VND</span>
                                                                        </div>
                                                                    </a>
                                                                    <div>
                                                                        <a href="{{ asset("/cart.html")}}"
                                                                           data-quantity="1"
                                                                           class="button product_type_simple add_to_cart_button ajax_add_to_cart"
                                                                           data-product_id="220" data-product_sku=""
                                                                           aria-label="Add &ldquo;Corn Box&rdquo; to your cart"
                                                                           rel="nofollow">{{ trans('front.add_to_cart') }}</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endfor
                                    @else
                                        @foreach ($products_new as  $key => $product)
                                            <div class="ult-item-wrap" data-animation="animated fadeIn">
                                                <div class="bt-testimonial wpb_content_element"
                                                     style="position: relative">
                                                    <div style="position: absolute; right: 5px; top: 5px; padding: 5px 25px 5px 25px; border: 1px solid;z-index: 15; background-color: #63ba46;">
                                                        <h3 style=" color: white;">-50%</h3>
                                                    </div>
                                                    <div class="testimonial-style-2 woocommerce">
                                                        <div class="post-220 product type-product status-publish has-post-thumbnail product_cat-music product_cat-singles first instock downloadable shipping-taxable purchasable product-type-simple">
                                                            <ul class="products">
                                                                <li class="post-220 product custom-slick type-product status-publish has-post-thumbnail product_cat-music product_cat-singles first instock downloadable shipping-taxable purchasable product-type-simple">

                                                                    <a href="{{ $product->getUrl() }}"
                                                                       class="woocommerce-LoopProduct-link woocommerce-loop-product__link">

                                                                        <div class="bliccathemes-shop-thumb">
                                                                            <img width="300" height="300"
                                                                                 src="{{ asset($product->getThumb()) }}"
                                                                                 class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image"
                                                                                 alt=""
                                                                                 srcset="{{ asset($product->getThumb()) }} 300w, {{ asset($product->getThumb()) }} 150w, {{ asset($product->getThumb()) }} 100w"
                                                                                 sizes="(max-width: 300px) 100vw, 300px"/>
                                                                        </div>
                                                                        <a href="{{ $product->getUrl() }}">
                                                                            <h2>{{ $product->name }}</h2>
                                                                        </a>
                                                                        <div style="
                                                                        height: 43px;
                                                                        color: black;
                                                                        margin-top: 10px;
                                                                        overflow: hidden;
                                                                               text-overflow: ellipsis;
                                                                               display: -webkit-box;
                                                                               -webkit-box-orient: vertical;
                                                                               -webkit-line-clamp: 2;">
                                                                            <p>{{$product->description}}</p>
                                                                        </div>
                                                                        <div class="margin-t-3">
                                                                            <span style="font-size: 18px;">{!! $product->showPrice() !!}</span>
                                                                        </div>
                                                                    </a>
                                                                    <button
                                                                            data-quantity="1"
                                                                            class="button product_type_simple add_to_cart_button btn btn-default add-to-cart"
                                                                            data-product_id="233" data-product_sku=""
                                                                            aria-label="Add &ldquo;Apple Pack&rdquo; to your cart"
                                                                            rel="nofollow"
                                                                            onClick="addToCartAjax('{{ $product->id }}','default')"
                                                                    >Add to cart
                                                                    </button>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="vc_row wpb_row vc_row-fluid vc_custom_1468848677006 vc_row-has-fill">
                <div class="wpb_column vc_column_container vc_col-sm-12">
                    <div class="vc_column-inner ">
                        <div class="wpb_wrapper">
                            <div class="bt_heading_7 home_title">
                                <div class="flipInX-1 blind text animated"
                                     style="color:#464646; font-size:40px; font-weight:400; ">
                                    <span>{{ trans('front.title_favorite_products') }}</span>
                                </div>
                                <div class="flipInX-1 blind line_1 animated"
                                     style="animation-delay: 100ms; -moz-animation-delay: 100ms; -webkit-animation-delay: 100ms;"></div>
                                <a class="btn btn-primary" href="{{ route('product.all') }}"
                                   style="float: right; padding: 10px 35px 10px 35px; border: 1px solid; z-index: 15; background-color: #63ba46; color: white; font-weight: bold;">
                                    <h3 style="color: white;">Xem tất cả</h3></a>
                            </div>
                            <div id="ult-carousel-19223484825e4375e12cf3b"
                                 class="ult-carousel-wrapper  vc_custom_1466721383271  ult_horizontal"
                                 data-gutter="15" data-rtl="false">
                                <div class="ult-carousel-12721472065e4375e12cebc ">
                                    @if (count($products_hot) ==0)
                                        @for($i=0; $i<6; $i++)
                                            <div class="ult-item-wrap" data-animation="animated fadeIn">
                                                <div class="bt-testimonial wpb_content_element"
                                                     style="position: relative">
                                                    <div class="testimonial-style-2 woocommerce">
                                                        <div class="post-220 product type-product status-publish has-post-thumbnail product_cat-music product_cat-singles first instock downloadable shipping-taxable purchasable product-type-simple">
                                                            <ul class="products">
                                                                <li class="post-220 product custom-slick type-product status-publish has-post-thumbnail product_cat-music product_cat-singles first instock downloadable shipping-taxable purchasable product-type-simple">

                                                                    <a href="{{ asset("/product/productDetail")}}"
                                                                       class="woocommerce-LoopProduct-link woocommerce-loop-product__link">

                                                                        <div class="bliccathemes-shop-thumb">
                                                                            <img width="300" height="300"
                                                                                 src="{{ asset($product->getThumb()) }}"
                                                                                 class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image"
                                                                                 alt=""
                                                                                 srcset="{{ asset($product->getThumb()) }} 300w, {{ asset($product->getThumb()) }} 150w, {{ asset($product->getThumb()) }} 100w"
                                                                                 sizes="(max-width: 300px) 100vw, 300px"/>
                                                                        </div>
                                                                        <a href="{{ asset("/product/productDetail")}}">
                                                                            <h2>Hempsapa FE</h2>
                                                                        </a>
                                                                        <div>
                                                                            <p>{{$product->description}}</p>
                                                                        </div>
                                                                        <div class="margin-t-3">
                                                                            <span>3.000.000 VND</span>
                                                                        </div>
                                                                    </a>
                                                                    <div>
                                                                        <a href="{{ asset("/cart.html")}}"
                                                                           data-quantity="1"
                                                                           class="button product_type_simple add_to_cart_button ajax_add_to_cart"
                                                                           data-product_id="220" data-product_sku=""
                                                                           aria-label="Add &ldquo;Corn Box&rdquo; to your cart"
                                                                           rel="nofollow">{{ trans('front.add_to_cart') }}</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endfor
                                    @else
                                        @foreach ($products_hot as  $key => $product)
                                            <div class="ult-item-wrap" data-animation="animated fadeIn">
                                                <div class="bt-testimonial wpb_content_element"
                                                     style="position: relative">
                                                    <div class="testimonial-style-2 woocommerce">
                                                        <div class="post-220 product type-product status-publish has-post-thumbnail product_cat-music product_cat-singles first instock downloadable shipping-taxable purchasable product-type-simple">
                                                            <ul class="products">
                                                                <li class="post-220 product custom-slick type-product status-publish has-post-thumbnail product_cat-music product_cat-singles first instock downloadable shipping-taxable purchasable product-type-simple">

                                                                    <a href="{{ $product->getUrl() }}"
                                                                       class="woocommerce-LoopProduct-link woocommerce-loop-product__link">

                                                                        <div class="bliccathemes-shop-thumb">
                                                                            <img width="300" height="300"
                                                                                 src="{{ asset($product->getThumb()) }}"
                                                                                 class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image"
                                                                                 alt=""
                                                                                 srcset="{{ asset($product->getThumb()) }} 300w, {{ asset($product->getThumb()) }} 150w, {{ asset($product->getThumb()) }} 100w"
                                                                                 sizes="(max-width: 300px) 100vw, 300px"/>
                                                                        </div>
                                                                        <a href="{{ $product->getUrl() }}">
                                                                            <h2>{{ $product->name }}</h2>
                                                                        </a>
                                                                        <div style="
                                                                        height: 43px;
                                                                        color: black;
                                                                        margin-top: 10px;
                                                                        overflow: hidden;
                                                                               text-overflow: ellipsis;
                                                                               display: -webkit-box;
                                                                               -webkit-box-orient: vertical;
                                                                               -webkit-line-clamp: 2;">
                                                                            <p>{{$product->description}}</p>
                                                                        </div>
                                                                        <div class="margin-t-3">
                                                                            <span>{!! $product->showPrice() !!}</span>
                                                                        </div>
                                                                    </a>
                                                                    <button
                                                                            data-quantity="1"
                                                                            class="button product_type_simple add_to_cart_button btn btn-default add-to-cart"
                                                                            data-product_id="233" data-product_sku=""
                                                                            aria-label="Add &ldquo;Apple Pack&rdquo; to your cart"
                                                                            rel="nofollow"
                                                                            onClick="addToCartAjax('{{ $product->id }}','default')"
                                                                    >Add to cart
                                                                    </button>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                            </div>
                            <script type="text/javascript">
                                jQuery(document).ready(function ($) {
                                    if (typeof jQuery('.ult-carousel-12721472065e4375e12cebc').slick == "function") {
                                        $('.ult-carousel-12721472065e4375e12cebc').slick({
                                            dots: true,
                                            autoplay: true,
                                            autoplaySpeed: 5000,
                                            speed: 1000,
                                            infinite: true,
                                            arrows: false,
                                            nextArrow: '<button type="button" role="button" aria-label="Next" style="color:#7aa354; font-size:26px;" class="slick-next default"><i class="fa fa-chevron-right"></i></button>',
                                            prevArrow: '<button type="button" role="button" aria-label="Previous" style="color:#7aa354; font-size:26px;" class="slick-prev default"><i class="fa fa-chevron-left"></i></button>',
                                            slidesToScroll: 4,
                                            slidesToShow: 4,
                                            swipe: true,
                                            draggable: true,
                                            touchMove: true,
                                            pauseOnHover: true,
                                            responsive: [
                                                {
                                                    breakpoint: 1025,
                                                    settings: {
                                                        slidesToShow: 2,
                                                        slidesToScroll: 1,
                                                    }
                                                },
                                                {
                                                    breakpoint: 769,
                                                    settings: {
                                                        slidesToShow: 2,
                                                        slidesToScroll: 2
                                                    }
                                                },
                                                {
                                                    breakpoint: 481,
                                                    settings: {
                                                        slidesToShow: 1,
                                                        slidesToScroll: 1
                                                    }
                                                }
                                            ],
                                            pauseOnDotsHover: true,
                                            customPaging: function (slider, i) {
                                                return '<i type="button" style=" padding: 5px;" class="fa fa-circle" data-role="none"></i>'
                                            },
                                        });
                                    }
                                });
                            </script>
                        </div>
                    </div>
                </div>
            </div>
            <div class="vc_row wpb_row vc_row-fluid vc_custom_1468848677006 vc_row-has-fill">
                <div class="wpb_column vc_column_container vc_col-sm-12">
                    <div class="vc_column-inner ">
                        <div class="wpb_wrapper">
                            <div class="bt_heading_7 home_title">
                                <div class="flipInX-1 blind text animated"
                                     style="color:#464646; font-size:40px; font-weight:400; ">
                                    <span>{{ trans('front.title_customer_reviews') }}</span>
                                </div>
                                <div class="flipInX-1 blind line_1 animated"
                                     style="animation-delay: 100ms; -moz-animation-delay: 100ms; -webkit-animation-delay: 100ms;"></div>
                            </div>
                            <div id="ult-carousel-19223484825e4375e12cf3b"
                                 class="ult-carousel-wrapper  vc_custom_1466721383271  ult_horizontal"
                                 data-gutter="15" data-rtl="false">
                                <div class="ult-carousel-12721472065e4375e12cebcd ">
                                    @for($i=0; $i<5; $i++)
                                        <div class="ult-item-wrap" data-animation="animated fadeIn">
                                            <div class="bt-testimonial wpb_content_element">
                                                <div class="testimonial-style-2">
                                                    <div class="testimonial-image"><img
                                                                src="http://bliccathemes.com/themes/farmvilla/wp-content/uploads/2016/04/testi2.png"
                                                                width="107" height="107" alt="">
                                                    </div>
                                                    <div class="testimonial-content">
                                                        <div class="testimonial-client">Scott Cambridge
                                                            <span class="testimonial-position">Local Farmer</span>
                                                        </div>
                                                        <div style="
                                                                        height: 63px;
                                                                        color: black;
                                                                        overflow: hidden;
                                                                               text-overflow: ellipsis;
                                                                               display: -webkit-box;
                                                                               -webkit-box-orient: vertical;
                                                                               -webkit-line-clamp: 3;">
                                                            <p>Our hemp is grown using natural methods, without the use
                                                                of any pesticides. Our extracts are produced without
                                                                additives, using supercritical CO2 extraction.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ult-item-wrap" data-animation="animated fadeIn">
                                            <div class="bt-testimonial wpb_content_element">
                                                <div class="testimonial-style-2">
                                                    <div class="testimonial-image"><img
                                                                src="http://bliccathemes.com/themes/farmvilla/wp-content/uploads/2016/04/testi1.png"
                                                                width="107" height="107" alt="">
                                                    </div>
                                                    <div class="testimonial-content">
                                                        <div class="testimonial-client">Scott Smith<span
                                                                    class="testimonial-position">Local Farmer</span>
                                                        </div>
                                                        <div style="
                                                                        height: 63px;
                                                                        color: black;
                                                                        overflow: hidden;
                                                                               text-overflow: ellipsis;
                                                                               display: -webkit-box;
                                                                               -webkit-box-orient: vertical;
                                                                               -webkit-line-clamp: 3;">
                                                            <p>Our hemp is grown using natural methods, without the use
                                                                of any pesticides. Our extracts are produced without
                                                                additives, using supercritical CO2 extraction.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endfor
                                </div>
                            </div>
                            <script type="text/javascript">
                                jQuery(document).ready(function ($) {
                                    if (typeof jQuery('.ult-carousel-12721472065e4375e12cebcd').slick == "function") {
                                        $('.ult-carousel-12721472065e4375e12cebcd').slick({
                                            dots: true,
                                            autoplay: true,
                                            autoplaySpeed: 5000,
                                            speed: 1000,
                                            infinite: true,
                                            arrows: true,
                                            nextArrow: '<button type="button" role="button" aria-label="Next" style="color:#7aa354; font-size:26px;" class="slick-next default"><i class="ultsl-arrow-right4"></i></button>',
                                            prevArrow: '<button type="button" role="button" aria-label="Previous" style="color:#7aa354; font-size:26px;" class="slick-prev default"><i class="ultsl-arrow-left4"></i></button>',
                                            slidesToScroll: 3,
                                            slidesToShow: 3,
                                            swipe: true,
                                            draggable: true,
                                            touchMove: true,
                                            pauseOnHover: true,
                                            responsive: [
                                                {
                                                    breakpoint: 1025,
                                                    settings: {
                                                        slidesToShow: 2,
                                                        slidesToScroll: 1,
                                                    }
                                                },
                                                {
                                                    breakpoint: 769,
                                                    settings: {
                                                        slidesToShow: 2,
                                                        slidesToScroll: 2
                                                    }
                                                },
                                                {
                                                    breakpoint: 481,
                                                    settings: {
                                                        slidesToShow: 1,
                                                        slidesToScroll: 1
                                                    }
                                                }
                                            ],
                                            pauseOnDotsHover: true,
                                            customPaging: function (slider, i) {
                                                return '<i type="button" style= "" class="ultsl-record" data-role="none"></i>';
                                            },
                                        });
                                    }
                                });
                            </script>
                        </div>
                    </div>
                </div>
            </div>
            <div data-vc-full-width="true" data-vc-full-width-init="false"
                 class="vc_row wpb_row vc_row-fluid vc_custom_1461879770277 vc_row-has-fill">
                <div class="wpb_column vc_column_container vc_col-sm-12">
                    <div class="vc_column-inner ">
                        <div class="wpb_wrapper">
                            <div class="bt_heading_7 home_title">
                                <div class="flipInX-1 blind text animated"
                                     style="color:#464646; font-size:40px; font-weight:400; ">
                                    <span>{{ trans('front.title_post') }}</span>
                                </div>
                                <div class="flipInX-1 blind line_1 animated"
                                     style="animation-delay: 100ms; -moz-animation-delay: 100ms; -webkit-animation-delay: 100ms;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div data-vc-full-width="true" data-vc-full-width-init="false"
                 class="vc_row wpb_row vc_row-fluid vc_custom_1461881001133 vc_row-has-fill">
                <div class="wpb_column vc_column_container vc_col-sm-12">
                    <div class="vc_column-inner ">
                        <div class="wpb_wrapper">
                            <div class="bt-recent-blog-container">

                                <ul class="bt-recent-blog-widget">
                                    @if (count($news) ==0)
                                        @for($i=0; $i<3; $i++)
                                            <li class="bt_recent_blog-style1 post-163 post type-post status-publish format-standard has-post-thumbnail hentry category-uncategorized"
                                                style="text-align: center">
                                                <div class="bt_thumbnail">
                                                    <a class="prettyPhoto" data-rel="prettyPhoto"
                                                       href="http://bliccathemes.com/themes/farmvilla/wp-content/uploads/2016/04/blog2-1.png">
                                                        <img width="770" height="490"
                                                             src="http://bliccathemes.com/themes/farmvilla/wp-content/uploads/2016/04/blog2-1-770x490.png"
                                                             class="attachment-farmvilla_organic_theme-blog_widget1 size-farmvilla_organic_theme-blog_widget1 wp-post-image"
                                                             alt=""/></a></div>
                                                <div class="bt_content">
                                                    <h3 class="blog-title">
                                                        HempSapa
                                                    </h3>
                                                    <div class="blog-content">
                                                        <p>Aliquam ullamcorper finibus lorem ut auctor. Aliquam sed
                                                            aliquet eros. Vivamus maximus dignissim mi et accumsan
                                                            finibus lorem.</p></div>
                                                </div>
                                                <div class="bt_blog_widget_footer">
                                                    <a class="" href="{{ asset("/news/hempsapa.html")}}">
                                                        <button type="button" id="ubtn-9553"
                                                                class="ubtn ult-adjust-bottom-margin ult-responsive ubtn-small ubtn-top-bg  none  ubtn-left   tooltip-5e4375e10547d"
                                                                data-hover="#ffffff" data-border-color="#7aa354"
                                                                data-bg="" data-hover-bg="#7aa354"
                                                                data-border-hover="#7aa354" data-shadow-hover=""
                                                                data-shadow-click="none" data-shadow=""
                                                                data-shd-shadow="" data-ultimate-target='#ubtn-9553'
                                                                data-responsive-json-new='{"font-size":"desktop:16px;","line-height":""}'
                                                                data-vc-full-width="60%"
                                                                style="width: 60%; justify-items: center; font-family: Roboto; font-weight:500;border-radius:0px;border-width:2px;border-color:#7aa354;border-style:solid;color: #7aa354;">
                                                                <span class="ubtn-data ubtn-icon">
                                                                    <i class="none"
                                                                       style="font-size:16px;color:#ffffff;"></i>
                                                                </span>
                                                            <span class="ubtn-hover"
                                                                  style="background-color:#7aa354"></span>
                                                            <span class="ubtn-data ubtn-text "
                                                                  style="font-weight: bold;">{{ trans('front.see_more') }}</span>
                                                        </button>
                                                    </a>
                                                </div>
                                            </li>
                                        @endfor
                                    @else
                                        @foreach ($news as $newsDetail)
                                            <li class="bt_recent_blog-style1 post-163 post type-post status-publish format-standard has-post-thumbnail hentry category-uncategorized"
                                                style="text-align: center">
                                                <div class="bt_thumbnail">
                                                    <a class="prettyPhoto" data-rel="prettyPhoto"
                                                           href="{{ $newsDetail->getUrl() }}">
                                                        <img width="770" height="490"
                                                             src="{{ asset($newsDetail->getThumb()) }}"
                                                             class="attachment-farmvilla_organic_theme-blog_widget1 size-farmvilla_organic_theme-blog_widget1 wp-post-image"
                                                             alt=""/></a></div>
                                                <div class="bt_content">
                                                    <h3 class="blog-title">
                                                        {{ $newsDetail->title }}
                                                    </h3>
                                                    <div class="blog-content" style=" height: 63px; overflow: hidden;
                                                                               text-overflow: ellipsis;
                                                                               display: -webkit-box;
                                                                               -webkit-box-orient: vertical;
                                                                               -webkit-line-clamp: 3;">
                                                        <p>{{ $newsDetail->description }}</p>
                                                    </div>
                                                </div>
                                                <div class="bt_blog_widget_footer">
                                                    <a class="" href="{{ $newsDetail->getUrl() }}">
                                                        <button type="button" id="ubtn-9553"
                                                                class="ubtn ult-adjust-bottom-margin ult-responsive ubtn-small ubtn-top-bg  none  ubtn-left   tooltip-5e4375e10547d"
                                                                data-hover="#ffffff" data-border-color="#7aa354"
                                                                data-bg="" data-hover-bg="#7aa354"
                                                                data-border-hover="#7aa354" data-shadow-hover=""
                                                                data-shadow-click="none" data-shadow=""
                                                                data-shd-shadow="" data-ultimate-target='#ubtn-9553'
                                                                data-responsive-json-new='{"font-size":"desktop:16px;","line-height":""}'
                                                                data-vc-full-width="60%"
                                                                style="width: 60%; justify-items: center; font-family: Roboto; font-weight:500;border-radius:0px;border-width:2px;border-color:#7aa354;border-style:solid;color: #7aa354;">
                                                                <span class="ubtn-data ubtn-icon">
                                                                    <i class="none"
                                                                       style="font-size:16px;color:#ffffff;"></i>
                                                                </span>
                                                            <span class="ubtn-hover"
                                                                  style="background-color:#7aa354"></span>
                                                            <span class="ubtn-data ubtn-text "
                                                                  style="font-weight: bold;">{{ trans('front.see_more') }}</span>
                                                        </button>
                                                    </a>
                                                </div>
                                            </li>
                                        @endforeach
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('styles')
@endpush
@push('scripts')
@endpush

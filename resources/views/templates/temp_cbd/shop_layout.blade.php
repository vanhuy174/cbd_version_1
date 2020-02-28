@if (sc_config('SITE_STATUS') == 'off')
  @include($templatePath . '.maintenance')
  @php
    exit();
  @endphp
@endif

<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{{ $description??sc_store('description') }}">
    <meta name="keyword" content="{{ $keyword??sc_store('keyword') }}">
    <title>CBD Vietnam</title>
    <meta property="og:image" content="{{ !empty($og_image)?asset($og_image):asset('images/org.jpg') }}" />
    <meta property="og:url" content="{{ \Request::fullUrl() }}" />
    <meta property="og:type" content="Website" />
    <meta property="og:title" content="{{ $title??sc_store('title') }}" />
    <meta property="og:description" content="{{ $description??sc_store('description') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
        @font-face {
            font-family: "utm-avo";
            src: url("{{ asset($templateFile.'/fonts/utm-avo.ttf')}}");

        }
        @font-face {
            font-family: "utm-avobold";
            src: url("{{ asset($templateFile.'/fonts/utm-avobold.ttf')}}");

        }
        *{
            /*font-family: "utm-avo";*/
        }
        h1,h2,h3,h4,h5,h6{
            font-family: "utm-avo" !important;
        }
        .home_title{
            font-family: "utm-avobold" !important;
        }

    </style>

<!--Module meta -->
  @isset ($blocksContent['meta'])
      @foreach ( $blocksContent['meta']  as $layout)
        @php
          $arrPage = explode(',', $layout->page)
        @endphp
        @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
          @if ($layout->type =='html')
            {!! $layout->text !!}
          @endif
        @endif
      @endforeach
  @endisset
<!--//Module meta -->

<!-- css default for item s-cart -->
@include('common.css')
<!--//end css defaut -->

    <link href="{{ asset($templateFile.'/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{ asset($templateFile.'/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{ asset($templateFile.'/css/prettyPhoto.css')}}" rel="stylesheet">
    <link href="{{ asset($templateFile.'/css/animate.css')}}" rel="stylesheet">
    <link href="{{ asset($templateFile.'/css/main.css')}}" rel="stylesheet">
    <link href="{{ asset($templateFile.'/css/responsive.css')}}" rel="stylesheet">


{{--    css-custum--}}
    <link href="//db.onlinewebfonts.com/c/0e979bd4a3c1c6ac788ed57ac569667f?family=revicons" rel="stylesheet" type="text/css"/>

    <link href="{{ asset($templateFile.'/css/responsive.css')}}" rel="stylesheet">
{{--    <link rel='stylesheet' id='contact-form-7-css'  href='{{ asset($templateFile.'/css/cbd_css//styles.css?ver=5.0.1')}}'  type='text/css' media='all' />--}}
    <link rel='stylesheet' id='rs-plugin-settings-css'  href='{{ asset($templateFile.'/css/cbd_css/settings.css?ver=5.4.7')}}'  type='text/css' media='all' />
{{--    <style id='rs-plugin-settings-inline-css' type='text/css'>--}}
{{--        #rs-demo-id {}--}}
{{--    </style>--}}
{{--    <link rel='stylesheet' id='woocommerce-layout-css'  href='{{ asset($templateFile.'/css/cbd_css/woocommerce-layout.css?ver=3.3.5')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='woocommerce-smallscreen-css'  href='{{ asset($templateFile.'/css/cbd_css/woocommerce-smallscreen.css?ver=3.3.5')}}'  type='text/css' media='only screen and (max-width: 768px)' />--}}
    <link rel='stylesheet' id='woocommerce-general-css'  href='{{ asset($templateFile.'/css/cbd_css/woocommerce.css?ver=3.3.5')}}'  type='text/css' media='all' />
    <link rel='stylesheet' href='{{ asset($templateFile.'/css/cbd_css/custom_css.css')}}'  type='text/css' media='all' />
{{--    <link rel='stylesheet' id='woocommerce_prettyPhoto_css-css'  href='{{ asset($templateFile.'/css/cbd_css/prettyPhoto.css?ver=3.3.5')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='jquery-selectBox-css'  href='{{ asset($templateFile.'/css/cbd_css/jquery.selectBox.css?ver=1.2.0')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='yith-wcwl-main-css'  href='{{ asset($templateFile.'/css/cbd_css/style.css?ver=2.2.1')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='yith-wcwl-font-awesome-css'  href='{{ asset($templateFile.'/css/cbd_css/font-awesome.min.css?ver=4.7.0')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='bootstrap-css'  href='{{ asset($templateFile.'/css/cbd_css/bootstrap.min.css?ver=4.9.13')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='font-awesome-css'  href='{{ asset($templateFile.'/css/cbd_css/font-awesome.min.css?ver=5.4.5')}}'  type='text/css' media='all' />--}}
{{--    <style id='font-awesome-inline-css' type='text/css'>--}}
{{--        [data-font="FontAwesome"]:before {font-family: 'FontAwesome' !important;content: attr(data-icon) !important;speak: none !important;font-weight: normal !important;font-variant: normal !important;text-transform: none !important;line-height: 1 !important;font-style: normal !important;-webkit-font-smoothing: antialiased !important;-moz-osx-font-smoothing: grayscale !important;}--}}
{{--    </style>--}}
{{--    <link rel='stylesheet' id='prettyPhoto-css'  href='{{ asset($templateFile.'/css/cbd_css/prettyPhoto.css?ver=4.9.13')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='farmvilla-organic-theme-main-css-css'  href='{{ asset($templateFile.'/css/cbd_css/main.css?ver=4.9.13')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='farmvilla-organic-theme-main-animate-css'  href='{{ asset($templateFile.'/css/cbd_css/animate.css?ver=4.9.13')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='bliccaThemes-fonts-css'  href='//fonts.googleapis.com/css?family=Roboto+Slab%3A400%2C100%2C300%2C700%26subset%3Dlatin%2Clatin-ext%7CRoboto%3A400%2C100%2C100italic%2C300%2C300italic%2C400italic%2C500%2C500italic%2C700%2C700italic%2C900%2C900italic%26subset%3Dlatin%2Clatin-ext&#038;ver=1.0.0' type='text/css' media='all' />--}}
    <link rel='stylesheet' id='js_composer_front-css'  href='{{ asset($templateFile.'/css/cbd_css/js_composer.min.css?ver=5.4.5')}}'  type='text/css' media='all' />
{{--    <link rel='stylesheet' id='farmvilla-organic-theme-style-css-css'  href='{{ asset($templateFile.'/css/cbd_css/style.css?ver=4.9.13')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='bsf-Defaults-css'  href='{{ asset($templateFile.'/css/cbd_css/Defaults.css?ver=4.9.13')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='ultimate-google-fonts-css'  href='https://fonts.googleapis.com/css?family=Roboto:regular,500' type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='ultimate-style-css'  href='{{ asset($templateFile.'/css/cbd_css/style.min.css?ver=3.16.21')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='ult-slick-css'  href='{{ asset($templateFile.'/css/cbd_css/slick.min.css?ver=3.16.21')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='ult-icons-css'  href='{{ asset($templateFile.'/css/cbd_css/icons.css?ver=3.16.21')}}'  type='text/css' media='all' />--}}
{{--    <link rel='stylesheet' id='ultimate-animate-css'  href='{{ asset($templateFile.'/css/cbd_css/animate.min.css?ver=3.16.21')}}'  type='text/css' media='all' />--}}
    <link rel='stylesheet' id='ult-btn-css'  href='{{ asset($templateFile.'/css/cbd_css/advanced-buttons.min.css?ver=3.16.21')}}'  type='text/css' media='all' />
    <link rel='stylesheet' id='ult-btn-css'  href='{{ asset($templateFile.'/css/cbd_css/lightslider.css')}}'  type='text/css' media='all' />

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

{{--    JS custom--}}
    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery.js?ver=1.12.4')}}"></script>
{{--    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery-migrate.min.js?ver=1.4.1')}}"></script>--}}
{{--    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery.themepunch.tools.min.js?ver=5.4.7')}}"></script>--}}
{{--    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery.themepunch.revolution.min.js?ver=5.4.7')}}"></script>--}}
{{--    <script type='text/javascript'>--}}
{{--        /* <![CDATA[ */--}}
{{--        var wc_add_to_cart_params = {"ajax_url":"\/themes\/farmvilla\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/themes\/farmvilla\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View cart","cart_url":"http:\/\/bliccathemes.com\/themes\/farmvilla\/cart\/","is_cart":"","cart_redirect_after_add":"yes"};--}}
{{--        /* ]]> */--}}
{{--    </script>--}}

{{--    <script type="text/javascript" src="{{ asset($templateFile.'/js/cbd_js/revolution.extension.slideanims.min.js')}}"></script>--}}
{{--    <script type="text/javascript" src="{{ asset($templateFile.'/js/cbd_js/revolution.extension.layeranimation.min.js')}}"></script>--}}
{{--    <script type="text/javascript" src="{{ asset($templateFile.'/js/cbd_js/revolution.extension.navigation.min.js')}}"></script>--}}
{{--    <script type="text/javascript" src="{{ asset($templateFile.'/js/cbd_js/revolution.extension.parallax.min.js')}}"></script>--}}
{{--    <script type="text/javascript" src="{{ asset($templateFile.'/js/cbd_js/revolution.extension.actions.min.js')}}"></script>--}}

{{--    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/add-to-cart.min.js?ver=3.3.5')}}"></script>--}}
{{--    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/woocommerce-add-to-cart.js?ver=5.4.5')}}"></script>--}}
{{--    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/pace.min.js?ver=4.9.13')}}"></script>--}}
{{--    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/ultimate-params.min.js?ver=3.16.21')}}"></script>--}}
{{--    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/custom.min.js?ver=3.16.21')}}"></script>--}}
    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/slick.min.js?ver=3.16.21')}}"></script>
{{--    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery-appear.min.js?ver=3.16.21')}}"></script>--}}
{{--    <script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/slick-custom.min.js?ver=3.16.21')}}"></script>--}}
{{--    End JS custom--}}

{{--    <link rel="profile" href="http://gmpg.org/xfn/11"/>--}}
{{--    <link rel="pingback" href="http://bliccathemes.com/themes/farmvilla/xmlrpc.php"/>--}}
{{--    <script type="text/javascript">document.documentElement.className = document.documentElement.className + ' yes-js js_active js'</script>--}}
{{--    <title>Farmvilla &#8211; WordPress Theme &#8211; Just another WordPress site</title>--}}
{{--    <style>--}}

{{--    </style>--}}
{{--    <link rel='dns-prefetch' href='//fonts.googleapis.com'/>--}}
{{--    <link rel='dns-prefetch' href='//s.w.org'/>--}}
{{--    <link rel="alternate" type="application/rss+xml" title="Farmvilla - WordPress Theme &raquo; Feed"--}}
{{--          href="http://bliccathemes.com/themes/farmvilla/feed/"/>--}}
{{--    <link rel="alternate" type="application/rss+xml" title="Farmvilla - WordPress Theme &raquo; Comments Feed"--}}
{{--          href="http://bliccathemes.com/themes/farmvilla/comments/feed/"/>--}}
{{--    <script type="text/javascript">--}}
{{--        window._wpemojiSettings = {--}}
{{--            "baseUrl": "https:\/\/s.w.org\/images\/core\/emoji\/11\/72x72\/",--}}
{{--            "ext": ".png",--}}
{{--            "svgUrl": "https:\/\/s.w.org\/images\/core\/emoji\/11\/svg\/",--}}
{{--            "svgExt": ".svg",--}}
{{--            "source": {"concatemoji": "http:\/\/bliccathemes.com\/themes\/farmvilla\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.13"}--}}
{{--        };--}}
{{--        !function (a, b, c) {--}}
{{--            function d(a, b) {--}}
{{--                var c = String.fromCharCode;--}}
{{--                l.clearRect(0, 0, k.width, k.height), l.fillText(c.apply(this, a), 0, 0);--}}
{{--                var d = k.toDataURL();--}}
{{--                l.clearRect(0, 0, k.width, k.height), l.fillText(c.apply(this, b), 0, 0);--}}
{{--                var e = k.toDataURL();--}}
{{--                return d === e--}}
{{--            }--}}

{{--            function e(a) {--}}
{{--                var b;--}}
{{--                if (!l || !l.fillText) return !1;--}}
{{--                switch (l.textBaseline = "top", l.font = "600 32px Arial", a) {--}}
{{--                    case"flag":--}}
{{--                        return !(b = d([55356, 56826, 55356, 56819], [55356, 56826, 8203, 55356, 56819])) && (b = d([55356, 57332, 56128, 56423, 56128, 56418, 56128, 56421, 56128, 56430, 56128, 56423, 56128, 56447], [55356, 57332, 8203, 56128, 56423, 8203, 56128, 56418, 8203, 56128, 56421, 8203, 56128, 56430, 8203, 56128, 56423, 8203, 56128, 56447]), !b);--}}
{{--                    case"emoji":--}}
{{--                        return b = d([55358, 56760, 9792, 65039], [55358, 56760, 8203, 9792, 65039]), !b--}}
{{--                }--}}
{{--                return !1--}}
{{--            }--}}

{{--            function f(a) {--}}
{{--                var c = b.createElement("script");--}}
{{--                c.src = a, c.defer = c.type = "text/javascript", b.getElementsByTagName("head")[0].appendChild(c)--}}
{{--            }--}}

{{--            var g, h, i, j, k = b.createElement("canvas"), l = k.getContext && k.getContext("2d");--}}
{{--            for (j = Array("flag", "emoji"), c.supports = {--}}
{{--                everything: !0,--}}
{{--                everythingExceptFlag: !0--}}
{{--            }, i = 0; i < j.length; i++) c.supports[j[i]] = e(j[i]), c.supports.everything = c.supports.everything && c.supports[j[i]], "flag" !== j[i] && (c.supports.everythingExceptFlag = c.supports.everythingExceptFlag && c.supports[j[i]]);--}}
{{--            c.supports.everythingExceptFlag = c.supports.everythingExceptFlag && !c.supports.flag, c.DOMReady = !1, c.readyCallback = function () {--}}
{{--                c.DOMReady = !0--}}
{{--            }, c.supports.everything || (h = function () {--}}
{{--                c.readyCallback()--}}
{{--            }, b.addEventListener ? (b.addEventListener("DOMContentLoaded", h, !1), a.addEventListener("load", h, !1)) : (a.attachEvent("onload", h), b.attachEvent("onreadystatechange", function () {--}}
{{--                "complete" === b.readyState && c.readyCallback()--}}
{{--            })), g = c.source || {}, g.concatemoji ? f(g.concatemoji) : g.wpemoji && g.twemoji && (f(g.twemoji), f(g.wpemoji)))--}}
{{--        }(window, document, window._wpemojiSettings);--}}
{{--    </script>--}}
{{--    <style type="text/css">--}}
{{--        img.wp-smiley,--}}
{{--        img.emoji {--}}
{{--            display: inline !important;--}}
{{--            border: none !important;--}}
{{--            box-shadow: none !important;--}}
{{--            height: 1em !important;--}}
{{--            width: 1em !important;--}}
{{--            margin: 0 .07em !important;--}}
{{--            vertical-align: -0.1em !important;--}}
{{--            background: none !important;--}}
{{--            padding: 0 !important;--}}
{{--        }--}}
{{--    </style>--}}

    {{-- style co the khong can --}}
{{--    <link rel='https://api.w.org/' href='http://bliccathemes.com/themes/farmvilla/wp-json/'/>--}}
{{--    <link rel="EditURI" type="application/rsd+xml" title="RSD"--}}
{{--          href="http://bliccathemes.com/themes/farmvilla/xmlrpc.php?rsd"/>--}}
{{--    <link rel="wlwmanifest" type="application/wlwmanifest+xml"--}}
{{--          href="http://bliccathemes.com/themes/farmvilla/wp-includes/wlwmanifest.xml"/>--}}
{{--    <meta name="generator" content="WordPress 4.9.13"/>--}}
{{--    <meta name="generator" content="WooCommerce 3.3.5"/>--}}
{{--    <link rel="canonical" href="http://bliccathemes.com/themes/farmvilla/"/>--}}
{{--    <link rel='shortlink' href='http://bliccathemes.com/themes/farmvilla/'/>--}}
{{--    <link rel="alternate" type="application/json+oembed"--}}
{{--          href="http://bliccathemes.com/themes/farmvilla/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fbliccathemes.com%2Fthemes%2Ffarmvilla%2F"/>--}}
{{--    <link rel="alternate" type="text/xml+oembed"--}}
{{--          href="http://bliccathemes.com/themes/farmvilla/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fbliccathemes.com%2Fthemes%2Ffarmvilla%2F&#038;format=xml"/>--}}
{{--    <style id='farmvilla-asset-main' type='text/css'>--}}
{{--        </style>--}}
{{--    <noscript>--}}
{{--        <style>.woocommerce-product-gallery {--}}
{{--                opacity: 1 !important;--}}
{{--            }</style>--}}
{{--    </noscript>--}}
{{--    <style type="text/css">.recentcomments a {--}}
{{--            display: inline !important;--}}
{{--            padding: 0 !important;--}}
{{--            margin: 0 !important;--}}
{{--        }</style>--}}
{{--    <meta name="generator" content="Powered by WPBakery Page Builder - drag and drop page builder for WordPress."/>--}}
{{--    <!--[if lte IE 9]>--}}
{{--    <link rel="stylesheet" type="text/css" href="css/vc_lte_ie9.min.css" media="screen"><![endif]-->--}}
{{--    <meta name="generator"--}}
{{--          content="Powered by Slider Revolution 5.4.7 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface."/>--}}
    <script type="text/javascript">
        function setREVStartSize(e) {
            document.addEventListener("DOMContentLoaded", function () {
                try {
                    e.c = jQuery(e.c);
                    var i = jQuery(window).width(), t = 9999, r = 0, n = 0, l = 0, f = 0, s = 0, h = 0;
                    if (e.responsiveLevels && (jQuery.each(e.responsiveLevels, function (e, f) {
                        f > i && (t = r = f, l = e), i > f && f > r && (r = f, n = e)
                    }), t > r && (l = n)), f = e.gridheight[l] || e.gridheight[0] || e.gridheight, s = e.gridwidth[l] || e.gridwidth[0] || e.gridwidth, h = i / s, h = h > 1 ? 1 : h, f = Math.round(h * f), "fullscreen" == e.sliderLayout) {
                        var u = (e.c.width(), jQuery(window).height());
                        if (void 0 != e.fullScreenOffsetContainer) {
                            var c = e.fullScreenOffsetContainer.split(",");
                            if (c) jQuery.each(c, function (e, i) {
                                u = jQuery(i).length > 0 ? u - jQuery(i).outerHeight(!0) : u
                            }), e.fullScreenOffset.split("%").length > 1 && void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 ? u -= jQuery(window).height() * parseInt(e.fullScreenOffset, 0) / 100 : void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 && (u -= parseInt(e.fullScreenOffset, 0))
                        }
                        f = u
                    } else void 0 != e.minHeight && f < e.minHeight && (f = e.minHeight);
                    e.c.closest(".rev_slider_wrapper").css({height: f})
                } catch (d) {
                    console.log("Failure at Presize of Slider:" + d)
                }
            });
        };
    </script>
    <style type="text/css" title="dynamic-css" class="options-output">
        </style>
    <style type="text/css" data-type="vc_shortcodes-custom-css">
        </style>
    <noscript>
        <style type="text/css"> .wpb_animate_when_almost_visible {
                opacity: 1;
            }</style>
    </noscript>

{{-- / css-custom --}}
    

    <!--[if lt IE 9]>
    <script src="{{ asset($templateFile.'/js/html5shiv.js')}}"></script>
    <script src="{{ asset($templateFile.'/js/respond.min.js')}}"></script>
    <![endif]-->
    <link rel="shortcut icon" href="{{ asset($templateFile.'/images/ico/favicon.ico')}}">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{{ asset($templateFile.'/images/ico/apple-touch-icon-144-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{{ asset($templateFile.'/images/ico/apple-touch-icon-114-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{{ asset($templateFile.'/images/ico/apple-touch-icon-72-precomposed.png')}}">
    <link rel="apple-touch-icon-precomposed" href="{{ asset($templateFile.'/images/ico/apple-touch-icon-57-precomposed.png')}}">



  <!--Module header -->
  @isset ($blocksContent['header'])
      @foreach ( $blocksContent['header']  as $layout)
      @php
        $arrPage = explode(',', $layout->page)
      @endphp
        @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
          @if ($layout->type =='html')
            {!! $layout->text !!}
          @endif
        @endif
      @endforeach
  @endisset
<!--//Module header -->

</head>
<!--//head-->
<body>


@include($templatePath.'.header')

<!--Module banner -->
  @isset ($blocksContent['banner_top'])
      @foreach ( $blocksContent['banner_top']  as $layout)
      @php
        $arrPage = explode(',', $layout->page)
      @endphp
        @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
          @if ($layout->type =='html')
            {!! $layout->text !!}
          @elseif($layout->type =='view')
            @if (view()->exists('block.'.$layout->text))
             @include('block.'.$layout->text)
            @endif
          @elseif($layout->type =='module')
            {!! sc_block_render($layout->text) !!}
          @endif
        @endif
      @endforeach
  @endisset
<!--//Module banner -->


<!--Module top -->
  @isset ($blocksContent['top'])
      @foreach ( $blocksContent['top']  as $layout)
        @php
          $arrPage = explode(',', $layout->page)
        @endphp
        @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
          @if ($layout->type =='html')
            {!! $layout->text !!}
          @elseif($layout->type =='view')
            @if (view()->exists('block.'.$layout->text))
             @include('block.'.$layout->text)
            @endif
          @elseif($layout->type =='module')
            {!! sc_block_render($layout->text) !!}
          @endif
        @endif
      @endforeach
  @endisset
<!--//Module top -->


  <section>
{{--      <div class="container">--}}
{{--          <div class="row">--}}
{{--              <div class="col-sm-12" id="breadcrumb">--}}
          <!--breadcrumb-->
          @yield('breadcrumb')
          <!--//breadcrumb-->

          <!--fillter-->
          @yield('filter')
          <!--//fillter-->
{{--        </div>--}}

        <!--Notice -->
        @include($templatePath.'.notice')
        <!--//Notice -->

        <!--body-->
        @section('main')
          @include($templatePath.'.left')
          @include($templatePath.'.center')
          @include($templatePath.'.right')
        @show
        <!--//body-->
{{--          </div>--}}
{{--      </div>--}}

  </section>

@include($templatePath.'.footer')

<script src="{{ asset($templateFile.'/js/jquery.js')}}"></script>
<script src="{{ asset($templateFile.'/js/jquery-ui.min.js')}}"></script>
<script src="{{ asset($templateFile.'/js/bootstrap.min.js')}}"></script>
<script src="{{ asset($templateFile.'/js/jquery.scrollUp.min.js')}}"></script>
<script src="{{ asset($templateFile.'/js/jquery.prettyPhoto.js')}}"></script>
<script src="{{ asset($templateFile.'/js/main.js')}}"></script>
<script src="{{ asset($templateFile.'/js/cbd_js/lightslider.js')}}"></script>
{{--    JS custom--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery.js?ver=1.12.4')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery-migrate.min.js?ver=1.4.1')}}"></script>--}}
<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery.themepunch.tools.min.js?ver=5.4.7')}}"></script>
<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery.themepunch.revolution.min.js?ver=5.4.7')}}"></script>
{{--<script type='text/javascript'>--}}
{{--    /* <![CDATA[ */--}}
{{--    var wc_add_to_cart_params = {"ajax_url":"\/themes\/farmvilla\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/themes\/farmvilla\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View cart","cart_url":"http:\/\/bliccathemes.com\/themes\/farmvilla\/cart\/","is_cart":"","cart_redirect_after_add":"yes"};--}}
{{--    /* ]]> */--}}
{{--</script>--}}

{{--<script type="text/javascript" src="{{ asset($templateFile.'/js/cbd_js/revolution.extension.slideanims.min.js')}}"></script>--}}
{{--<script type="text/javascript" src="{{ asset($templateFile.'/js/cbd_js/revolution.extension.layeranimation.min.js')}}"></script>--}}
{{--<script type="text/javascript" src="{{ asset($templateFile.'/js/cbd_js/revolution.extension.navigation.min.js')}}"></script>--}}
{{--<script type="text/javascript" src="{{ asset($templateFile.'/js/cbd_js/revolution.extension.parallax.min.js')}}"></script>--}}
{{--<script type="text/javascript" src="{{ asset($templateFile.'/js/cbd_js/revolution.extension.actions.min.js')}}"></script>--}}

{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/add-to-cart.min.js?ver=3.3.5')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/woocommerce-add-to-cart.js?ver=5.4.5')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/pace.min.js?ver=4.9.13')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/ultimate-params.min.js?ver=3.16.21')}}"></script>--}}
<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/custom.min.js?ver=3.16.21')}}"></script>
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/slick.min.js?ver=3.16.21')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery-appear.min.js?ver=3.16.21')}}"></script>--}}
<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/slick-custom.min.js?ver=3.16.21')}}"></script>

{{--    End JS custom--}}

{{--<script>(function() {function addEventListener(element,event,handler) {--}}
{{--        if(element.addEventListener) {--}}
{{--            element.addEventListener(event,handler, false);--}}
{{--        } else if(element.attachEvent){--}}
{{--            element.attachEvent('on'+event,handler);--}}
{{--        }--}}
{{--    }function maybePrefixUrlField() {--}}
{{--        if(this.value.trim() !== '' && this.value.indexOf('http') !== 0) {--}}
{{--            this.value = "http://" + this.value;--}}
{{--        }--}}
{{--    }--}}

{{--        var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');--}}
{{--        if( urlFields && urlFields.length > 0 ) {--}}
{{--            for( var j=0; j < urlFields.length; j++ ) {--}}
{{--                addEventListener(urlFields[j],'blur',maybePrefixUrlField);--}}
{{--            }--}}
{{--        }/* test if browser supports date fields */--}}
{{--        var testInput = document.createElement('input');--}}
{{--        testInput.setAttribute('type', 'date');--}}
{{--        if( testInput.type !== 'date') {--}}

{{--            /* add placeholder & pattern to all date fields */--}}
{{--            var dateFields = document.querySelectorAll('.mc4wp-form input[type="date"]');--}}
{{--            for(var i=0; i<dateFields.length; i++) {--}}
{{--                if(!dateFields[i].placeholder) {--}}
{{--                    dateFields[i].placeholder = 'YYYY-MM-DD';--}}
{{--                }--}}
{{--                if(!dateFields[i].pattern) {--}}
{{--                    dateFields[i].pattern = '[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])';--}}
{{--                }--}}
{{--            }--}}
{{--        }--}}

{{--    })();</script><link rel='stylesheet' property='stylesheet' id='rs-icon-set-fa-icon-css'  href="{{ asset($templateFile.'/css/cbd_css/font-awesome.css')}}" type='text/css' media='all' />			<script type="text/javascript">--}}
{{--    function revslider_showDoubleJqueryError(sliderID) {--}}
{{--        var errorMessage = "Revolution Slider Error: You have some jquery.js library include that comes after the revolution files js include.";--}}
{{--        errorMessage += "<br> This includes make eliminates the revolution slider libraries, and make it not work.";--}}
{{--        errorMessage += "<br><br> To fix it you can:<br>&nbsp;&nbsp;&nbsp; 1. In the Slider Settings -> Troubleshooting set option:  <strong><b>Put JS Includes To Body</b></strong> option to true.";--}}
{{--        errorMessage += "<br>&nbsp;&nbsp;&nbsp; 2. Find the double jquery.js include and remove it.";--}}
{{--        errorMessage = "<span style='font-size:16px;color:#BC0C06;'>" + errorMessage + "</span>";--}}
{{--        jQuery(sliderID).show().html(errorMessage);--}}
{{--    }--}}
{{--</script>--}}
{{--<link rel='stylesheet' id='ult-background-style-css'  href="{{ asset($templateFile.'/css/cbd_css/background-style.min.css?ver=3.16.21')}}" type='text/css' media='all' />--}}
{{--<link rel='stylesheet' id='prettyphoto-css'  href="{{ asset($templateFile.'/css/cbd_css/prettyPhoto.min.css?ver=5.4.5')}}" type='text/css' media='all' />--}}
{{--<link rel='stylesheet' id='vc_pageable_owl-carousel-css-css'  href="{{ asset($templateFile.'/css/cbd_css/owl.min.css?ver=5.4.5')}}" type='text/css' media='all' />--}}
{{--<link rel='stylesheet' id='animate-css-css'  href="{{ asset($templateFile.'/css/cbd_css/animate.min.css?ver=5.4.5')}}" type='text/css' media='all' />--}}
{{--<script type='text/javascript'>--}}
{{--    /* <![CDATA[ */--}}
{{--    var wpcf7 = {"apiSettings":{"root":"http:\/\/bliccathemes.com\/themes\/farmvilla\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"},"recaptcha":{"messages":{"empty":"Please verify that you are not a robot."}}};--}}
{{--    /* ]]> */--}}
{{--</script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/scripts.js?ver=5.0.1')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery.blockUI.min.js?ver=2.70')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/js.cookie.min.js?ver=2.1.4')}}"></script>--}}
{{--<script type='text/javascript'>--}}
{{--    /* <![CDATA[ */--}}
{{--    var woocommerce_params = {"ajax_url":"\/themes\/farmvilla\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/themes\/farmvilla\/?wc-ajax=%%endpoint%%"};--}}
{{--    /* ]]> */--}}
{{--</script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/woocommerce.min.js?ver=3.3.5')}}"></script>--}}
{{--<script type='text/javascript'>--}}
{{--    /* <![CDATA[ */--}}
{{--    var wc_cart_fragments_params = {"ajax_url":"\/themes\/farmvilla\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/themes\/farmvilla\/?wc-ajax=%%endpoint%%","cart_hash_key":"wc_cart_hash_d7e16d48f82df06d1f59a93441d9490d","fragment_name":"wc_fragments_d7e16d48f82df06d1f59a93441d9490d"};--}}
{{--    /* ]]> */--}}
{{--</script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/cart-fragments.min.js?ver=3.3.5')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery.prettyPhoto.min.js?ver=3.1.6')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery.selectBox.min.js?ver=1.2.0')}}"></script>--}}
{{--<script type='text/javascript'>--}}
{{--    /* <![CDATA[ */--}}
{{--    var yith_wcwl_l10n = {"ajax_url":"\/themes\/farmvilla\/wp-admin\/admin-ajax.php","redirect_to_cart":"no","multi_wishlist":"","hide_add_button":"1","is_user_logged_in":"","ajax_loader_url":"http://bliccathemes.com/themes/farmvilla/http:\/\/bliccathemes.com\/themes\/farmvilla\/wp-content\/plugins\/yith-woocommerce-wishlist\/assets\/images\/ajax-loader.gif","remove_from_wishlist_after_add_to_cart":"yes","labels":{"cookie_disabled":"We are sorry, but this feature is available only if cookies are enabled on your browser.","added_to_cart_message":"<div class=\"woocommerce-message\">Product correctly added to cart<\/div>"},"actions":{"add_to_wishlist_action":"add_to_wishlist","remove_from_wishlist_action":"remove_from_wishlist","move_to_another_wishlist_action":"move_to_another_wishlsit","reload_wishlist_and_adding_elem_action":"reload_wishlist_and_adding_elem"}};--}}
{{--    /* ]]> */--}}
{{--</script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery.yith-wcwl.js?ver=2.2.1')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/comment-reply.min.js?ver=4.9.13')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/bootstrap.min.js?ver=4.9.13')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/imagesloaded.pkgd.min.js?ver=4.9.13')}}"></script>--}}
<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/plugins.js?ver=4.9.13')}}"></script>
<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/main.js?ver=4.9.13')}}"></script>
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/wp-embed.min.js?ver=4.9.13')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/js_composer_front.min.js?ver=5.4.5')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/skrollr.min.js?ver=5.4.5')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/ultimate_bg.min.js?ver=4.9.13')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/jquery.prettyPhoto.min.js?ver=5.4.5')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/owl.carousel.min.js?ver=5.4.5')}}"></script>--}}
<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/imagesloaded.pkgd.min.js?ver=4.9.13')}}"></script>
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/underscore.min.js?ver=1.8.3')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/waypoints.min.js?ver=5.4.5')}}"></script>--}}
{{--<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/vc_grid.min.js?ver=5.4.5')}}"></script>--}}
<script type='text/javascript'>
    /* <![CDATA[ */
    var mc4wp_forms_config = [];
    /* ]]> */

    /*  */
    $('#lightSlider').lightSlider({
        gallery: true,
        item: 1,
        loop: true,
        slideMargin: 0,
        thumbItem: 9
    });
    /* ]]> */
</script>
<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/forms-api.min.js?ver=4.2.1')}}"></script>
<!--  [if lte IE 9]>  -->
<script type='text/javascript' src="{{ asset($templateFile.'/js/cbd_js/placeholders.min.js?ver=4.2.1')}}"></script>

@stack('scripts')

<!-- js default for item s-cart -->
@include('common.js')
<!--//end js defaut -->

   <!--Module bottom -->
   @isset ($blocksContent['bottom'])
       @foreach ( $blocksContent['bottom']  as $layout)
         @php
           $arrPage = explode(',', $layout->page)
         @endphp
         @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
           @if ($layout->type =='html')
             {!! $layout->text !!}
           @elseif($layout->type =='view')
             @if (view()->exists('block.'.$layout->text))
              @include('block.'.$layout->text)
             @endif
           @elseif($layout->type =='module')
             {!! sc_block_render($layout->text) !!}
           @endif
         @endif
       @endforeach
   @endisset
 <!--//Module bottom -->

</body>
</html>

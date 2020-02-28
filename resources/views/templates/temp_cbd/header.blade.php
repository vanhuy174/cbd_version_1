<header id="farmvilla_organic_theme_header" class="bliccaThemes-header header-classic header-style11 off-sticky">
    <div class="topsection topsection-twocolumn">
        <div class="container container-width-85" style="height: 50px; line-height: 50px; white-space: nowrap;">
            <div class="row">
                <div class="col-md-6">
                    <div class="topsection-text1">
                        <i class="fa fa-phone-square" aria-hidden="true"></i> 1800 200 300
                    </div>
                    <div class="topsection-text1">
                        <a href="http://fb.com/vanhuy174" target="_blank" style="color: white;"><i class="fa fa-facebook" aria-hidden="true"></i> fb.com/htcenter</a>

                    </div>
                </div>
                <div class="col-md-6">
                    <div style="float: right; margin-top: 10px;">
                    @if (count($languages)>1)
                        @foreach ($languages as $key => $language)
                            <div class="topsection-text1">
                                <a class="link-language" href="{{ url('locale/'.$key) }}"><img class="img-language" src="{{ asset($language['icon']) }}" style="height: 40px;"></a>
                            </div>
                        @endforeach
                    @endif
                    </div>
                        <div class="bliccaThemes-header-search search-circle-bg" style="float: right; margin-top: 10px;">
                            <div class="bliccaThemes-search-container">
                                <i class="fa fa-search"></i>
                            </div>
                            <div class="search">
                                <form method="get" action="{{ route('search') }}">
                                    <input type="text" name="keyword" class="search-query"
                                           placeholder="{{ trans('front.search_form.keyword') }}..." value="">
                                </form>
                                <div class="search-close searchOffOn"><i class="fa fa-times"></i></div>
                            </div>
                        </div>
                        <div class="header-social topsection-text1" style="float: right;">
                            @php
                                $cartsCount = \Cart::count();
                            @endphp
                            @guest
                                <a class="icon-login" href="{{ route('login') }}" style="font-size: 20px;">
                                    <i class="fa fa-lock"></i> {{ trans('front.login') }}
                                </a>
                            @else
                                <a href="{{ route('cart') }}">
                                    <div class="social-facebook"><i class="fa fa-cart-plus"></i></div>
                                </a>
                                <a href="{{ route('member.order_list') }}">
                                    <div class="social-facebook"><i class="fa fa-user"></i></div>
                                </a>
                                <a class="icon-logout" href="{{ route('logout') }}" rel="nofollow" onclick="event.preventDefault();
                                            document.getElementById('logout-form').submit();"><i
                                            class="fa fa-power-off"></i> {{ trans('front.logout') }}
                                </a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                      style="display: none;">
                                    @csrf
                                </form>
                            @endguest
                        </div>
                </div>
{{--                <div class="col-md-12">--}}
{{--                    <div class="topsection-left-area">--}}
{{--                        <div class="top-section-table">--}}
{{--                            <div class="top-section-table-center">--}}
{{--                                <div class="header-text-widget widget_text">--}}
{{--                                    <div class="textwidget">--}}
{{--                                        @if (count($languages)>1)--}}
{{--                                            @foreach ($languages as $key => $language)--}}
{{--                                            <div class="topsection-text1">--}}
{{--                                                <a class="link-language" href="{{ url('locale/'.$key) }}"><img class="img-language" src="{{ asset($language['icon']) }}" style="height: 40px;"></a>--}}
{{--                                            </div>--}}
{{--                                            @endforeach--}}
{{--                                        @endif--}}
{{--                                            <div class="topsection-text1">--}}
{{--                                                <i class="fa fa-phone-square" aria-hidden="true"></i> 1800 200 300--}}
{{--                                            </div>--}}
{{--                                            <div class="topsection-text1">--}}
{{--                                                <i class="fa fa-facebook" aria-hidden="true"></i> fb.com/htcenter--}}
{{--                                            </div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="topsection-right-area">--}}
{{--                        <div class="top-section-table">--}}
{{--                            <div class="top-section-table-center">--}}
{{--                                <div class="bliccaThemes-header-search search-circle-bg">--}}
{{--                                    <div class="bliccaThemes-search-container">--}}
{{--                                        <i class="fa fa-search"></i>--}}
{{--                                    </div>--}}
{{--                                    <div class="search">--}}
{{--                                        <form method="get" action="{{ route('search') }}">--}}
{{--                                            <input type="text" name="keyword" class="search-query"--}}
{{--                                                   placeholder="{{ trans('front.search_form.keyword') }}..." value="">--}}
{{--                                        </form>--}}
{{--                                        <div class="search-close searchOffOn"><i class="fa fa-times"></i></div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="header-social    ">--}}
{{--                                    <a>--}}
{{--                                        <div class="social-facebook"><i class="fa"></i></div>--}}
{{--                                    </a>--}}
{{--                                    @php--}}
{{--                                        $cartsCount = \Cart::count();--}}
{{--                                    @endphp--}}
{{--                                    @guest--}}
{{--                                        <a class="icon-login" href="{{ route('login') }}">--}}
{{--                                            <i class="fa fa-lock"></i> {{ trans('front.login') }}--}}
{{--                                        </a>--}}
{{--                                    @else--}}
{{--                                        <a href="{{ route('cart') }}">--}}
{{--                                            <div class="social-facebook"><i class="fa fa-cart-plus"></i></div>--}}
{{--                                        </a>--}}
{{--                                        <a href="{{ route('member.order_list') }}">--}}
{{--                                            <div class="social-facebook"><i class="fa fa-user"></i></div>--}}
{{--                                        </a>--}}
{{--                                        <a class="icon-logout" href="{{ route('logout') }}" rel="nofollow" onclick="event.preventDefault();--}}
{{--                                            document.getElementById('logout-form').submit();"><i--}}
{{--                                                    class="fa fa-power-off"></i> {{ trans('front.logout') }}--}}
{{--                                        </a>--}}
{{--                                        <form id="logout-form" action="{{ route('logout') }}" method="POST"--}}
{{--                                              style="display: none;">--}}
{{--                                            @csrf--}}
{{--                                        </form>--}}
{{--                                    @endguest--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="clearfix"></div>--}}
{{--                </div>--}}
            </div>
        </div>
    </div>
    <div class="">
        <div class="container container-width-85">
            <div class="">
                <!-- Main Menu -->
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <a href="{{ asset("/")}}" class="logo-text">
                            <img src="{{ asset($templateFile.'/images/img-cbd/logofull.png')}}"
                                 alt="" class="logo"/>
                        </a>
                        <div class="responsive-navigation-button">
                            <i class="fa fa-bars"></i>
                        </div>
                    </div>
                    <div class="bt-after-navigation"></div>
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul id="menu-menu" class="nav navbar-nav">
                            <li id="menu-item-261"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-194 current_page_item current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor menu-item-has-children menu-item-261">
                                <a class="btn-menu"
                                   href="{{ route('home') }}"><span>{{ trans('front.home') }}</span></a>
                            </li>
                            @if (!empty($layoutsUrl['menu']))
                                @foreach ($layoutsUrl['menu'] as $url)
                                    <li id="menu-item-276"
                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-276">
                                        <a class="btn-menu"
                                           href="{{ sc_url_render($url->url) }}"><span>{{ sc_language_render($url->name) }}</span></a>
                                    </li>
                                @endforeach
                            @endif
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
                <nav class="responsive-menu-container">
                    <div class="responsive-menu">
                        <ul id="menu-menu-1" class="mobile-navigation">
                            <li id="menu-item-261"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-194 current_page_item current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor menu-item-has-children menu-item-261">
                                <a class="btn-menu" href="{{ route('home') }}">{{ trans('front.home') }}
                                    <span class="dropdown-icon"><i class="fa fa-plus"></i></span>
                                </a>
                            </li>
                            @if (!empty($layoutsUrl['menu']))
                                @foreach ($layoutsUrl['menu'] as $url)
                                    <li id="menu-item-276"
                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-276">
                                        <a class="btn-menu"
                                           href="{{ sc_url_render($url->url) }}">{{ sc_language_render($url->name) }}
                                            <span class="dropdown-icon"><i class="fa fa-plus"></i></span>
                                        </a>
                                    </li>
                                @endforeach
                            @endif
                        </ul>
                    </div>
                </nav>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</header>


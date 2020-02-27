@extends($templatePath.'.shop_layout')

@section('main')

    <section class="bliccaThemes-waypoint" data-animate-down="on-sticky" data-animate-up="off-sticky">

        <!-- Blog Content Start -->
        <div class="blog-style">
            <div class="caption-container ">
                <div>
                    <div class="caption-container " style="background: url({{asset($templateFile.'/images/img-cbd/title.jpg')}}) no-repeat;">
                        <h1 style="">{{ $title }}</h1>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-sm-9 col-md-9 blog-wrapper blog-style7">
                        <div class="bt-blog-posts">
                            <!-- Loop Start -->
                            @foreach ($news as $newsDetail)
                            <article class="post-item post-161 post type-post status-publish format-standard has-post-thumbnail hentry category-uncategorized">

                                <div class="bt_thumbnail">
                                    <a href="{{ $newsDetail->getUrl() }}">
                                        <img width="850" height="560"
                                             src="{{ asset($newsDetail->getThumb()) }}"
                                             class="attachment-blog_post7 size-blog_post7 wp-post-image" alt=""
                                             srcset="{{ asset($newsDetail->getThumb()) }} 850w, {{ asset($newsDetail->getThumb()) }} 300w, {{ asset($newsDetail->getThumb()) }} 768w, {{ asset($newsDetail->getThumb()) }} 600w"
                                             sizes="(max-width: 850px) 100vw, 850px"/>
                                    </a>
                                </div>
                                <div class="bt_content">
                                    <h3 class="blog-title">
                                        <a href="{{ $newsDetail->getUrl() }}"
                                                rel="bookmark" title="Permanent Link to Enjoy your life with healthy body">{{ $newsDetail->title }}</a>
                                    </h3>
                                    <div class="blog-subtitle">
                                        By <a href="{{ asset("/about.html")}}"
                                              title="Posts by Abadmin" rel="author">Abadmin</a> <span
                                                class="bt_blog_title_sep"> | </span>
                                        {{ $newsDetail->created_at }} <span class="bt_blog_title_sep"> | </span>
                                        0 Comment <span class="bt_blog_title_sep"> | </span>
                                    </div>
                                    <div class="blog-content">
                                        {{ $newsDetail->description }}
                                    </div>
                                </div>
                                <a class="bt_blog_widget-more"
                                   href="{{ $newsDetail->getUrl() }}">Read  More</a>
                            </article>
                            @endforeach
                        </div>
                        <div class="pagination-container">
                            <div class="index-pagination">
                            </div>
                        </div>
                    </div>

                    <aside class="col-sm-3 col-md-3 sidebar">
                        <div class="sidebar-inner">
{{--                            <div class="sidebar-widget widget_search">--}}
{{--                                <div class="search">--}}
{{--                                    <form method="get" action="http://bliccathemes.com/themes/farmvilla">--}}
{{--                                        <input type="text" name="s" class="search-query"--}}
{{--                                               placeholder="Type and hit enter to search" value="">--}}
{{--                                        <button class="search-icon" type="submit"><i class="fa fa-search"></i></button>--}}
{{--                                    </form>--}}
{{--                                </div>--}}
{{--                            </div>--}}
                            <div class="sidebar-widget widget_recent_entries"><h5>Recent Posts</h5>
                                <ul>
                                    <li>
                                        <a href="/">Enjoy
                                            your life with healthy body</a>
                                    </li>
                                    <li>
                                        <a href="/">Buy
                                            organic food online and be healthy</a>
                                    </li>
                                    <li>
                                        <a href="/">Reasons
                                            why you should choose organic</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="sidebar-widget widget_recent_comments"><h5>Recent Comments</h5>
                                <ul id="recentcomments"></ul>
                            </div>
                            <div class="sidebar-widget widget_archive"><h5>Archives</h5>
                                <ul>
                                    <li><a href='/'>April 2016</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="sidebar-widget widget_categories"><h5>Categories</h5>
                                <ul>
                                    <li class="cat-item cat-item-1"><a
                                                href="/">Uncategorized</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="sidebar-widget widget_meta"><h5>Meta</h5>
                                <ul>
                                    <li><a href="/">Log in</a></li>
                                    <li><a href="/">Entries <abbr
                                                    title="Really Simple Syndication">RSS</abbr></a></li>
                                    <li><a href="/">Comments <abbr
                                                    title="Really Simple Syndication">RSS</abbr></a></li>

                                </ul>
                            </div>
                        </div>
                    </aside>

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

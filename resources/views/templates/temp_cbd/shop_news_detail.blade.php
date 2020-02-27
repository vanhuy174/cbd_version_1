@extends($templatePath.'.shop_layout')

@section('main')

    <section class="bliccaThemes-waypoint" data-animate-down="on-sticky" data-animate-up="off-sticky">
        <!-- Content Start -->
        <div class="blog-style">
            <div class="caption-container ">
                <div class="caption">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h2></h2>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-8 col-md-8 blog-wrapper single-blog-style7">
                                <div class="bt-blog-posts">
                                    <!-- Loop Start -->
                                    <article class="post-item post-161 post type-post status-publish format-standard has-post-thumbnail hentry category-uncategorized">
                                        <div class="bt_thumbnail">
                                                <img width="850" height="384"
                                                     src="{{$news_currently->image}}"
                                                     class="attachment-farmvilla_organic_theme-blog-single size-farmvilla_organic_theme-blog-single wp-post-image"
                                                     alt=""/>
                                        </div>
                                        <div class="blog-content">
                                            <h1 class="blog-title">{{ $title }}</h1>

                                            <div class="blog-inner">
                                                {!! sc_html_render($news_currently->content) !!}
                                            </div>

                                        </div>


                                    </article>


                                </div>
                                <div id="comment" class="comments-wrapper">


                                    <div id="commentrespond" class="comment-respond">

                                        <div id="respond" class="comment-respond">
                                            <h3 id="reply-title" class="comment-reply-title"><span>Post a Comment</span>
                                                <small><a rel="nofollow" id="cancel-comment-reply-link"
                                                          href=""
                                                          style="display:none;">Cancel reply</a></small></h3>
                                            <form action=""
                                                  method="post" id="commentform" class="comment-form">
                                                <div class="col-md-4 form-group formleft"><input id="author"
                                                                                                 class="required form-control"
                                                                                                 name="author"
                                                                                                 type="text"
                                                                                                 placeholder="Full Name"
                                                                                                 value=""
                                                                                                 aria-required='true'/>
                                                </div>
                                                <div class="col-md-4 form-group"><input id="email"
                                                                                        class="required form-control"
                                                                                        name="email" type="text"
                                                                                        placeholder="Email Address"
                                                                                        value="" aria-required='true'/>
                                                </div>
                                                <div class="col-md-4 form-group formright"><input id="url"
                                                                                                  class="form-control"
                                                                                                  name="url" type="text"
                                                                                                  placeholder="Your Website"
                                                                                                  value=""/></div>
                                                <div class="clearfix"></div>
                                                <div class="col-md-12 form-group"><textarea
                                                            class="required form-control" type="text" rows="7"
                                                            placeholder="Type here message"
                                                            id="farmvilla_organic_theme_comment" name="comment"
                                                            aria-required="true"></textarea></div>
                                                <p class="form-submit"><input name="submit" type="submit" id="submit"
                                                                              class="submit" value="Submit"/> <input
                                                            type='hidden' name='comment_post_ID' value='161'
                                                            id='comment_post_ID'/>
                                                    <input type='hidden' name='comment_parent' id='comment_parent'
                                                           value='0'/>
                                                </p></form>
                                        </div><!-- #respond -->

                                    </div>
                                </div>
                            </div>


                            <aside class="col-sm-3 col-md-3 sidebar">
                                <div class="sidebar-inner">
{{--                                    <div class="sidebar-widget widget_search">--}}
{{--                                        <div class="search">--}}
{{--                                            <form method="get" action="http://bliccathemes.com/themes/farmvilla">--}}
{{--                                                <input type="text" name="s" class="search-query"--}}
{{--                                                       placeholder="Type and hit enter to search" value="">--}}
{{--                                                <button class="search-icon" type="submit"><i class="fa fa-search"></i>--}}
{{--                                                </button>--}}
{{--                                            </form>--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
                                    <div class="sidebar-widget widget_recent_entries"><h5>Recent Posts</h5>
                                        <ul>
                                            <li>
                                                <a href="">Enjoy
                                                    your life with healthy body</a>
                                            </li>
                                            <li>
                                                <a href="">Buy
                                                    organic food online and be healthy</a>
                                            </li>
                                            <li>
                                                <a href="">Reasons
                                                    why you should choose organic</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="sidebar-widget widget_recent_comments"><h5>Recent Comments</h5>
                                        <ul id="recentcomments"></ul>
                                    </div>
                                    <div class="sidebar-widget widget_archive"><h5>Archives</h5>
                                        <ul>
                                            <li><a href=''>April
                                                    2016</a></li>
                                        </ul>
                                    </div>
                                    <div class="sidebar-widget widget_categories"><h5>Categories</h5>
                                        <ul>
                                            <li class="cat-item cat-item-1"><a
                                                        href="">Uncategorized</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="sidebar-widget widget_meta"><h5>Meta</h5>
                                        <ul>
                                            <li><a href="">Log
                                                    in</a></li>
                                            <li><a href="">Entries <abbr
                                                            title="Really Simple Syndication">RSS</abbr></a></li>
                                            <li><a href="">Comments
                                                    <abbr title="Really Simple Syndication">RSS</abbr></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </aside>

                            <div class="clearfix"></div>
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

@extends($templatePath.'.shop_layout')

@section('main')
    <section>
        <div id="bliccaThemes-layout">

            <!-- Top Section -->
            <section class="bliccaThemes-waypoint" data-animate-down="on-sticky" data-animate-up="off-sticky">
                <div style="all: unset;">
                    <div class="caption-container " style="background: url({{asset($templateFile.'/images/img-cbd/title.jpg')}}) no-repeat;">
                            <h1 style="">{{ $title }}</h1>
                    </div>
                </div>
                <div class="container">
                    <div class="margin-t-3">
                        <!-- Page Content Start -->
                        {!! sc_html_render($page->content) !!}
                    </div>
                </div>
            </section>
        </div>
    </section>

@endsection

{{--@section('breadcrumb')--}}
{{--    <div class="breadcrumbs container">--}}
{{--        <ol class="breadcrumb">--}}
{{--          <li><a href="{{ route('home') }}">{{ trans('front.home') }}</a></li>--}}
{{--          <li class="active">{{ $title }}</li>--}}
{{--        </ol>--}}
{{--      </div>--}}
{{--@endsection--}}

@extends($templatePath.'.shop_layout')

@section('main')

    <section class="bliccaThemes-waypoint" data-animate-down="on-sticky" data-animate-up="off-sticky">

        <!-- Blog Content Start -->
        <div class="blog-style">
            <div class="caption-container ">
                <div>
                    <div class="caption-container " style="background: url({{asset($templateFile.'/images/img-cbd/title.jpg')}}) no-repeat;">
                        <h1 style="">{{ trans('front.knowledge') }}</h1>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">


                </div>
            </div>
        </div>

    </section>

@endsection

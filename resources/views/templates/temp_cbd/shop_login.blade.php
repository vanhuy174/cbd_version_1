@extends($templatePath.'.shop_layout')

@section('main')

    <section id="form-login"><!--form-->
        <div class=" login-container">
            <div class="container">
                <div class="row padding-t-b-3">
                    <div class="bt_heading_7">
                        <div class="flipInX-1 blind text animated"
                             style="color:#464646; font-size:40px; font-weight:400; ">
                            <span>{{ $title }}</span>
                        </div>
                        <div class="flipInX-1 blind line_1 animated"
                             style="animation-delay: 100ms; -moz-animation-delay: 100ms; -webkit-animation-delay: 100ms;"></div>
                    </div>
                    <div class="margin-t-3">
                        <div class="col-sm-4 col-sm-offset-1">
                            <div class="login-form"><!--login form-->
                                @include($templatePath.'.auth.login')
                            </div><!--/login form-->
                        </div>
                        <div class="col-sm-2">
                            {{--                    <h2 class="or">OR</h2>--}}
                        </div>
                        <div class="col-sm-4">
                            <div class="signup-form"><!--sign up form-->
                                @include($templatePath.'.auth.register')
                            </div><!--/sign up form-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!--/form-->
@endsection

{{--@section('breadcrumb')--}}
{{--    <div class="breadcrumbs">--}}
{{--        <ol class="breadcrumb">--}}
{{--            <li><a href="{{ route('home') }}">{{ trans('front.home') }}</a></li>--}}
{{--            <li class="active">{{ $title }}</li>--}}
{{--        </ol>--}}
{{--    </div>--}}
{{--@endsection--}}

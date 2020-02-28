@extends($templatePath.'.shop_layout')

@section('main')
    <div class="caption-container ">
        <div>
            <div class="caption-container " style="background: url({{asset($templateFile.'/images/img-cbd/title.jpg')}}) no-repeat;">
                <h1 style="">{{ $title }}</h1>
            </div>
        </div>
    </div>
    <div class="col-md-12 text-danger" style="background-color: white;">

        <div class="container margin-t-3">
            <div class="row justify-content-center">
                <div class="col-sm-3">
                    <ul class="list-group list-group-flush" style="background-color: #f5f6f8; font-weight: bold;">
                        <li class="list-group-item"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <a
                                    href="{{ route('member.order_list') }}">{{ trans('account.order_list') }}</a></li>
                        <li class="list-group-item"><i class="fa fa-angle-double-right" aria-hidden="true"></i>
                            <a href="{{ route('affiliate.landing') }}">{{ trans('account.partner') }}</a>
                        </li>
                        <li class="list-group-item"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <a
                                    href="{{ route('member.change_password') }}">{{ trans('account.change_password') }}</a>
                        </li>
                        <li class="list-group-item"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <a
                                    href="{{ route('member.change_infomation') }}">{{ trans('account.change_infomation') }}</a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-8">
                    <div class="card">

                        <div class="card-body">
                            <form method="POST" action="{{ route('member.post_change_password') }}">
                                @csrf

                                <div class="form-group row {{ Session::has('password_old_error') ? ' has-error' : '' }}">
                                    <label for="password"
                                           class="col-md-4 col-form-label text-md-right">{{ trans('account.password_old') }}</label>

                                    <div class="col-md-6">
                                        <input id="password" type="password" class="form-control" name="password_old"
                                               required>

                                        @if(Session::has('password_old_error'))
                                            <span class="help-block">{{ Session::get('password_old_error') }}</span>
                                        @endif

                                    </div>
                                </div>

                                <div class="form-group row {{ $errors->has('password') ? ' has-error' : '' }}">
                                    <label for="password"
                                           class="col-md-4 col-form-label text-md-right">{{ trans('account.password_new') }}</label>

                                    <div class="col-md-6">
                                        <input id="password" type="password" class="form-control" name="password"
                                               required>

                                        @if($errors->has('password'))
                                            <span class="help-block">{{ $errors->first('password') }}</span>
                                        @endif

                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="password-confirm"
                                           class="col-md-4 col-form-label text-md-right">{{ trans('account.password_confirm') }}</label>

                                    <div class="col-md-6">
                                        <input id="password-confirm" type="password" class="form-control"
                                               name="password_confirmation" required>
                                    </div>
                                </div>

                                <div class="form-group row mb-0">
                                    <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-success">
                                            {{ trans('account.update_infomation') }}
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

{{--@section('breadcrumb')--}}
{{--    <div class="breadcrumbs">--}}
{{--        <ol class="breadcrumb">--}}
{{--          <li><a href="{{ route('home') }}">{{ trans('front.home') }}</a></li>--}}
{{--          <li><a href="{{ route('member.index') }}">{{ trans('front.my_account') }}</a></li>--}}
{{--          <li class="active">{{ $title }}</li>--}}
{{--        </ol>--}}
{{--      </div>--}}
{{--@endsection--}}

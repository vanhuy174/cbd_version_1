@extends($templatePath.'.shop_layout')

@section('main')
    <section>
        <div class="caption-container ">
            <div>
                <div class="caption-container " style="background: url({{asset($templateFile.'/images/img-cbd/title.jpg')}}) no-repeat;">
                    <h1 style="">{{ $title }}</h1>
                </div>
            </div>
        </div>
        <div class="container container-width-85 margin-t-3">
            <div class="row">
                <div class="col-sm-3">
                    <ul class="list-group list-group-flush"  style="background-color: #f5f6f8; font-weight: bold;">
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
                <div class="col-sm-9 ">

                </div>
            </div>
        </div>
    </section>
@endsection


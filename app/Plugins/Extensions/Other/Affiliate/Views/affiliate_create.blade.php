@extends($templatePath.'.shop_layout')

@section('main')
<section >
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
            <ul class="list-group list-group-flush" style="background-color: #f5f6f8; font-weight: bold;">
                <li class="list-group-item"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <a
                            href="{{ route('member.order_list') }}">{{ trans('account.order_list') }}</a>
                </li>
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
        <div class="col-sm-9">
            <h3>{{ trans('account.Join') }}</h3>
            <p>{{ trans('account.text_1') }} <b>{{get_affiliate_percent()}}</b> {{ trans('account.text_4') }}</p>
            @if (is_null($affiliate_user->affiliate_code))
                <p>{{ trans('account.text_2') }}</p>
                <p>{{ trans('account.text_3') }}</p>
                @if (can_affiliate_code())
                    <p><a href="{{route('create_affiliate_code')}}" class="btn btn-info">{{ trans('account.generate_code') }}</a></p>
                @endif
            @else
                <p>{{ trans('account.your_referral') }}</p>
                <p><b>{{route('affiliate', $affiliate_user->affiliate_code)}}</b></p>
                <p>{{ trans('account.please_share') }}</p>
            @endif

            <div class="box collapsed-box">
                <div class="box-header with-border">
                    <h3 class="box-title">{{ trans('account.withdrawal_history') }}</h3>
                    <p>{{ trans('account.having') }}: <b class="text-success">{{$affiliate_user->affiliate_money}}</b></p>
                    <p>{{ trans('account.minimum_withdrawal') }}: <b class="text-danger">{{get_min_withdraw()}}</b></p>
                    @if ($affiliate_user->affiliate_money >= get_min_withdraw())
                        <p><a href="{{route('affiliate.withdraw')}}" class="btn btn-info">{{ trans('account.withdrawal') }}</a></p>
                    @else
                        <p><a class="btn btn-info" disabled="">{{ trans('account.withdrawal') }}</a></p>
                    @endif
                    @if(get_withdraw_info())
                        <a href="{{route('affiliate.withdraw_info.edit')}}">{{ trans('account.view_withdrawn') }}</a>
                    @else
                        <a href="{{route('affiliate.withdraw_info.index')}}">{{ trans('account.add_bank') }}</a> {{ trans('account.before_withdrawing_money') }}
                    @endif

                </div>

                <p>{{ trans('account.money_will') }}</p>
                <div class="box-body">
                    @if (count($withdraws))
                        <table  class="table table-bordered" id="affiliate_list">
                            <thead>
                            <tr>
                                <th>{{ trans('account.bout') }}</th>
                                <th>{{ trans('account.amount_of_withdrawal') }}</th>
                                <th>{{ trans('account.date_withdrawn') }}</th>
                                <th>{{ trans('account.note') }}</th>
                                <th>{{ trans('account.bank_transaction_code') }}</th>
                                <th>{{ trans('account.status') }}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($withdraws as $key => $withdraw)
                                <tr>
                                    <td>{{$key+1}}</td>
                                    <td>{{$withdraw->money}}</td>
                                    <td>{{$withdraw->created_at}}</td>
                                    <td>{{$withdraw->note}}</td>
                                    <td>{{$withdraw->transaction_id}}</td>
                                    <td>{!! get_withdraw_status($withdraw->status) !!}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    @else
                        <p>{{ trans('account.no_withdrawals') }}</p>
                    @endif
                </div>
            </div>

            <div class="box collapsed-box">
                <div class="box-header with-border">
                    <h3 class="box-title">{{ trans('account.referral_list') }}</h3>
                </div>

                <div class="box-body">
                    @if (count($childs))
                        <table  class="table table-bordered" id="affiliate_list">
                            <thead>
                            <tr>
                                <th>{{ trans('account.user') }}</th>
                                <th>{{ trans('account.amount_available') }}</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($childs as $child)
                                <tr>
                                    <td>{!! $child->user->first_name . ' ' . $child->user->last_name !!}</td>
                                    <td>{{ $child->affiliate_money }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    @else
                        <p>{{ trans('account.not_successful') }}</p>
                    @endif
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
{{--          <li><a href="{{ route('member.index') }}">{{ trans('front.my_account') }}</a></li>--}}
{{--          <li class="active">{{ $title }}</li>--}}
{{--        </ol>--}}
{{--      </div>--}}
{{--@endsection--}}

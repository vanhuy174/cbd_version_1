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
    <div class="col-md-12 text-danger" style="background-color: white;">

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
            <div class="col-sm-9 "  style="color: black;">
                @if (count($orders) ==0)
                    <div class="col-md-12 text-danger"  style="background-color: white;">
                        <h3>{{ trans('account.orders.empty') }}</h3>
                    </div>
                @else
                    <table class="table box  table-bordered table-responsive"  style="background-color: #f5f6f8;">
                        <thead>
                        <tr>
                            <th style="width: 50px;">No.</th>
                            <th style="width: 100px;">SKU</th>
                            <th>{{ trans('account.orders.total') }}</th>
                            <th>{{ trans('account.orders.status') }}</th>
                            <th>{{ trans('account.orders.date_add') }}</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($orders as $order)
                            @php
                                $n = (isset($n)?$n:0);
                                $n++;
                                // $order = App\Models\ShopProduct::find($item->id);
                            @endphp
                            <tr>
                                <td><span class="item_21_id">{{ $n }}</span></td>
                                <td><span class="item_21_sku">#{{ $order->id }}</span></td>
                                <td align="right">
                                    {{ number_format($order->total) }}
                                </td>
                                <td>{{ $statusOrder[$order->status]}}</td>
                                <td>{{ $order->created_at }}</td>
                                <td>
                                    <a data-toggle="modal" data-target="#order-{{ $order->id }}" href="#"><i class="glyphicon glyphicon-list-alt"></i> {{ trans('account.orders.detail_order') }}</a>
                                </td>
                            </tr>

                            <!-- Modal -->
                            <div id="order-{{ $order->id }}" class="modal fade" role="dialog" style="z-index: 9999;">
                                <div class="modal-dialog modal-lg" style="width: 75%;">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">{{ trans('account.orders.detail_order') }} #{{ $order->id }}</h4>
                                        </div>
                                        <div class="modal-body">
                                            @foreach($order->details as $detail)
                                                <div class="row">
                                                    <div class="col-md-4">{{ $detail->name }} (<b>SKU:</b> {{ $detail->sku }})</div>
                                                    <div class="col-md-3" align="right">{{ number_format($detail->price) }} </div>
{{--                                                    <div class="col-md-1">{{$detail->attribute }}</div>--}}
                                                    <div class="col-md-2">x {{ $detail->qty }}</div>
                                                    <div class="col-md-3" align="right">{{ number_format($detail->total_price) }} </div>
                                                </div>
                                            @endforeach
                                            <hr>
                                            @foreach($order->orderTotal as $total)
                                                @if ($total->value !=0)
                                                    <div class="row">
                                                        <div class="col-md-10" align="right">
                                                            {!! $total->title !!}
                                                        </div>
                                                        <div class="col-md-2"  align="right">{{ number_format($total->value) }} </div>
                                                    </div>
                                                @endif

                                            @endforeach

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        @endforeach
                        </tbody>
                    </table>

                @endif
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

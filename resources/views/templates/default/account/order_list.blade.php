@extends($templatePath.'.shop_layout')

@section('main')
<section >
<div class="container">
    <div class="row">
        <h2 class="title text-center">{{ $title }}</h2>
@if (count($orders) ==0)
    <div class="col-md-12 text-danger">
        {{ trans('account.orders.empty') }}
    </div>
@else
<table class="table box  table-bordered table-responsive">
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
            <a href="{{route('customer.order', $order->id)}}" target="_blank"><i class="fa fa-2x fa-print"></i></a>
        </td>
    </tr>

    @endforeach
    </tbody>
  </table>

@endif
</div>
</div>
</section>
@endsection

@section('breadcrumb')
    <div class="breadcrumbs">
        <ol class="breadcrumb">
          <li><a href="{{ route('home') }}">{{ trans('front.home') }}</a></li>
          <li><a href="{{ route('member.index') }}">{{ trans('front.my_account') }}</a></li>
          <li class="active">{{ $title }}</li>
        </ol>
      </div>
@endsection

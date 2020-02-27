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
            <ul class="list-group list-group-flush">
                <li class="list-group-item"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <a
                            href="{{ route('member.order_list') }}">{{ trans('account.order_list') }}</a></li>
                <li class="list-group-item"><i class="fa fa-angle-double-right" aria-hidden="true"></i>
                    <a href="{{ route('affiliate.landing') }}">Trở thành đối tác và kiếm tiền cùng chúng tôi</a>
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
            <h3>Tham gia chương trình tích giới thiệu mua hàng và kiếm tiền cùng chúng tôi</h3>
            <p>Với mỗi đơn hàng được giới thiệu thành công, bạn sẽ nhận được <b>{{get_affiliate_percent()}}</b> giá trị đơn hàng</p>
            @if (is_null($affiliate_user->affiliate_code))
                <p>Tài khoản của bạn chưa có mã giới thiệu.</p>
                <p>Hãy hoàn thành đơn hàng đâu tiên và nhấn nút "<b>Tạo Mã</b>" để tham gia chương trình <b>tích điểm đổi thưởng</b> cùng chúng tôi.</p>
                @if (can_affiliate_code())
                    <p><a href="{{route('create_affiliate_code')}}" class="btn btn-info">Tạo Mã</a></p>
                @endif
            @else
                <p>Liên kết giới thiệu của bạn là:</p>
                <p><b>{{route('affiliate', $affiliate_user->affiliate_code)}}</b></p>
                <p>Hãy chia sẻ liên kết này cho bạn bè cùng mua sản phẩm và kiếm tiền cùng CBD.</p>
            @endif

            <div class="box collapsed-box">
                <div class="box-header with-border">
                    <h3 class="box-title">Lịch Sử Rút Tiền</h3>
                    <p>Đang có: <b class="text-success">{{$affiliate_user->affiliate_money}}</b></p>
                    <p>Số tiền tối thiểu để rút: <b class="text-danger">{{get_min_withdraw()}}</b></p>
                    @if ($affiliate_user->affiliate_money >= get_min_withdraw())
                        <p><a href="{{route('affiliate.withdraw')}}" class="btn btn-info">Rút Tiền</a></p>
                    @else
                        <p><a class="btn btn-info" disabled="">Rút Tiền</a></p>
                    @endif
                    @if(get_withdraw_info())
                        <a href="{{route('affiliate.withdraw_info.edit')}}">Xem thông tin tài khoản ngân hàng rút về</a>
                    @else
                        <a href="{{route('affiliate.withdraw_info.index')}}">Thêm tài khoản ngân hàng</a> trước khi rút.
                    @endif

                </div>

                <p>Tiền sẽ được chuyển trong 24h - 48h kể từ khi được xác nhận</p>
                <div class="box-body">
                    @if (count($withdraws))
                        <table  class="table table-bordered" id="affiliate_list">
                            <thead>
                            <tr>
                                <th>Lần</th>
                                <th>Số Tiền Rút</th>
                                <th>Ngày Rút</th>
                                <th>Ghi Chú</th>
                                <th>Mã Giao Dịch Ngân Hàng</th>
                                <th>Trạng Thái</th>
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
                        <p>Chưa thực hiện rút tiền nào.</p>
                    @endif
                </div>
            </div>

            <div class="box collapsed-box">
                <div class="box-header with-border">
                    <h3 class="box-title">Danh Sách Giới Thiệu</h3>
                </div>

                <div class="box-body">
                    @if (count($childs))
                        <table  class="table table-bordered" id="affiliate_list">
                            <thead>
                            <tr>
                                <th>Người Dùng</th>
                                <th>Số Tiền Đang Có</th>
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
                        <p>Chưa giới thiệu thành công</p>
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

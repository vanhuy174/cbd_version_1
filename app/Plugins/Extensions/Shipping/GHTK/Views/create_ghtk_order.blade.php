@extends('admin.layout')

@section('main')
    <div class="row">
        <div class="col-md-8 col-md-push-2">
            <form action="{{route('ghtk.order.send', $order->id)}}" method="post" accept-charset="UTF-8" class="form-horizontal" id="form-main">
            <div class="box">
                <div class="col-md-6">
                    <div class="box-header with-border">
                        <h2 class="box-title">Cửa hàng/kho lấy hàng</h2>
                    </div>

                    <div class="box-body">
                        <div class="fields-group">

                            <div class="form-group">
                                <label>Chọn kho</label>
                                <select class="form-control" name="warehouse">
                                    @foreach($warehouses as $warehouse)
                                        @if($warehouse->is_primary)
                                            <option value="{{$warehouse->id}}" selected>{{$warehouse->warehouse_name}} (Kho chính)</option>
                                        @else
                                            <option value="{{$warehouse->id}}">{{$warehouse->warehouse_name}}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>

                        </div>
                    </div>
                    <div class="box-header with-border">
                        <h2 class="box-title">Thông tin người nhận</h2>
                    </div>

                    <div class="box-body">
                        <table  class="table table-bordered">
                            <tr>
                                <td class="td-title" style="font-weight: bold">SĐT:</td>
                                <td style="text-align:right">{{ $order->phone }}</td>
                            </tr>
                            <tr>
                                <td class="td-title" style="font-weight: bold">Họ tên:</td>
                                <td style="text-align:right">{{ $order->first_name . ' ' .$order->last_name }}</td>
                            </tr>
                            <tr>
                                <td class="td-title" style="font-weight: bold">Dịa chỉ:</td>
                                <td style="text-align:right"></td>
                            </tr>
                            <tr>
                                <td class="td-title" style="font-weight: bold">Xã/phường:</td>
                                <td style="text-align:right"></td>
                            </tr>
                            <tr>
                                <td class="td-title" style="font-weight: bold">Quân/huyện:</td>
                                <td style="text-align:right">{{ $order->address2 }}</td>
                            </tr>
                            <tr>
                                <td class="td-title" style="font-weight: bold">Tỉnh/thành phố:</td>
                                <td style="text-align:right">{{ $order->address1 }}</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box-header with-border">
                        <h2 class="box-title">Thông tin đăng đơn lên GHTK</h2>
                    </div>

                    <div class="box-body">
                        <div class="fields-group">
                            <div class="form-group">
                                <label>Phí ship</label>
                                <select class="form-control" name="is_freeship">
                                    <option value="0">Khách trả</option>
                                    <option value="1" selected> Miễn phí ship cho khách</option>
                                </select>
                            </div>
                        </div>
                        <div class="fields-group">
                            <div class="form-group">
                                <label for="inputPassword" class="col-form-label">Tiền thu hộ</label>
                                <input type="number" class="form-control" name="pick_money" id="pick_money" value="{{$order->subtotal}}">
                                <small>Nếu khách đã chuyển khoản thì điền vào 0</small>
                            </div>
                        </div>
                        <div class="fields-group">
                            <div class="form-group">
                                <label for="inputPassword" class="col-form-label">Giá trị đơn hàng</label>
                                <input type="number" class="form-control" name="value" id="value" value="{{$order->subtotal}}">
                                <small>Áp dụng để tính bảo hiểm đơn hàng. Có thể thay đổi để tránh phí bảo hiểm</small>
                            </div>
                        </div>
                        <div class="fields-group">
                            <div class="form-group">
                                <label>Giao hàng tại bưu cục?</label>
                                <select class="form-control" name="pick_option">
                                    <option value="cod" selected>Shipper đến lấy hàng</option>
                                    <option value="post">Shop gửi hàng tại bưu cục</option>
                                </select>
                            </div>
                        </div>
                        <div class="fields-group">
                            <div class="form-group">
                                <label>Hình thức vận chuyển</label>
                                <select class="form-control" name="transport">
                                    <option value="road" selected>Đường bộ</option>
                                    <option value="fly">Đường bay</option>
                                </select>
                            </div>
                        </div>
                        <div class="fields-group">
                            <div class="form-group">
                                <label>Đơn vị tính trọng luợng</label>
                                <select class="form-control" name="weight_option">
                                    <option value="kilogram" selected>kilogram</option>
                                    <option value="gram">gram</option>
                                </select>
                            </div>
                        </div>
                        <div class="fields-group">
                            <div class="form-group">
                                <label class="col-form-label">Trọng lượng</label>
                                <input type="number" step="0.01" class="form-control" name="total_weight" id="total_weight" value="0.1">
                                <small>Ví dụ: 0.5</small>
                            </div>
                        </div>
                        <div class="fields-group">
                            <div class="form-group">
                                <label for="inputPassword" class="col-form-label">Ghi chú đơn hàng</label>
                                <textarea class="form-control" name="note" id="note" cols="10" rows="10">{{$order->comment}}</textarea>
                            </div>
                        </div>
                    </div>
                </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        @csrf
                        <div class="col-md-2">
                        </div>

                        <div class="col-md-8">
                            <div class="btn-group pull-right">
                                <button type="submit" class="btn btn-primary">{{ trans('admin.submit') }}</button>
                            </div>

                            <div class="btn-group pull-left">
                                <button type="reset" class="btn btn-warning">{{ trans('admin.reset') }}</button>
                            </div>
                        </div>
                    </div>

                    <!-- /.box-footer -->
            </div>
            </form>
        </div>
    </div>

    @endsection

            @push('styles')
                <style>
                    .required {
                        color: red !important;
                    }
                </style>
            @endpush

            @push('scripts')

        </script>
    @endpush

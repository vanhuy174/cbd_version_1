@extends('admin.layout')

@section('main')
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header with-border">
                    <h2 class="box-title">{{ $title_description??'' }}</h2>

                    <div class="box-tools">
                        <div class="btn-group pull-right" style="margin-right: 5px">
                            <a href="{{ route('ghtk.warehouses.index') }}" class="btn  btn-flat btn-default" title="List">
                                <i class="fa fa-list"></i><span class="hidden-xs"> {{trans('admin.back_list')}}</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form action="{{ $url_action }}" method="post" accept-charset="UTF-8" class="form-horizontal" id="form-main">
                    <div class="box-body">
                        <div class="fields-group col-sm-12">

                            <div class="col-sm-3">
                                <div class="{{ $errors->has('warehouse_name') ? ' has-error' : '' }}">
                                    <label for="warehouse_name" class="control-label">Tên kho hàng <span class="required">*</span></label>
                                    <input type="text" id="warehouse_name" name="warehouse_name" value="{!! old()?old('warehouse_name'):$obj['warehouse_name']??'' !!}"
                                           class="form-control warehouse_name" placeholder="" />
                                    <small>Ví dụ: kho hàng 1</small>
                                    @if ($errors->has('warehouse_name'))
                                        <span class="help-block">
                                                {{ $errors->first('warehouse_name') }}
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="{{ $errors->has('pick_address_id') ? ' has-error' : '' }}">
                                    <label for="pick_address_id" class="control-label">Mã kho hàng trên GHTK</label>
                                    <input type="text" id="pick_address_id" name="pick_address_id" value="{!! old()?old('pick_address_id'):$obj['pick_address_id']??'' !!}"
                                           class="form-control pick_address_id" placeholder="" />
                                    <small>Mã kho hàng của bạn trên hệ thống GHTK - sẽ ưu tiên chọn nếu điền mã tại đây</small>
                                    @if ($errors->has('pick_address_id'))
                                        <span class="help-block">
                                                {{ $errors->first('pick_address_id') }}
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="{{ $errors->has('pick_name') ? ' has-error' : '' }}">
                                    <label for="pick_name" class="control-label">Tên chủ shop <span class="required">*</span></label>
                                    <input type="text" id="pick_name" name="pick_name" value="{!! old()?old('pick_name'):$obj['pick_name']??'' !!}"
                                           class="form-control pick_name" placeholder="" />
                                    <small>Tên người liên hệ lấy hàng.</small>
                                    @if ($errors->has('pick_name'))
                                        <span class="help-block">
                                                {{ $errors->first('pick_name') }}
                                            </span>
                                    @endif

                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="{{ $errors->has('pick_tel') ? ' has-error' : '' }}">
                                    <label for="pick_tel" class="control-label">SĐT chủ shop <span class="required">*</span></label>
                                    <input type="text" id="pick_tel" name="pick_tel" value="{!! old()?old('pick_tel'):$obj['pick_tel']??'' !!}"
                                           class="form-control pick_tel" placeholder="" />
                                    <small>Ví dụ: 0123 321 123</small>
                                    @if ($errors->has('pick_tel'))
                                        <span class="help-block">
                                                {{ $errors->first('pick_tel') }}
                                            </span>
                                    @endif
                                </div>
                            </div>

                        </div>

                        <div class="fields-group col-sm-12">

                            <div class="col-sm-3">
                                <div class="{{ $errors->has('pick_province') ? ' has-error' : '' }}">
                                    <label for="pick_province" class="control-label">Tỉnh thành <span class="required">*</span></label>
                                    <select class="form-control pick_province" name="pick_province" id="pick_province">
                                        <option value="">Chọn thành phố</option>
                                    </select>
{{--                                    <input type="text" id="" name="" value="{!! old()?old('pick_province'):$obj['pick_province']??'' !!}"--}}
{{--                                           class="form-control " placeholder="" />--}}
                                    <small>Tỉnh thành nơi lấy hàng</small>
                                    @if ($errors->has('pick_province'))
                                        <span class="help-block">
                                        {{ $errors->first('pick_province') }}
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="{{ $errors->has('pick_district') ? ' has-error' : '' }}">
                                    <label for="pick_district" class="control-label">Quận/huyện <span class="required">*</span></label>
                                    <input type="text" id="pick_district" name="pick_district"
                                           value="{!! old()?old('pick_district'):$obj['pick_district']??'' !!}"
                                           class="form-control pick_district" placeholder="" />
                                    <small>Quận/huyện nơi lấy hàng hóa</small>
                                    @if ($errors->has('pick_district'))
                                        <span class="help-block">
                                                {{ $errors->first('pick_district') }}
                                            </span>
                                    @endif
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="{{ $errors->has('pick_ward') ? ' has-error' : '' }}">
                                    <label for="pick_ward" class="control-label">Xã/phường/thị trấn</label>
                                    <input type="text" id="pick_ward" name="pick_ward" value="{!! old()?old('pick_ward'):$obj['pick_ward']??'' !!}"
                                           class="form-control pick_ward" placeholder="" />
                                    <small>Xã/phường/thị trấn nơi lấy hàng hóa</small>
                                    @if ($errors->has('pick_ward'))
                                        <span class="help-block">
                                                {{ $errors->first('pick_ward') }}
                                            </span>
                                    @endif
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="{{ $errors->has('pick_street') ? ' has-error' : '' }}">
                                    <label for="pick_street" class="control-label">Tên đường/phố</label>
                                    <input type="text" id="pick_street" name="pick_street" value="{!! old()?old('pick_street'):$obj['pick_street']??'' !!}"
                                           class="form-control pick_street" placeholder="" />
                                    <small>Tên đường phố nơi lấy hàng hóa</small>
                                    @if ($errors->has('pick_street'))
                                        <span class="help-block">
                                                {{ $errors->first('pick_street') }}
                                            </span>
                                    @endif
                                </div>
                            </div>
                        </div>

                        <div class="fields-group col-sm-12">
                            <div class="col-sm-12">
                                <div class="{{ $errors->has('pick_address') ? ' has-error' : '' }}">
                                    <label for="pick_address" class="control-label">Địa chỉ <span class="required">*</span></label>
                                    <input type="text" id="pick_address" name="pick_address" value="{!! old()?old('pick_address'):$obj['pick_address']??'' !!}"
                                           class="form-control pick_address" placeholder="" />
                                    <small>Ví dụ: Số 11, Tổ 3</small>
                                    @if ($errors->has('pick_address'))
                                        <span class="help-block">
                                                {{ $errors->first('pick_address') }}
                                            </span>
                                    @endif
                                </div>
                            </div>
                        </div>

                        <div class="fields-group col-sm-12">
                            <div class="col-sm-12">
                                <div class="{{ $errors->has('is_primary') ? ' has-error' : '' }}">
                                    <input type="hidden" value="0" name="is_primary" checked/>
                                    <input type="checkbox" value="1" id="is_primary" name="is_primary" {!! old('is_primary') || $obj['is_primary'] ? 'checked' : '' !!} class="form-check-input is_primary"/>
                                    <label for="is_primary" class="form-check-label">Kho hàng chính (chỉ chọn 1, sẽ ưu tiên chọn khi gửi đơn hàng lên GHTK)</label>
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
                </form>
            </div>
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
            <script>
                $(document).ready(function () {
                    get_province();
                });

                function get_province() {
                    let url = 'https://khachhang.giaohangtietkiem.vn/khach-hang/services/list-dia-chi-public';
                    let success = function (result) {
                        let rs = JSON.parse(result);
                        $('<option value="'+rs.id+'">'+rs.name+'</option>')
                    };
                    $.ajax({
                        url: url,
                        crossDomain: true,
                        type: "GET",
                        beforeSend: function(xhr){xhr.setRequestHeader('Access-Control-Allow-Origin', '*');},
                        success: success
                    });
                }
            </script>
    @endpush

@extends($templatePath.'.shop_layout')

@section('main')
<section >
<div class="container">
    <div class="row">
        <h2 class="title text-center">{{ $title }}</h2>
    </div>

    <div class="box collapsed-box">
        <div class="box-body">
            <form action="{{ route('affiliate.withdraw_info.store') }}" method="post" accept-charset="UTF-8" class="form-horizontal" id="form-main">
                <div class="box-body">
                    <div class="fields-group col-sm-12">
                        <div class="col-sm-6 col-md-push-3">
                            <div class="{{ $errors->has('bank') ? ' has-error' : '' }}">
                                <label for="bank" class="control-label">Chọn Ngân Hàng <span class="required">*</span></label>
                                <select name="bank" id="bank" class="select2" required>
                                    @foreach(get_vn_banks() as $bank)
                                        <option value="{{$bank}}">{{$bank}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="fields-group col-sm-12">
                        <div class="col-sm-6 col-md-push-3">
                            <div class="{{ $errors->has('branch') ? ' has-error' : '' }}">
                                <label for="branch" class="control-label">Chi nhánh <span class="required">*</span></label>
                                <input type="text" id="branch" name="branch" value="{!! old()?old('branch'):$obj['branch']??'' !!}"
                                       class="form-control branch" placeholder="" />
                                @if ($errors->has('branch'))
                                    <span class="help-block">
                                        {{ $errors->first('branch') }}
                                    </span>
                                @endif
                            </div>
                        </div>
                    </div>

                    <div class="fields-group col-sm-12">
                        <div class="col-sm-6 col-md-push-3">
                            <div class="{{ $errors->has('card_name') ? ' has-error' : '' }}">
                                <label for="card_name" class="control-label">Chủ khoản <span class="required">*</span></label>
                                <input type="text" id="card_name" name="card_name" value="{!! old()?old('card_name'):$obj['card_name']??'' !!}"
                                       class="form-control card_name" placeholder="" />
                                @if ($errors->has('card_name'))
                                    <span class="help-block">
                                        {{ $errors->first('card_name') }}
                                    </span>
                                @endif
                            </div>
                        </div>
                    </div>

                    <div class="fields-group col-sm-12">
                        <div class="col-sm-6 col-md-push-3">
                            <div class="{{ $errors->has('card_number') ? ' has-error' : '' }}">
                                <label for="card_number" class="control-label">Số tài khoản <span class="required">*</span></label>
                                <input type="text" id="card_number" name="card_number" value="{!! old()?old('card_number'):$obj['card_number']??'' !!}"
                                       class="form-control card_number" placeholder="" />
                                @if ($errors->has('card_number'))
                                    <span class="help-block">
                                        {{ $errors->first('card_number') }}
                                    </span>
                                @endif
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        @csrf
                        <div class="col-md-2">
                        </div>

                        <div class="col-md-7">
                            <div class="btn-group pull-right">
                                <button type="submit" class="btn btn-primary">{{ trans('admin.submit') }}</button>
                            </div>
                        </div>
                    </div>

                    <!-- /.box-footer -->
            </form>
        </div>
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
@push('styles')
    <!-- Select2 -->
    <link rel="stylesheet" href="{{ asset('admin/AdminLTE/bower_components/select2/dist/css/select2.min.css')}}">
    <style>
        .required {
            color: red !important;
        }
    </style>
@endpush

@push('scripts')
    <!-- Select2 -->
    <script src="{{ asset('admin/AdminLTE/bower_components/select2/dist/js/select2.full.min.js')}}"></script>
    <script>
        $(document).ready(function () {
            $('.select2').select2();
        });
    </script>
@endpush

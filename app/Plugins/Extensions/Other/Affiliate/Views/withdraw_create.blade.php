@extends($templatePath.'.shop_layout')

@section('main')
<section >
<div class="container">
    <div class="row">
        <h2 class="title text-center">{{ $title }}</h2>
    </div>

    <div class="box collapsed-box">
        <div class="box-body">
            <form action="{{ route('affiliate.withdraw.store') }}" method="post" accept-charset="UTF-8" class="form-horizontal" id="form-main">
                <div class="box-body">

                    <div class="fields-group col-sm-12">
                        <div class="col-sm-6 col-md-push-3">
                            <div class="{{ $errors->has('money') ? ' has-error' : '' }}">
                                <label for="branch" class="control-label">Nhập số tiền <span class="required">*</span></label>
                                <input type="number" min="{{get_min_withdraw()}}" max="{{$affiliate_user->affiliate_money}}" id="money" name="money" value="{!! old()?old('money'):$obj['money']??'' !!}"
                                       class="form-control money" placeholder="" />
                                @if ($errors->has('money'))
                                    <span class="help-block">
                                        {{ $errors->first('money') }}
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

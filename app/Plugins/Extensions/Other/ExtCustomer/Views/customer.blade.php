@extends('admin.layout')

@section('main')
   <div class="row">
      <div class="col-md-12">
         <div class="box">
                <div class="box-header with-border">
                    <h2 class="box-title">{{ $title_description??'' }}</h2>
                    <div class="box-tools">
                        <div class="btn-group pull-right" style="margin-right: 5px">
                            <a href="{{ route('admin_customer.index') }}" class="btn  btn-flat btn-default" title="List"><i class="fa fa-list"></i><span class="hidden-xs"> {{trans('admin.back_list')}}</span></a>
                        </div>
                    </div>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form action="{{ $url_action }}" method="post" accept-charset="UTF-8" class="form-horizontal" id="form-main"  enctype="multipart/form-data">
                    <div class="box-body">
                        <div class="fields-group">

                            <div class="form-group   {{ $errors->has('first_name') ? ' has-error' : '' }}">
                                <label for="first_name" class="col-sm-2  control-label">{{ trans('customer.first_name') }}</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="text"   id="first_name" name="first_name" value="{{ old('first_name',$customer['first_name']??'')}}" class="form-control first_name" placeholder="" />
                                    </div>
                                        @if ($errors->has('first_name'))
                                            <span class="help-block">
                                                {{ $errors->first('first_name') }}
                                            </span>
                                        @endif
                                </div>
                            </div>

                            <div class="form-group   {{ $errors->has('last_name') ? ' has-error' : '' }}">
                                <label for="last_name" class="col-sm-2  control-label">{{ trans('customer.last_name') }}</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="text"   id="last_name" name="last_name" value="{{ old('last_name',$customer['last_name']??'') }}" class="form-control last_name" placeholder="" />
                                    </div>
                                        @if ($errors->has('last_name'))
                                            <span class="help-block">
                                                {{ $errors->first('last_name') }}
                                            </span>
                                        @endif
                                </div>
                            </div>

                            <div class="form-group   {{ $errors->has('email') ? ' has-error' : '' }}">
                                <label for="email" class="col-sm-2  control-label">{{ trans('customer.email') }}</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-envelope-open-o fa-fw"></i></span>
                                        <input type="text"   id="email" name="email" value="{{ old('email',$customer['email']??'') }}" class="form-control email" placeholder="" />
                                    </div>
                                        @if ($errors->has('email'))
                                            <span class="help-block">
                                                {{ $errors->first('email') }}
                                            </span>
                                        @endif
                                </div>
                            </div>

                            <div class="form-group   {{ $errors->has('phone') ? ' has-error' : '' }}">
                                <label for="phone" class="col-sm-2  control-label">{{ trans('customer.phone') }}</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                        <input type="text"   id="phone" name="phone" value="{{ old('phone',$customer['phone']??'') }}" class="form-control phone" placeholder="" />
                                    </div>
                                        @if ($errors->has('phone'))
                                            <span class="help-block">
                                                {{ $errors->first('phone') }}
                                            </span>
                                        @endif
                                </div>
                            </div>

                            <div class="form-group  {{ $errors->has('country') ? ' has-error' : '' }}">
                                <label for="country" class="col-sm-2 control-label">{{ trans('customer.admin.select_country') }}</label>
                                <div class="col-sm-8">
                                    <select class="form-control country select2" style="width: 100%;" name="country" id="country">
                                        <option value=""></option>
                                        @foreach ($countries as $k => $v)
                                            <option value="{{ $k }}" {{ (old('country',$customer['country']??'') ==$k) ? 'selected':'' }}>{{ $v->name }}</option>
                                        @endforeach
                                    </select>
                                        @if ($errors->has('country'))
                                            <span class="help-block">
                                                {{ $errors->first('country') }}
                                            </span>
                                        @endif
                                </div>
                            </div>

                            <div class="form-group   {{ $errors->has('province') ? ' has-error' : '' }}">
                                <label for="province" class="col-sm-2  control-label">{{ trans((new App\Plugins\Extensions\Other\ExtCustomer\AppConfig())->pathPlugin.'::ExtCustomer.province') }}</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="text"   id="province" name="province" value="{{ old('province',$customer['province']??'') }}" class="form-control province" placeholder="" />
                                    </div>
                                    @if ($errors->has('province'))
                                        <span class="help-block">
                                                {{ $errors->first('province') }}
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group   {{ $errors->has('district') ? ' has-error' : '' }}">
                                <label for="district" class="col-sm-2  control-label">{{ trans((new App\Plugins\Extensions\Other\ExtCustomer\AppConfig())->pathPlugin.'::ExtCustomer.district') }}</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="text"   id="district" name="district" value="{{ old('district',$customer['district']??'') }}" class="form-control district" placeholder="" />
                                    </div>
                                    @if ($errors->has('district'))
                                        <span class="help-block">
                                                {{ $errors->first('district') }}
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group   {{ $errors->has('ward') ? ' has-error' : '' }}">
                                <label for="ward" class="col-sm-2  control-label">{{ trans((new App\Plugins\Extensions\Other\ExtCustomer\AppConfig())->pathPlugin.'::ExtCustomer.ward') }}</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="text"   id="ward" name="ward" value="{{ old('ward',$customer['ward']??'') }}" class="form-control ward" placeholder="" />
                                    </div>
                                    @if ($errors->has('ward'))
                                        <span class="help-block">
                                                {{ $errors->first('ward') }}
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group   {{ $errors->has('address') ? ' has-error' : '' }}">
                                <label for="address" class="col-sm-2  control-label">{{ trans('customer.address') }}</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="text" id="address" name="address" value="{{ old('address',$customer['address']??'') }}"
                                               class="form-control address" placeholder="" />
                                    </div>
                                    @if ($errors->has('address'))
                                        <span class="help-block">
                                                {{ $errors->first('address') }}
                                            </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group   {{ $errors->has('password') ? ' has-error' : '' }}">
                                <label for="password" class="col-sm-2  control-label">{{ trans('customer.password') }}</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span>
                                        <input type="password"   id="password" name="password" value="{{ old('password')??'' }}" class="form-control password" placeholder="" />
                                    </div>
                                        @if ($errors->has('password'))
                                            <span class="help-block">
                                                {{ $errors->first('password') }}
                                            </span>
                                        @else
                                            @if ($customer)
                                                <span class="help-block">
                                                     {{ trans('customer.admin.keep_password') }}
                                                 </span>
                                            @endif
                                        @endif
                                </div>
                            </div>

                            <div class="form-group  ">
                                <label for="status" class="col-sm-2  control-label">{{ trans('customer.status') }}</label>
                                <div class="col-sm-8">
                                    <input type="checkbox" name="status"  {{ old('status',(empty($customer['status'])?0:1))?'checked':''}}>

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
<!-- Select2 -->
<link rel="stylesheet" href="{{ asset('admin/AdminLTE/bower_components/select2/dist/css/select2.min.css')}}">

{{-- switch --}}
<link rel="stylesheet" href="{{ asset('admin/plugin/bootstrap-switch.min.css')}}">

@endpush

@push('scripts')
<!-- Select2 -->
<script src="{{ asset('admin/AdminLTE/bower_components/select2/dist/js/select2.full.min.js')}}"></script>

{{-- switch --}}
<script src="{{ asset('admin/plugin/bootstrap-switch.min.js')}}"></script>

<script type="text/javascript">
    $("[name='top'],[name='status']").bootstrapSwitch();
</script>

<script type="text/javascript">

$(document).ready(function() {
    $('.select2').select2();
});

</script>

@endpush

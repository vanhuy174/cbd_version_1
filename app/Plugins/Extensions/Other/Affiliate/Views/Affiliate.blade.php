@extends('admin.layout')

@section('main')
    <div class="box-header with-border">
        <h2 class="box-title">{{ $title_description??'' }}</h2>

        <div class="box-tools">
            <div class="btn-group pull-right" style="margin-right: 5px">
                <a href="{{ route('admin_extension',['extensionGroup'=>'Other']) }}" class="btn  btn-flat btn-default" title="List"><i class="fa fa-list"></i><span class="hidden-xs"> {{trans('admin.back_list')}}</span></a>
            </div>
        </div>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
        <table id="example2" class="table table-bordered table-hover">
            <thead>
            <tr>
                <th>{{ trans($pathPlugin.'::Affiliate.percent') }}</th>
                <th>{{ trans($pathPlugin.'::Affiliate.min_withdraw') }}</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <a href="#" class="updateData_num"
                       data-name="percent"
                       data-type="number"
                       data-pk="{{ $data['id'] }}"
                       data-url="{{ route('admin_extension.process',['group'=>$group,'key'=>$key]) }}"
                       data-title="{{ trans($pathPlugin.'::Affiliate.percent') }}">
                        {{ $data['percent'] }}
                    </a>
                </td>
                <td>
                    <a href="#" class="updateData_num"
                       data-name="min_withdraw"
                       data-type="number"
                       data-pk="{{ $data['id'] }}"
                       data-url="{{ route('admin_extension.process',['group'=>$group,'key'=>$key]) }}"
                       data-title="{{ trans($pathPlugin.'::Affiliate.min_withdraw') }}">
                        {{ $data['min_withdraw'] }}
                    </a>
                </td>
            </tr>
            </tbody>
            <tfoot>
            </tfoot>
        </table>
    </div>
    <!-- /.box-body -->
@endsection

@push('styles')
    <!-- Ediable -->
    <link rel="stylesheet" href="{{ asset('admin/plugin/bootstrap-editable.css')}}">
@endpush

@push('scripts')
    <!-- Ediable -->
    <script src="{{ asset('admin/plugin/bootstrap-editable.min.js')}}"></script>
    <script type="text/javascript">
        $(document).ready(function() {

            $.fn.editable.defaults.params = function (params) {
                params._token = "{{ csrf_token() }}";
                return params;
            };

            $('.updateData_num').editable({
                ajaxOptions: {
                    type: 'put',
                    dataType: 'json'
                },
                validate: function(value) {
                    if (value == '') {
                        return '{{  trans('admin.not_empty') }}';
                    }
                    if (!$.isNumeric(value)) {
                        return '{{  trans('admin.only_numeric') }}';
                    }
                }
            });
        });

    </script>

@endpush

@extends('admin.layout')

@section('main')
 <div class="row">
     <div class="col-md-12">
       <div class="box">
          <div class="box-header with-border">
              <h3 class="box-title">Chi Tiết Người Dùng</h3>
              <div class="box-tools not-print">
                  <div class="btn-group pull-right" style="margin-right: 0px">
                      <a href="{{ route('affiliate.user.index') }}" class="btn btn-sm btn-flat btn-default"><i class="fa fa-list"></i>&nbsp;{{ trans('admin.list') }}</a>
                  </div>
              </div>
          </div>

          <div class="row" id="order-body">
              <div class="col-sm-6">
                 <table class="table table-bordered">
                    <tr>
                      <td class="td-title">ID:</td>
                        <td>
                            <span>{{$a_user->user_id}}</span>
                        </td>
                    </tr>
                     <tr>
                         <td class="td-title">Mã Giới Thiệu:</td>
                         <td>
                             <span>{{is_null($a_user->affiliate_code) ? 'Chưa được cấp' : $a_user->affiliate_code}}</span>
                         </td>
                     </tr>
                     <tr>
                         <td class="td-title">Giới Thiệu Bởi:</td>
                         <td>
                             <span>{!! get_affiliate_name($a_user->parent_code) !!}</span>
                         </td>
                     </tr>
                     <tr>
                         <td class="td-title">Số Tiền Hiện Tại:</td>
                         <td>
                             <span class="text-success text-bold">{!! $a_user->affiliate_money !!}</span>
                         </td>
                     </tr>
                </table>
            </div>
              @if($a_user->user)
                  <div class="col-sm-6">
                      <table class="table table-bordered">
                          <tr>
                              <td class="td-title">Tên:</td>
                              <td>
                                  <span>{!! get_user_name($a_user->user->id) !!}</span>
                              </td>
                          </tr>
                          <tr>
                              <td class="td-title">Email:</td>
                              <td>
                                  <span>{{$a_user->user->email}}</span>
                              </td>
                          </tr>
                          <tr>
                              <td class="td-title">Số Điên Thoại:</td>
                              <td>
                                  <span>{{$a_user->user->phone}}</span>
                              </td>
                          </tr>
                          <tr>
                              <td class="td-title">Địa Chỉ:</td>
                              <td>
                                  <span>{{$a_user->user->address . ', '. $a_user->user->ward . ', '. $a_user->user->district . ', '. $a_user->user->province . ', '}}</span>
                              </td>
                          </tr>
                      </table>
                  </div>
              @else
                  <div class="col-sm-6">
                      <p>Người dùng không còn tồn tại trên hệ thống</p>
                  </div>
              @endif
          </div>
        </div>
    </div>
     <div class="col-md-12">
         <div class="box">
             <div class="box-header with-border">
                 <h3 class="box-title">Lịch Sử Rút Tiền</h3>
                 <div class="box-tools pull-right">
                     <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                     </button>
                 </div>
             </div>
             <div class="box-body">
                 @if (count($user_withdraws))
                     <table  class="table table-bordered" id="affiliate_list">
                         <thead>
                         <tr>
                             <th>STT</th>
                             <th>Sản Phẩm</th>
                             <th>Giá Điểm Thưởng</th>
                             <th>Trạng Thái</th>
                         </tr>
                         </thead>
                         <tbody>
                         </tbody>
                     </table>
                 @endif
             </div>
         </div>
     </div>
     <div class="col-md-6">
            <div class="box collapsed-box">
              <div class="box-header with-border">
                <h3 class="box-title">Lịch Sử Affiliate</h3>
                  <div class="box-tools pull-right">
                      <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                      </button>
                  </div>
              </div>

              <div class="box-body">
                    @if (count($a_history))
                      <table  class="table table-bordered" id="history">
                        <thead>
                          <th>{{ trans('order.history_staff') }}</th>
                          <th>{{ trans('order.history_content') }}</th>
                          <th>{{ trans('order.history_time') }}</th>
                        </thead>
                          <tbody>
                          @foreach ($a_history as $history)
                              <tr>
                                  <td>{{ \App\Admin\Models\AdminUser::find($history->admin_id)->name??'' }}</td>
                                  <td><div class="history">{!! $history->content !!}</div></td>
                                  <td>{{ $history->created_at }}</td>
                              </tr>
                          @endforeach
                          </tbody>
                      </table>
                    @endif
              </div>
            </div>
      </div>
     <div class="col-md-6">
         <div class="box collapsed-box">
             <div class="box-header with-border">
                 <h3 class="box-title">Danh Sách Giới Thiệu</h3>
                 <div class="box-tools pull-right">
                     <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                     </button>
                 </div>
             </div>

             <div class="box-body">
                 @if (count($childs))
                     <table  class="table table-bordered" id="affiliate_list">
                         <thead>
                         <tr>
                             <th>Người Dùng</th>
                             <th>Sở Hữu Số Tiền</th>
                         </tr>
                         </thead>
                         <tbody>
                         @foreach ($childs as $child)
                             <tr>
                                 <td>{!! get_user_name($child->user->id) !!}</td>
                                 <td>{{ $child->affiliate_money }}</td>
                             </tr>
                         @endforeach
                         </tbody>
                     </table>
                 @endif
             </div>
         </div>
     </div>
 </div>
@endsection


@push('styles')
    <link rel="stylesheet" href="{{asset('admin/AdminLTE/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css')}}">
    <style type="text/css">
        #history_paginate {
            padding: 10px 10px 10px 10px        ;
            height: 50px;
        }
        #history_paginate a.paginate_button {
            margin: 5px;
            cursor: pointer;
        }

        .paginate_button {
            margin: 5px;
            cursor: pointer;
        }
        .td-title{
            width: 35%;
            font-weight: bold;
        }

    </style>
@endpush
@push('scripts')
    <script src="{{asset('admin/AdminLTE/bower_components/datatables.net/js/jquery.dataTables.min.js')}}"></script>
    <script>
        $(document).ready(function() {
            $('#history').dataTable({
                'paging'      : true,
                'lengthChange': false,
                'searching'   : false,
                'ordering'    : false,
                'info'        : false,
                'autoWidth'   : false
            });
            $('#affiliate_list').dataTable({
                'paging'      : true,
                'lengthChange': false,
                'searching'   : false,
                'ordering'    : false,
                'info'        : false,
                'autoWidth'   : false
            });
        });
    </script>
@endpush

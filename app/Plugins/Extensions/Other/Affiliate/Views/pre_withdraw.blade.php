@extends('admin.layout')

@section('main')
 <div class="row">
     <div class="col-md-12">
       <div class="box">
          <div class="box-header with-border">
              <h3 class="box-title">Xác Nhận Lệnh Rút Tiền</h3>
              <div class="box-tools not-print">
                  <div class="btn-group pull-right" style="margin-right: 0px">
                      <a href="{{ route('affiliate.user_withdraw.index') }}" class="btn btn-sm btn-flat btn-default"><i class="fa fa-list"></i>&nbsp;{{ trans('admin.list') }}</a>
                  </div>
              </div>
          </div>

          <div class="row" id="order-body">
              <div class="col-sm-6">
                 <table class="table table-bordered">
                    <tr>
                      <td class="td-title">ID:</td>
                        <td>
                            <span>{{$user->id}}</span>
                        </td>
                    </tr>
                     <tr>
                         <td class="td-title">Tên:</td>
                         <td>
                             <span>{{$user->first_name . ' ' . $user->last_name}}</span>
                         </td>
                     </tr>
                     <tr>
                         <td class="td-title">Địa chỉ:</td>
                         <td>
                             <span>{!! get_user_address($user) !!}</span>
                         </td>
                     </tr>
                     <tr>
                         <td class="td-title">Số Tiền Hiện Tại:</td>
                         <td>
                             <span class="text-success text-bold">{!! $a_user->affiliate_money !!}</span>
                         </td>
                     </tr>
                     <tr>
                         <td class="td-title">Số Tiền Muốn Rút:</td>
                         <td>
                             <span class="text-success text-bold">{!! $withdraw->money !!}</span>
                         </td>
                     </tr>
                </table>
            </div>
              @if($a_user->user)
                  <div class="col-sm-6">
                      <table class="table table-bordered">
                          <tr>
                              <td class="td-title">Ngân hàng:</td>
                              <td>
                                  <span>{{ $bank_user->bank }}</span>
                              </td>
                          </tr>
                          <tr>
                              <td class="td-title">Chi nhánh:</td>
                              <td>
                                  <span>{{ $bank_user->branch }}</span>
                              </td>
                          </tr>
                          <tr>
                              <td class="td-title">Chủ khoản:</td>
                              <td>
                                  <span>{{ $bank_user->card_name }}</span>
                              </td>
                          </tr>
                          <tr>
                              <td class="td-title">Số tài khoản:</td>
                              <td>
                                  <span>{{ $bank_user->card_number }}</span>
                              </td>
                          </tr>
                      </table>
                  </div>
              @else
                  <div class="col-sm-6">
                      <p>Người dùng không còn tồn tại trên hệ thống</p>
                  </div>
              @endif

              <div class="row">
                  <div class="col-md-8 col-md-push-2">
                      <form action="{{ route('admin.withdraw.confirm', $withdraw->id) }}" method="post">
                          <div class="box-body">

                              <div class="form-group col-sm-12">
                                  <div class="col-sm-6 col-md-push-3">
                                      <div class="">
                                          <label for="transaction_id" class="control-label">Mã giao dịch ngân hàng</label>
                                          <input type="text" id="transaction_id" name="transaction_id" class="form-control" />
                                      </div>
                                  </div>
                              </div>
                              <div class="form-group col-sm-12">
                                  <div class="col-sm-6 col-md-push-3">
                                      <div class="">
                                          <label for="note" class="control-label">Ghi chú</label>
                                          <input type="text" id="note" name="note" class="form-control" />
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
                      </form>
                  </div>
              </div>
          </div>
        </div>
    </div>
 </div>
@endsection

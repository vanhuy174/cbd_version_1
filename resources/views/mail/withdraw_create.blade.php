@extends('mail.layout')

@section('main')
    <tr style="background:#fff">
        <td align="left" height="auto" style="padding:15px" width="600">
            <table >
                <tbody>
                <tr>
                    <td>
                        <h1 style="font-size:17px;font-weight:bold;color:#444;padding:0 0 5px 0;margin:0">Cảm ơn quý
                            khách {{$user->first_name . ' ' .$user->last_name}} đã sử dụng dịch vụ tại HempPlus,</h1>

                        <p style="margin:4px 0;font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px;font-weight:normal">
                            Chúng tôi rất vui thông báo yêu cầu rút tiền #{{$withdraw->id}} của quý khách đã được tiếp nhận và đang
                            trong quá trình xử lý. Tiền của quý khách sẽ được chuyển về tài khoản ngân hàng từ 24h - 48h kể từ sau khi yêu cầu được xác nhận</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2 style="text-align:left;margin:10px 0;border-bottom:1px solid #ddd;padding-bottom:5px;font-size:13px;color:#02acea">
                            CHI TIẾT YÊU CẦU RÚT TIỀN #{{$withdraw->id}}</h2>
                        <table border="0" cellpadding="0" cellspacing="0" style="background:#f5f5f5" width="100%">
                            <thead>
                            <tr>
                                <th align="left" bgcolor="#02acea"
                                    style="padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px">
                                    Số Tiền
                                </th>
                                <th align="left" bgcolor="#02acea"
                                    style="padding:6px 9px;color:#fff;font-family:Arial,Helvetica,sans-serif;font-size:12px;line-height:14px">
                                    Ngày Rút
                                </th>
                            </tr>
                            </thead>
                            <tbody bgcolor="#eee"
                                   style="font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px">
                            <tr>
                                <td>{{$withdraw->money}}</td>
                                <td>{{$withdraw->created_at}}</td>
                            </tr>
                            </tbody>
                            <tfoot style="font-family:Arial,Helvetica,sans-serif;font-size:12px;color:#444;line-height:18px">
                            <tr bgcolor="#eee">
                                <td align="right" colspan="1" style="padding:7px 9px"><strong><big>Tổng giá trị</big> </strong></td>
                                <td align="right" style="padding:7px 9px"><strong><big><span>{{$withdraw->money}}</span> </big>
                                    </strong></td>
                            </tr>
                            </tfoot>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td> 
{{--                        <a class="invoice-btn" href="{{route('affiliate.withdraw.print', $withdraw->id)}}">Xuất Hóa Đơn</a>--}}
                        <p style="font-family:Arial,Helvetica,sans-serif;font-size:12px;margin:0;padding:0;line-height:18px;color:#444;font-weight:bold">
                            Một lần nữa HempPlus cảm ơn quý khách.</p>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
@endsection

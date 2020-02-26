<!doctype html>
<html lang="vi">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Hóa Đơn Bán Hàng #{{$order->id}}</title>
    <link rel="stylesheet" href="https://printjs-4de6.kxcdn.com/print.min.css">
    <link rel="stylesheet" href="{{asset('css/invoice.css')}}">
</head>
<body>
<div id="pdf">
    <div class="inner">
        <div class="heading">
            <p style="margin-top: 0">HEMPPLUS.NET</p>
            <p class="fs14">{{ sc_store('address') }}</p>
            <h2 class="bold">HÓA ĐƠN BÁN HÀNG</h2>
            <table class="info">
                <tr>
                    <td>Tên khách hàng: {{$order->first_name . ' ' .$order->last_name}}</td>
                    <td>Ngày: {{date('d/m/Y')}}</td>
                </tr>
                <tr>
                    <td>Địa chỉ: {{$order->address . ', ' . $order->ward . ', ' . $order->district . ', ' . $order->province}}</td>
                    <td>Số: {{$order->id}}</td>
                </tr>
                <tr>
                    <td>Mã số thuế:</td>
                    <td>Loại tiền: VNĐ</td>
                </tr>
                <tr>
                    <td>Diễn giải: {{$order->comment}}</td>
                </tr>
            </table>
            <table class="product" border="1">
                <thead class="bold">
                    <tr>
                        <td style="width: 7%;">STT</td>
                        <td style="width: 17%;">Mã hàng</td>
                        <td style="width: 30%;">Diễn giải</td>
                        <td style="width: 8%;">Đơn vị</td>
                        <td style="width: 10%;">Số lượng</td>
                        <td>Đơn giá</td>
                        <td>Thành tiền</td>
                    </tr>
                </thead>
                <tbody>
                    @if (!empty($order->details))
                        @foreach($order->details as $key => $item)
                            <tr>
                                <td>{{$key+1}}</td>
                                <td>{{$item->sku}}</td>
                                <td>{{$item->name}}</td>
                                <td></td>
                                <td class="text-right">{{$item->qty}}</td>
                                <td class="text-right">{{format_money($item->price)}}</td>
                                <td class="text-right">{{format_money($item->total_price)}}</td>
                            </tr>
                        @endforeach
                    @endif
                    <tr>
                        <td colspan="2" >Tỷ lệ CK:</td>
                        <td colspan="3" class="border-unset">Số tiền chiết khấu</td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td colspan="3" class="border-unset">Cộng tiền hàng (đã trừ triết khấu):</td>
                        <td colspan="2" class="text-right bold">{{format_money($order->subtotal)}}</td>
                    </tr>
                    <tr>
                        <td colspan="2">Thuế suất thuế</td>
                        <td colspan="3" class="border-unset">Tiền thuế GTGT:</td>
                        <td colspan="2"></td>
                    </tr>
                    <tr>
                        <td colspan="2"></td>
                        <td colspan="3" >Tổng tiền thanh toán:</td>
                        <td colspan="2" class="text-right bold">{{format_money($order->subtotal)}}</td>
                    </tr>
                    <tr>
                        <td colspan="7" class="bold">Tổng số tiền (Viết bằng chữ): {{first_uppercase($order->subtotal)}} đồng chẵn</td>
                    </tr>
                </tbody>
            </table>
            <p class="fs14">Quy đổi: <span class="bold">{{format_money($order->subtotal)}}</span></p>
            <p class="fs14">Số nợ của quý khách đến cuối ngày là:</p>
            <table class="sign">
                <tr class="bold">
                    <td>Người mua hàng</td>
                    <td>Kế toán trưởng</td>
                    <td>Giám đốc</td>
                </tr>
                <tr class="tri">
                    <td>(Ký, họ tên)</td>
                    <td>(Ký, họ tên)</td>
                    <td>(Ký, họ tên, đóng dấu)</td>
                </tr>
            </table>
        </div>
    </div>
</div>
<script src="{{asset('admin/AdminLTE/bower_components/jquery/dist/jquery.min.js')}}"></script>
<script src="https://printjs-4de6.kxcdn.com/print.min.js"></script>
<script>
    $(document).ready(function () {
        printJS({
            printable: 'pdf',
            type: 'html',
            css: ['{{asset('css/invoice.css')}}']
        });
    })
</script>
</body>
</html>

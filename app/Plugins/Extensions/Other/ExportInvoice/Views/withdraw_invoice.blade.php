<!doctype html>
<html lang="vi">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Hóa Đơn Rút Tiền #{{$withdraw->id}}</title>
    <link rel="stylesheet" href="https://printjs-4de6.kxcdn.com/print.min.css">
    <link rel="stylesheet" href="{{asset('css/invoice.css')}}">
</head>
<body>
<div id="pdf">
    <div class="inner">
        <div class="heading">
            <p style="margin-top: 0">HEMPPLUS.NET</p>
            <p class="fs14">{{ sc_store('address') }}</p>
            <h2 class="bold">HÓA ĐƠN RÚT TIỀN</h2>
            <table class="info">
                <tr>
                    <td>Tên khách hàng: {{$user->first_name . ' ' .$user->last_name}}</td>
                    <td>Ngày: {{date('d/m/Y')}}</td>
                </tr>
                <tr>
                    <td>Địa chỉ: {{$user->address . ', ' . $user->ward . ', ' . $user->district . ', ' . $user->province}}</td>
                    <td>Số: {{$withdraw->id}}</td>
                </tr>
                <tr>
                    <td>Mã số thuế:</td>
                    <td>Loại tiền: VNĐ</td>
                </tr>
                <tr>
                    <td>Diễn giải: {{$withdraw->note}}</td>
                </tr>
            </table>
            <table class="product" border="1">
                <thead class="bold">
                    <tr>
                        <td>STT</td>
                        <td>Số Tiền</td>
                        <td>Ngày Rút</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td class="text-right">{{format_money($withdraw->money)}}</td>
                        <td class="text-right">{{$withdraw->created_at}}</td>
                    </tr>
                    <tr>
                        <td>Tỷ lệ CK:</td>
                        <td class="border-unset">Số tiền chiết khấu</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="border-unset">Cộng tiền hàng (đã trừ triết khấu):</td>
                        <td class="text-right bold">{{format_money($withdraw->money)}}</td>
                    </tr>
                    <tr>
                        <td >Thuế suất thuế</td>
                        <td class="border-unset">Tiền thuế GTGT:</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>Tổng điểm thanh toán:</td>
                        <td class="text-right bold">{{format_money($withdraw->money)}}</td>
                    </tr>
                    <tr>
                        <td colspan="3" class="bold">Tổng số tiền (Viết bằng chữ): {{first_uppercase((int)$withdraw->money)}} đồng chẵn</td>
                    </tr>
                </tbody>
            </table>
            <br>
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

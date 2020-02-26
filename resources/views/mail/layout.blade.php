<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto&display=swap');
    </style>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            color: #444;
        }

        .inner {
            width: 100%;
            height: 100%;
            background: #fafafa;
            padding-top: 10px;
        }

        table {
            border-collapse: collapse;
            border: 0;
            max-width: 768px !important;
            margin: auto;
            background: white;
        }

        td {
            padding-left: 40px;
        }

        .head {
            background-color: rgb(1, 144, 74);
            height: 85px;
        }

        .head > span {
            color: white;
            font-weight: bold;
        }

        .head > a {
            color: white;
            text-decoration: none;
        }

        .main {
            padding: 40px;
        }

        .foot-line {
            background: #fafafa none no-repeat center/cover;
            border-top: 0;
            border-bottom: 0;
            padding-top: 9px;
            padding-bottom: 9px
        }
        .invoice-btn {
            font-size: 14px;
            padding: 20px;
            text-decoration: none;
            display: block;
            padding-left: 0;
        }
    </style>
</head>

<body>
<div class="inner">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td class="head">
                <span>HempPlus</span><br>
                <a href="http://hempplus.net/">hempplus.net</a>
            </td>
        </tr>
        <tr>
            <td class="main">
                @yield('main')
            </td>
        </tr>
        <tr>
            <td class="foot">
                <p align="left" style="font-size:13px;line-height:1.3">

                    <strong style="text-transform:uppercase">HempPlus</strong><br>
                    • A: {{ sc_store('address') }}<br>
                    • T: {{ sc_store('phone') }}<br>
                    • E: {{ sc_store('email') }}<br>
                </p></td>
        </tr>
        <tr>

            <td valign="top" style="background:#ffffff none no-repeat center/cover;background-color:#ffffff;border-top:0;border-bottom:2px solid #eaeaea;padding-top:0px;padding-bottom:0px">

                <table align="left" border="0" cellpadding="0" cellspacing="0" width="300" style="border-collapse:collapse">

                    <tbody>

                    <tr>

                        <td valign="top"></td>

                    </tr>

                    </tbody>

                </table>

                <table align="left" border="0" cellpadding="0" cellspacing="0" width="300" style="border-collapse:collapse">

                    <tbody>

                    <tr>

                        <td valign="top"></td>

                    </tr>

                    </tbody>

                </table>

            </td>

        </tr>
        <tr>
            <td valign="top" class="foot-line">&nbsp;</td>
        </tr>
    </table>
</div>
</body>

</html>

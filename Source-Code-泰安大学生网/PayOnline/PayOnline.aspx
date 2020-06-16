<%@ page language="C#" responseencoding="utf-8" autoeventwireup="true" inherits="ZoomLa.WebSite.Shop.PayOnline, App_Web_zfj3n4az" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>在线支付</title>
    <link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
    <link href="../User/css/commentary.css" rel="stylesheet" type="text/css" />
    <link href="../User/css/default1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <asp:PlaceHolder ID="form1" runat="server">
        <table class="border" align="center" cellspacing="1" id="display1" runat="server">
            <tr class="title">
                <td>
                    <strong>在线支付操作（确认支付款项)</strong>
                </td>
            </tr>
            <tr>
                <td class="tdbg">
                    <div class="p_center">
                        <table width="500" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">
                            <tr class="title">
                                <td colspan="2">
                                    <b>确 认 款 项</b>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td style="width: 30%" align="right">
                                    支付平台：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblPayPlatform" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    订单号：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblOid" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    支付金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblPayMoney" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    手续费：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblRate" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    实际划款金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblvMoney" runat="server"> </asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td colspan="2">
                                    点击“确认支付”按钮后，将进入在线支付界面。
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td colspan="5">
                                    <asp:Label ID="LblHiddenValue" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
        <table class="border" align="center" cellspacing="1" id="display2" runat="server">
            <tr class="title">
                <td>
                    <strong>恭喜您，下单成功！</strong>
                </td>
            </tr>
            <tr>
                <td class="tdbg">
                    <div class="p_center">
                        <table width="500" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">
                            <tr class="title">
                                <td colspan="2">
                                    <b>确 认 款 项</b>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td style="width: 30%" align="right">
                                    支付方式：
                                </td>
                                <td align="left">
                                    <asp:Label ID="zfpt" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    订单号：
                                </td>
                                <td align="left">
                                    <asp:Label ID="ddh" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    支付金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="zfje" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    手续费：
                                </td>
                                <td align="left">
                                    <asp:Label ID="sxf" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    实际金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="sjhbje" runat="server"> </asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td colspan="2">
                                    <input id="bt1" type="button" onclick="window.close();" value="关闭窗口" />
                                    <input id="bt2" type="button" value="返回首页" onclick="location.href='/';" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </asp:PlaceHolder>
</body>
</html>
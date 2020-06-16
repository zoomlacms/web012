<%@ page language="C#" autoeventwireup="true" inherits="PayOnline_ShowReturn, App_Web_zfj3n4az" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="border" cellspacing="1" align="center">
    <tr class="title">
            <td>
                在线支付信息</td>
        </tr>
        <tr class="tdbg">
            <td style=" text-align:center;">
                <br />
                <table width="500px" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">                        
                    <tr class="tdbg">
                        <td style="width: 30%; text-align: right;">
                            支付平台：</td>
                        <td style="text-align: left;">
                            <asp:Label ID="LblPlat" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td style="width: 30%; text-align: right;">
                            支付序号：</td>
                        <td style="text-align: left;">
                            <asp:Label ID="LblPayNum" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td style="text-align: right;">
                            你支付的金额：</td>
                        <td style="text-align: left;">
                            <asp:Label ID="LblMoney" runat="server" Text="Label"></asp:Label>
                            </td>
                    </tr>
                    <tr class="tdbg">
                        <td style="text-align: right;">
                            状态信息：</td>
                        <td style="text-align: left;">
                            <asp:Label ID="LblStatus" runat="server" Text="Label"></asp:Label>
                            </td>
                    </tr>
                    <tr class="tdbg">
                        <td colspan="2">
                            <asp:Literal ID="LitLink" runat="server"></asp:Literal>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>

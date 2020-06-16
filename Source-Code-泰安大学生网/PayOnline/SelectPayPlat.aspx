<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Shop.SelectPayPlat, App_Web_zfj3n4az" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>选择支付平台</title>
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
<link href="../User/css/commentary.css" rel="stylesheet" type="text/css" />
<link href="../User/css/default1.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<table class="border" cellspacing="1" align="center">
<tr class="title">
    <td>
        在线支付操作(选择支付平台)</td>
</tr>
<tr class="tdbg">
    <td style=" text-align:center;">
        <br />
        <table width="500px" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">
            <tr class="title">
                <td colspan="2">
                    <b>平台选择</b></td>
            </tr>
            <tr class="tdbg">
                <td style="width: 30%; text-align: right;">
                    支付平台：</td>
                <td style="text-align: left;">
                    <asp:DropDownList ID="DDLPayPlat" runat="server" Width="70px">
                    </asp:DropDownList></td>
            </tr>
            <tr class="tdbg">
                <td style="text-align: right;">
                    请输入你支付的金额：</td>
                <td style="text-align: left;">
                    <asp:TextBox ID="TxtvMoney" Text="0" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr class="tdbg">
                <td colspan="2">
                    <asp:Button ID="BtnSubmit" runat="server" Text=" 下一步 " OnClick="BtnSubmit_Click" />
                </td>
            </tr>
        </table>
        <br />
    </td>
</tr>
</table>
</form>
</body>
</html>

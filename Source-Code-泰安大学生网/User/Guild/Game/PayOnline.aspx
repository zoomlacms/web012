<%@ page language="C#" autoeventwireup="true" inherits="User_Game_PayOnline, App_Web_pgzzoykh" enableeventvalidation="false" viewStateEncryptionMode="Never" %><html>
<head id="Head1" runat="server">
<title>选择支付平台</title>
<link href="../../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
<link href="../../User/css/commentary.css" rel="stylesheet" type="text/css" />
<link href="../../User/css/default1.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
    <asp:PlaceHolder ID="form1" runat="server">
        <br />
        <table cellspacing="1" align="left" cellpadding="2" style="width: 770px">
            <tr style="width: 800px">
                <td style="background-color: orange" colspan="2">
                    <h2 style="text-align: center;">
                        充值操作（确认充值款项）</h2>
                </td>
            </tr>
            <tr class="tdbg" style="width: 800px">
                <td style="text-align: right; width: 50%">
                    选择游戏：
                </td>
                <td style="text-align: left; width: 50%">
                    <asp:Label ID="gameName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" style="width: 800px">
                <td style="text-align: right;">
                    选择分区：
                </td>
                <td style="text-align: left;">
                    <asp:Label ID="areaName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" style="width: 800px">
                <td style="text-align: right;">
                    游戏账号：
                </td>
                <td style="text-align: left;">
                    <asp:Label ID="GameNum" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" style="width: 800px">
                <td style="text-align: right;">
                    支付平台：
                </td>
                <td style="text-align: left;">
                    <asp:Label ID="LblPayPlatform" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" style="width: 800px">
                <td style="text-align: right;">
                    支付序列号：
                </td>
                <td style="text-align: left;">
                    <asp:Label ID="LblOid" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" style="width: 800px">
                <td style="text-align: right;">
                    支付金额：
                </td>
                <td style="text-align: left;">
                    <asp:Label ID="LblPayMoney" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg">
                <td colspan="2" align="center">
                    <asp:Label ID="LblHiddenValue" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>         
    </asp:PlaceHolder>
</body>
</html>
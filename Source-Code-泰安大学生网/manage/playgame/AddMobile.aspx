<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_AddMobile, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>编辑在线支付平台</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>游戏管理</span> &gt;&gt; <a href="PayPlatManage.aspx">手机支付平台管理</a>
        &gt;&gt; <span>
            <asp:Label ID="LblAction" runat="server" Text="添加支付平台"></asp:Label></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="center">
            <td class="spacingtitle" colspan="2">
                <asp:Label ID="LblTitle" runat="server" Text="添加手机支付平台" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>授权通道接口URL：</strong>
            </td>
            <td>
                <asp:TextBox ID="LinkUrl" runat="server" Width="347px" class="l_input"></asp:TextBox>
                为防止恶意提交参数，请务必设置</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>移动通道号码：</strong>
            </td>
            <td>
                <asp:TextBox ID="Mact1" runat="server" Width="218px" class="l_input" />
                移动点播通道号；如1066XXXX</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>移动平台支付指令：</strong>
            </td>
            <td>
                <asp:TextBox ID="MNo1" runat="server" Width="218px" class="l_input"></asp:TextBox>
                接口商给你提供的指令如：AAB(就是确认你身份的代号）</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>联通通道号码：</strong>
            </td>
            <td>
                <asp:TextBox ID="Mact2" runat="server" Width="218px" class="l_input"></asp:TextBox>
                联通点播通道号；如1066XXXX</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>联通平台支付指令：</strong>
            </td>
            <td>
                <asp:TextBox ID="MNo2" runat="server" Width="218px" class="l_input"></asp:TextBox>
                接口商给你提供的指令如：AAB(就是确认你身份的代号）</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>小灵通通道号码：</strong>
            </td>
            <td>
                <asp:TextBox ID="Mact3" runat="server" Width="218px" class="l_input"></asp:TextBox>
                小灵通点播通道号；如1066XXXX</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>小灵通平台支付指令：</strong>
            </td>
            <td>
                <asp:TextBox ID="MNo3" runat="server" Width="218px" class="l_input"></asp:TextBox>
                接口商给你提供的指令如：AAB(就是确认你身份的代号）</td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="center">
                &nbsp;
                <asp:HiddenField ID="HdnPayPlatID" runat="server" />
                &nbsp;
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />&nbsp;
                &nbsp;
                <input name="Cancel" type="button" class="C_input" id="BtnCancel" value="取消"
                    onclick="window.location.href='MobileManage.aspx'" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

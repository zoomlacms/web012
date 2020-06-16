<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_AdvancedSettings, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>高级设置</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>设置</span> &gt;&gt; <span>高级设置</span> &gt;&gt; <span>注册用户协议</span>
    </div><br />
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="Div0" class="titlemouseover"><a href="AdvancedSettings.aspx">注册用户协议</a></td>
            <td id="Div1" class="tabtitle"><a href="Bbshtml.aspx">HTML代码设置</a></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td class="style1"></td>
            <td><asp:TextBox ID="TxtUserAgreement" runat="server" TextMode="MultiLine" Rows="5" Columns="60" Height="369px" Width="100%" class="l_input"></asp:TextBox></td>
        </tr>
    </table>
    <table border="0" width="100%" align="center">
        <tr>
            <td align="left" height="20"><asp:Button ID="SaveSet" runat="server" Text="保存设置" class="C_input" onclick="SaveSet_Click" /></td>
        </tr>
    </table>
    </form>
</body>
</html>

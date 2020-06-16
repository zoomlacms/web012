<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_Bbshtml, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>HTML代码设置</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
    .style1
    {
        width: 191px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt;<span>论坛管理</span> &gt;&gt; <span>设置</span> &gt;&gt; <span>高级设置</span> &gt;&gt; <span>HTML代码设置</span>
    </div><br />
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="Div0" class="tabtitle"><a href="AdvancedSettings.aspx">注册用户协议</a></td>
            <td id="Div1" class="titlemouseover"><a href="Bbshtml.aspx">HTML代码设置</a></td>
            <td> &nbsp;</td>
        </tr>
    </table>
    <table width="100%" cellspacing="1" cellpadding="0" class="border" border="0">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="center" class="style1"><b>页面顶部信息<br /> 放于Body内</b></td>
            <td ><asp:TextBox ID="TxtPageTopBody" runat="server" TextMode="MultiLine" Height="80px" Width="600px" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="center" class="style1" ><b>Banner (468 x 60)<br /> 顶部右侧位置 </b></td>
            <td ><asp:TextBox ID="TxtTopRightBanner" runat="server" TextMode="MultiLine" Height="80px" Width="600px" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="center" class="style1" ><b>页面底部信息<br /> 放于Body内</b></td>
            <td><asp:TextBox ID="TxtBottomPage" runat="server" TextMode="MultiLine"  Height="80px" Width="600px" class="l_input"></asp:TextBox></td>
        </tr>
    </table>
    <table border="0" width="100%" align="center">
        <tr>
            <td align="left" height="20"><asp:Button ID="SaveSet" runat="server" Text="保存设置" class="C_input" onclick="SaveSet_Click" />   </td>
        </tr>
    </table>
    </form>
</body>
</html>

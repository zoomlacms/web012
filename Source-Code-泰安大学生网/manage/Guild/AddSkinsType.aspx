<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_AddSkinsType, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<head id="Head1" runat="server">
<title>添加模板</title>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span><a href="SkinsManage.aspx">
            风格管理</a></span> &gt;&gt; <span><a href="SkinTypeManage.aspx">风格类型管理</a></span>
        &gt;&gt; <span>
            <asp:Label ID="lbldaohang" runat="server" Text="添加风格类型"></asp:Label></span></div>
    <div class="r_navigation">
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr>
                <td colspan="2" class="spacingtitle" align="center">
                    <asp:Label ID="lblhead" runat="server" Text="添加风格类型"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right" width=40%>
                    风格类型名称：
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px" class="l_input"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入风格类型" 
                            ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg">
                <td style="height: 21px" colspan="4" align="center">
                    <asp:Button ID="btnSave" runat="server" Text="保 存" Width="60px" OnClick="btnSave_Click" class="C_input"/>
                    &nbsp;&nbsp;
                    <input type="button" onclick="javascript:location.href='SkinTypeManage.aspx'" value="返 回" class="C_input"/>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="manage_Space_AddPresent, App_Web_mvb0v5df" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=title%>礼物</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript" language="javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; 空间管理 &gt;&gt; <span><a href="PresentList.aspx">
            空间礼物</a></span> &gt;&gt; <span>添加礼物</span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <%=title%>礼物
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">
                <strong>礼物名称：</strong>
            </td>
            <td width="76%" valign="middle">
                <asp:TextBox ID="txtName" runat="server" Width="272px" class="l_input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="请输入礼物名称" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">
                <strong>礼物类型：</strong>
            </td>
            <td width="76%" valign="middle">
                <asp:DropDownList ID="ddlPresentType" runat="server" >
                <asp:ListItem Value="1" > 鲜  花</asp:ListItem>
                <asp:ListItem Value="2" > 甜  点</asp:ListItem>
                <asp:ListItem Value="3" > 饰  品</asp:ListItem>
                <asp:ListItem Value="4" > 服  饰</asp:ListItem>
                <asp:ListItem Value="5" > 顶  级</asp:ListItem>
                <asp:ListItem Value="6" > 生  日</asp:ListItem>
                <asp:ListItem Value="7" > 爱  情</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">
                <strong>礼物价值：</strong>
            </td>
            <td width="76%" valign="middle">
                <asp:TextBox ID="txtmoney" runat="server" Width="272px" class="l_input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtmoney" ErrorMessage="请输入礼物价值"></asp:RequiredFieldValidator>
            </td>
        </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">
                <strong>礼物图片：</strong>
            </td>
            <td width="76%" valign="middle">
                <asp:TextBox ID="txtUpload" runat="server" Width="272px" class="l_input"></asp:TextBox>
                <iframe id="Iframe1" src="../Common/ThumbnailUpload.aspx?CID=Upload&ftype=1" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
            </td>
        </tr>
        <tr>
        <td colspan="2" align="center">
            <asp:Button ID="Button1" runat="server" Text="添 加" Width="80px" 
                onclick="Button1_Click" />
        </td>
        </tr>
    </table>
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="manage_Bull_AddBull, App_Web_tab2sdlr" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加牛</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>斗牛场管理</span> &gt;&gt; <span><a href="BullManage.aspx">
        管理牛</a></span> &gt;&gt; <a href="AddBull.aspx">[添加牛]</a></div>
<div class="clearbox">
</div>
<table width="100%" cellspacing="1" cellpadding="0" class="border">
    <tr class="spacingtitle">
        <td align="center" colspan="2" style="height: 30px;">
            <asp:Label ID="lblText" Text="添加牛" runat="server"></asp:Label>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td valign="top" align="right" style="width: 390px;">
            牛名称：
        </td>
        <td>
            <asp:TextBox ID="NiuName" runat="server" Width="336px" class="l_input" />
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td valign="top" align="right" style="width: 390px;">
            类型：
        </td>
        <td>
            <asp:RadioButtonList ID="NiuType" runat="server" RepeatDirection="Horizontal"
                AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="0">劳动牛</asp:ListItem>
                <asp:ListItem Value="1">战斗牛</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
        
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" style="width: 390px;">
            食草量：
        </td>
        <td>
            <asp:TextBox ID="Appetite" runat="server" Width="82px" class="l_input" />
            &nbsp;每小时
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" valign="top" style="width: 390px;">
            牛犊价格：
        </td>
        <td>
            <asp:TextBox ID="BuyMoney" runat="server" Width="81px" class="l_input" />
            &nbsp;金币
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" runat="server" id="s1">
        <td align="right" valign="top" style="width: 390px;">
            攻击：
        </td>
        <td>
            <asp:TextBox ID="Attack" runat="server" Width="81px" class="l_input" Height="18px" />
            &nbsp;点
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" runat="server" id="s2">
        <td align="right" valign="top" style="width: 390px;">
            防御：
        </td>
        <td>
            <asp:TextBox ID="Defense" runat="server" Width="81px" class="l_input" Height="18px" />
            &nbsp;点
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"  runat="server" id="s3">
        <td align="right" valign="top" style="width: 390px;">
            躲闪：
        </td>
        <td>
            <asp:TextBox ID="Dodge" runat="server" Width="81px" class="l_input" Height="18px" />
            &nbsp;点
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" runat="server" id="s4">
        <td align="right" valign="top" style="width: 390px;">
            速度：
        </td>
        <td>
            <asp:TextBox ID="Speed" runat="server" Width="81px" class="l_input" Height="18px" />
            &nbsp;点
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
        runat="server" id="s5">
        <td align="right" valign="top" style="width: 390px;">
            悟性：
        </td>
        <td>
            <asp:TextBox ID="Savvy" runat="server" Width="81px" class="l_input" Height="18px" />
            &nbsp;点
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" runat="server" id="s6">
        <td align="right" valign="top" style="width: 390px;">
            幸运：
        </td>
        <td>
            <asp:TextBox ID="Lucky" runat="server" Width="81px" class="l_input" Height="18px" />
            &nbsp;点
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" style="width: 390px;">
            缩略图：
        </td>
        <td>
            <asp:TextBox ID="smallimg" runat="server" Width="336px" class="l_input" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="smallimg" ErrorMessage="缩略图不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <iframe id="Iframe2" style="top: 2px; height: 35px" src="../shop/fileupload.aspx?menu=smallimg" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">
            </iframe>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" style="width: 390px;">
            清晰图：
        </td>
        <td>
            <asp:TextBox ID="BigImg" runat="server" Width="336px" class="l_input" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="BigImg"  ErrorMessage="清晰图不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <iframe id="Iframe1" style="top: 2px; height: 35px" src="../shop/fileupload.aspx?menu=BigImg" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">
            </iframe>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="EBtnSubmit" runat="server" Text="保存" class="C_input" 
                onclick="EBtnSubmit_Click" />
            <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" />
        </td>
    </tr>
</table>
<br />
</form>
</body>
</html>
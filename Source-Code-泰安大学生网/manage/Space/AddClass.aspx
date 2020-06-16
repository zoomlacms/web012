<%@ page language="C#" autoeventwireup="true" inherits="manage_Space_AddClass, App_Web_mvb0v5df" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>添加分类</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; 空间管理 &gt;&gt; <span><a href="AgioProject.aspx">
            分类管理</a></span> &gt;&gt; <span>
                    添加分类</span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                分类信息
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">
                <strong>分类名称：</strong>
            </td>
            <td width="76%" valign="middle">

                <asp:TextBox ID="TextBox1" runat="server" Width="232px" class="l_input"></asp:TextBox>

            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%" valign="top">
                <strong>所属分类：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="middle">
                <strong>分类说明：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:TextBox ID="TextBox2" runat="server" Height="59px" TextMode="MultiLine" 
                    Width="370px" class="l_input"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg">
            <td height="22" colspan="5" align="center" class="tdbgleft">
                <asp:Button ID="Button4" runat="server" Text="提  交" class="C_input"/>&nbsp;
                &nbsp; &nbsp;<input id="Button5" type="button" value="返  回" onclick="javascript:window.history.go(-1);" class="C_input"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

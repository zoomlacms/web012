<%@ page language="C#" autoeventwireup="true" inherits="manage_Space_AddObject, App_Web_mvb0v5df" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>添加装扮</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; 空间管理 &gt;&gt; <span><a href="AgioProject.aspx">
            装扮管理</a></span> &gt;&gt; <span>
                    添加装扮</span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                打折信息
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">
                <strong>打折方案名称：</strong>
            </td>
            <td width="76%" valign="middle">

            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%" valign="top">
                <strong>数量区限：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:TextBox ID="txtStartNum" runat="server" Width="90px" class="l_input"/>&nbsp; &nbsp; &gt; &nbsp;
                <asp:TextBox ID="txtEndNum" runat="server" Width="90px" class="l_input"/>购物数量
                <br />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>折扣：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:TextBox ID="txtAgio" runat="server" Width="30px" MaxLength="3" class="l_input"/>
                %</td>
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

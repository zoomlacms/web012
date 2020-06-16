<%@ page language="C#" autoeventwireup="true" inherits="manage_Space_AddPlate, App_Web_mvb0v5df" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>添加版式</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; 空间管理 &gt;&gt; <span><a href="PlateManage.aspx">
            版式管理</a></span> &gt;&gt; <span>
                    添加版式</span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                版式信息
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">
                <strong>版式名称：</strong>
            </td>
            <td width="76%" valign="middle">

                <asp:TextBox ID="TextBox2" runat="server" Width="272px" class="l_input"></asp:TextBox>

            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%" valign="top">
                <strong>版式说明：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:TextBox ID="TextBox3" runat="server" Width="272px" class="l_input"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>版式缩略图：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="196px" class="l_input"/>
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

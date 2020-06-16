<%@ page language="C#" autoeventwireup="true" inherits="manage_Bull_AddTreasures, App_Web_tab2sdlr" enableEventValidation="false" viewStateEncryptionMode="Never" %>


<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>添加场景</title>

   <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>斗牛场管理</span> &gt;&gt; <span><a href="SceneManage.aspx">宝贝管理</a></span> &gt;&gt; <a href="AddScene.aspx">[添加宝贝]</a></div>
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td align="center" colspan="2" style="height: 30px;">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 390px;">
                宝物名称：</td>
            <td>
                <asp:TextBox ID="TxtGroupName" runat="server" Width="336px" class="l_input" />
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 390px;">
                选择物品：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="336px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 390px;">
                爆出几率：</td>
            <td>
                <asp:TextBox ID="TxtSortOrder" runat="server" Width="161px" class="l_input" />
            &nbsp;%</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="EBtnSubmit" runat="server" Text="保存" class="C_input" />
                <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" />
            </td>
        </tr>
    </table>
    <br />
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_AddPhoneAlbums, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
<style type="text/css">
.style1
{
	width: 100px;
}
.style2
{
	width: 121px;
	height: 22px;
}
.style4
{
	width: 164px;
}
.style5
{
	height: 22px;
	width: 164px;
}
.style6
{
	width: 80px;
}
.style7
{
	width: 158px;
	height: 22px;
}
</style>
<link rel="stylesheet" type="text/css" href="../../Skin/User_Main.css" />
<link rel="stylesheet" type="text/css" href="../../Skin/user_user.css" />
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css"type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />    
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;">
        <table style="width: 54%; text-align: left;">
        <tr>
            <td class="style1">
                名字:</td>
            <td class="style4">
                <asp:TextBox ID="txtName" runat="server" Height="19px" Width="204px"></asp:TextBox>
            </td>
            <td class="style6">
                <font color="#999999">限20个汉字内</font></td>
        </tr>
        <tr>
            <td class="style2">
                说明:</td>
            <td class="style5">
                <asp:TextBox ID="txtshow" runat="server" Height="75px" Width="201px"></asp:TextBox>
            </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style1">
                谁能浏览:</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="1">所有人</asp:ListItem>
                    <asp:ListItem Value="2">我的好友</asp:ListItem>
                    <asp:ListItem Value="3">只有我自己</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Text="创建相册" CssClass="C_input" onclick="Button1_Click" />
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>

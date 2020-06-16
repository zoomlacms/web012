<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_EditPhone, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../../Skin/User_Main.css" />
<link rel="stylesheet" type="text/css" href="../../Skin/user_user.css" />
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css"type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />    
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.style1
{
	width: 86px; font-size:12px;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<div>
<table>
	<tr>
		<td align="center" colspan="2">
			<asp:Image ID="Image1" runat="server" Height="109px" Width="87px" />
		</td>
	</tr>
	<tr>
		<td class="style1">
			相册:</td>
		<td>
			<asp:DropDownList ID="ddlPhone" runat="server">
			</asp:DropDownList>
		</td>
	</tr>
	<tr>
		<td class="style1">
			描述:</td>
		<td>
			<asp:TextBox ID="txtContent" CssClass="l_input"  runat="server" Height="98px" Width="338px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td class="style1">
			&nbsp;</td>
		<td>
			<asp:Button ID="Button1" runat="server" CssClass="C_input" Text="确定修改" 
				Width="85px" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="Button2" runat="server" CssClass="C_input" Text="取消" 
				onclick="Button2_Click" />
		</td>
	</tr>
</table>
</div>
</form>
</body>
</html>

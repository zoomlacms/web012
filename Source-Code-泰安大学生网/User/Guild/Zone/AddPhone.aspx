<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_AddPhone, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
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
		width: 274px;
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
	.style8
	{
		height: 22px;
		width: 274px;
	}
</style>
</head>
<body>
<form id="form1" runat="server" enctype="multipart/form-data">
<div style="text-align:center; font-size:12px;">
<table style="width: 65%; text-align: left; height: 302px;">
<tr>
	<td class="style1">
		相册专辑:</td>
	<td class="style4">
		<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="118px">
		</asp:DropDownList>
		<asp:Label ID="Label1" runat="server" Text="lblId"></asp:Label>
		<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">点机新增相册</asp:LinkButton>
	</td>
	<td class="style6">
		&nbsp;</td>
</tr>
<tr>
	<td class="style2">
		本地相片1:</td>
	<td class="style5" colspan="2">
		<asp:FileUpload ID="fuImages1" runat="server" Width="192px" />
	</td>
</tr>
<tr>
	<td class="style2">
		说明:</td>
	<td class="style8">
		<asp:TextBox ID="txtShow1" runat="server" Height="22px" Width="201px" 
			CssClass="l_input"></asp:TextBox>
	</td>
	<td class="style7">
		</td>
</tr>
<tr>
	<td class="style2">
		本地相片2:</td>
	<td class="style5" colspan="2">
		<asp:FileUpload ID="fuImages2" runat="server" />
	</td>
</tr>
<tr>
	<td class="style2">
		说明:</td>
	<td class="style8">
		<asp:TextBox ID="txtShow2" runat="server" Height="22px" Width="201px" 
			CssClass="l_input"></asp:TextBox>
	</td>
	<td class="style7">
		</td>
</tr>
<tr>
	<td class="style2">
		本地相片3:</td>
	<td class="style5" colspan="2">
		<asp:FileUpload ID="fuImages3" runat="server" />
	</td>
</tr>
<tr>
	<td class="style2">
		说明:</td>
	<td class="style8">
		<asp:TextBox ID="txtShow3" runat="server" Height="22px" Width="201px" 
			CssClass="l_input"></asp:TextBox>
	</td>
	<td class="style7">
		</td>
</tr>
<tr>
	<td class="style2">
		本地相片4:</td>
	<td class="style5" colspan="2">
		<asp:FileUpload ID="fuImages4" runat="server" />
	</td>
</tr>
<tr>
	<td class="style2">
		说明:</td>
	<td class="style8">
		<asp:TextBox ID="txtShow4" runat="server" Height="22px" Width="201px" 
			CssClass="l_input"></asp:TextBox>
	</td>
	<td class="style7">
		</td>
</tr>
<tr>
	<td class="style2">
		本地相片5:</td>
	<td class="style5" colspan="2">
		<asp:FileUpload ID="fuImages5" runat="server" Width="196px" />
	</td>
</tr>
<tr>
	<td class="style2">
		说明:</td>
	<td class="style8">
		<asp:TextBox ID="txtShow5" runat="server" Height="22px" Width="201px" 
			CssClass="l_input"></asp:TextBox>
	</td>
	<td class="style7">
		</td>
</tr>
<tr>
	<td class="style1">
		&nbsp;</td>
	<td class="style4">
		<asp:Button ID="Button1" runat="server" Text="添加相片" onclick="Button1_Click" />
	</td>
	<td class="style6">
		&nbsp;</td>
</tr>
</table>
</div>
</form>
</body>
</html>

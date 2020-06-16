<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_AddState, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>更新我的状态</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
<div>
	<table width="100%">
		<tr>
			<td>
				更新我的状态
			</td>
		</tr>
		<tr>
			<td align="center">
				<asp:TextBox ID="txtState" runat="server" TextMode="MultiLine" Height="80px" Width="200px"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td align="center">
				<asp:Button ID="Button1" runat="server" Text="更 新" onclick="Button1_Click" />
			</td>
		</tr>
	</table>
</div>
</form>
</body>
</html>

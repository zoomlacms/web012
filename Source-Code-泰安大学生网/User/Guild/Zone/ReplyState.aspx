<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_ReplyState, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
</head>
<body>
<form id="form1" runat="server">
<div>
	<br />
	<br />
	<br />
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
	<td align="center">内容:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TEXTAREA1"
			ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
	<td><textarea cols="30" rows="6" id="TEXTAREA1" runat="server"></textarea></td>
  </tr>
  <tr>
	<td width="16%" align="center"></td>
	<td width="84%">&nbsp;<asp:Button ID="savebtn" runat="server" Text="回  复" Width="103px" onclick="savebtn_Click" /></td>
  </tr>
</table>
</div>
</form>
</body>
</html>

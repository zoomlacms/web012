<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_HailfellowList, App_Web_fll2klj3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的好友</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
   <div> 
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr><td>
<a href="HailfellowList.aspx">我的好友</a>
</td>
<td>
<a href="UserQuestFriend.aspx">查找好友</a>
</td>
</tr>
</table>
</div>
<div>
 <div>
   <asp:Label ID="lblhailCount" runat="server" Text="" Visible="false"></asp:Label><%--共有<b> 位好友</b>--%></div>
	<asp:Repeater ID="Repeater1" runat="server">
		<ItemTemplate>
		   
			<table border="0" width="100%">
				<tr>
					<td width="10%">
						<%#GetUserImg(Eval("hailUID", "{0}"))%>
					</td>
					<td>
						<%# GetUserName(Eval("hailUID", "{0}"))%>
					</td>
					
					<td align="right">
						<a href="HailfellowList.aspx?fid=<%#Eval("hailUID") %>">删除好友</a>
					</td>
				</tr>
			</table>
		</ItemTemplate>
	</asp:Repeater>
	<asp:Label ID="Label1" runat="server" Text="暂无记录"></asp:Label>
</div>
</form>
</body>
</html>
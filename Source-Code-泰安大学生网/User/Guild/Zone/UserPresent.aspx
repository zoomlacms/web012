<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_UserPresent, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>送出的礼物</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td>
			送出的礼物
		</td>
	</tr>
	<tr>
		<td id="dd" runat="server">
			<a href="PresentList.aspx">赠送礼物</a> | <a href="MyPresent.aspx">收到的礼物</a> | <a href="UserPresent.aspx">
				送出的礼物</a>
		</td>
	</tr>
	<tr>
	<td>
		送出的礼物 | 
		<asp:Literal ID="Literal1" runat="server"></asp:Literal>
	</td>
	</tr>
			<tr>
	<td>
	<asp:Repeater ID="Repeater1" runat="server">
	<ItemTemplate>
	<table>
	<tr>
	<td rowspan="3"><%#GetImg(Eval("PID").ToString())%></td>
	</tr>
	<tr>
	<td style="height:5px">送给：<%#GetUserName(Eval("AcceptedUserID").ToString())%>&nbsp;<%#Eval("GiftTime")%></td>
	</tr>
	<tr>
	<td valign="top">&nbsp;附言：<%#Eval("GiftContent")%></td>
	</tr>
	</table>
	</ItemTemplate>
		</asp:Repeater>
	</td>
	</tr>
	<tr>
	<td>
	<asp:Panel ID="panelpage" runat="server">
				总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
					runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
				<asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;<asp:Label ID="FirstPage"
					runat="server"></asp:Label>
				<asp:Label ID="RePage" runat="server"></asp:Label>
				<asp:Label ID="NextPage" runat="server"></asp:Label>
				<asp:Label ID="EndPage" runat="server"></asp:Label>
			</asp:Panel>
	</td>
	</tr>
   
	</table>
<div>
</div>
</body>
</html>

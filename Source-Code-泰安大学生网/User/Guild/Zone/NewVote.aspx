<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_NewVote, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>最新投票</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" /> 
</head>
<body>
<form id="form1" runat="server">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
	<td align="left">
		<a href="ListVote.aspx">精彩投票</a> |<a href="NewVote.aspx">最新投票</a>|<a href="MyVote.aspx">我的投票</a>|<a
			href="#">好友的投票</a>|<a href="AddVote.aspx">发起投票</a>
	</td>
</tr>
<tr>
<td align="left">
<asp:DataList ID="dlVote" runat="server" Width="543px" 
	onitemcommand="dlVote_ItemCommand" >
	<ItemTemplate>
		<table style="width:100%; height: 102px;">
			<tr>
				<td class="style3" rowspan="2">
					<br />
					<asp:Image ID="Image1" runat="server" Height="105px" Width="68px" />
				</td>
				<td class="style4">
				<a href='VoteView.aspx?VID=<%#Eval("VID") %>'><%#Eval("VoteTitle","{0}") %></a>  &nbsp;&nbsp;
				<%#Eval("AddTime")%>
				</td>
				<td>
				</td>
			</tr>
			<tr>
				<td class="style5">
				</td>
				<td class="style6">
				</td>
			</tr>
			<tr>
				<td class="style3">
					<a href=""><%# getUserName(Eval("UserID", "{0}"))%></a></td>
				<td class="style4">
					&nbsp;</td>
				<td>
					<asp:LinkButton ID="LinkButton1" runat="server" CommandName="go" CommandArgument='<%#Eval("VID") %>'>去投票</asp:LinkButton>
				</td>
			</tr>
		</table>
	</ItemTemplate>
	<SeparatorTemplate>
		<hr />
	</SeparatorTemplate>
</asp:DataList>
 <ul>
			<li style="width: 98.5%; float: left; line-height: 28px; text-align: left;">共
				<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
				条记录
				<asp:Label ID="Toppage" runat="server" Text="" />
				<asp:Label ID="Nextpage" runat="server" Text="" />
				<asp:Label ID="Downpage" runat="server" Text="" />
				<asp:Label ID="Endpage" runat="server" Text="" />
				页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
				<asp:Label ID="pagess" runat="server" Text="" />
				条记录/页 转到第
				<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
				</asp:DropDownList>
				页 </li>
		</ul>
		</td>
</tr>
</table>
</form>
</body>

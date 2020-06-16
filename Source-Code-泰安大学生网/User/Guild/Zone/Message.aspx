<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_Message, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的留言</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
<tr>
	<td>
		<asp:Literal ID="Literal1" runat="server"></asp:Literal>我的留言
	</td>
</tr>
<tr>
	<td>
		<asp:Literal ID="Literal2" runat="server"></asp:Literal>
	</td>
</tr>
<tr>
	<td align="center">
		<asp:Repeater ID="repMessage" runat="server" onitemcommand="repMessage_ItemCommand">
			<ItemTemplate>
				<table width="100%">
					<tr>
						<td align="center" style="width: 80px">
							<%#GetUserFace(Eval("UserID").ToString())%>
						</td>
						<td valign="top" align="left">
						<%#GetUserName(Eval("UserID").ToString())%>&nbsp;&nbsp;说：<br />
						<%#Eval("MsgContent")%>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<%#Eval("AddTime")%>&nbsp;<asp:LinkButton ID="LinkButton1" OnClientClick="return confirm('你确定要删除这条留言吗？') " CommandName='<%#Eval("ID") %>' runat="server" >删除</asp:LinkButton>
						</td>
					</tr>
				</table>
				
			</ItemTemplate>
		</asp:Repeater>
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
<tr>
	<td align="center">
		<table cellpadding="0" cellspacing="0" border="0" width="70%">
			<tr>
				<td>
					<br />
					<asp:TextBox ID="txtContent" Width="400px" TextMode="MultiLine" Height="70px" 
						runat="server"></asp:TextBox>
					<br />
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
						ErrorMessage="请输入留言信息" ControlToValidate="txtContent"></asp:RequiredFieldValidator>
					<br />
				</td>
			</tr>
			<tr>
				<td>
					<asp:Button ID="Button1" runat="server" Text="发表留言" onclick="Button1_Click" />
				</td>
			</tr>

		</table>
	</td>
</tr>
</table>
</form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_ShowPhone, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
</head>
<body>
<form id="form1" runat="server">
<div>
	<table width="760px" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td>
				<h2>
					
				</h2>
			</td>
		</tr>
		<tr>
			<td align="center">
				&nbsp;<table width="300px">
					<tr>
						<td>
							<asp:Label ID="labCount" runat="server"></asp:Label></td>
						<td id="tdUp" runat="server" align="center">
						</td>
						<td id="tdDown" runat="server" align="center">
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td align="center">
				<asp:Image ID="img" runat="server" /></td>
		</tr>
		<asp:Panel ID="Panel1" runat="server" Width="760px">
			<tr>
				<td align="center">
					<table width="400px">
						<tr>
							<td style="height: 35px">
								<a href='EditPic.aspx?picID=<%=Request.QueryString["picID"].ToString()%>'>编辑这张相片</a></td>
							<td style="height: 35px">
								<asp:LinkButton ID="LinkButton3" runat="server" OnClientClick="return confirm('你确定要删除这张相片吗？')" CausesValidation="false">删除这张照片</asp:LinkButton></td>
						</tr>
						<tr>
							<td colspan="2" style="height: 35px">
								<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="false">把这张照片设为相册封面</asp:LinkButton></td>
						</tr>
					</table>
				</td>
			</tr>
		</asp:Panel>
		<tr>
			<td>
				发表评论
			</td>
		</tr>
		<tr>
			<td>
				&nbsp;
				
			</td>
		</tr>
		<tr>
		 <td align="center">
			<li style="height: 30px; text-align: center">共<asp:Label ID="Allnum" runat="server"
				Text=""></asp:Label>&nbsp;
				<asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
				<asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
				<asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
				<asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
				页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize"
					runat="server" Text=""></asp:Label>页
				<asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList
					ID="DropDownList1" runat="server" AutoPostBack="True">
				</asp:DropDownList>页</li>
		</td>
		</tr>
		<tr>
			<td align="center">
				<%=UserName %>
			</td>
		</tr>
		<tr>
			<td align="center" style="height: 172px">
				<textarea id="TextArea1" style="width: 400px; height: 150px" runat="server"></textarea>
				<br />
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入要发表的评论" ControlToValidate="TextArea1"></asp:RequiredFieldValidator></td>
		</tr>
		<tr>
			<td align="center">
				<asp:Button ID="Button1" runat="server" Text="发  表" OnClick="Button1_Click" /></td>
		</tr>
	</table>
</div>
</form>
</body>
</html>

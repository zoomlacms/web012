<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_PresentList, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>赠送礼物</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td>
			赠送礼物
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
			赠送给谁:
		</td>
	</tr>
	<tr>
		<td>
			<asp:DropDownList ID="ddlUser" runat="server" DataValueField="friendID" DataTextField="UserName">
			
			</asp:DropDownList>
		</td>
	</tr>
	<tr>
		<td align="center">
			<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">全部</asp:LinkButton>
			|
			<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">鲜花</asp:LinkButton>
			|
			<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">甜点</asp:LinkButton>
			|
			<asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">饰品</asp:LinkButton>
			|
			<asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">服饰</asp:LinkButton>
			|
			<asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">顶级</asp:LinkButton>
			|
			<asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">生日</asp:LinkButton>
			|
			<asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">爱情</asp:LinkButton>
			<asp:DataList ID="dlPresent" runat="server" RepeatColumns="8" DataKeyField="ID">
				<ItemTemplate>
					<table>
						<tr>
							<td align="center">
								<asp:ImageButton ID="ImageButton1" ImageUrl='<%#Eval("PresentImg")%>' runat="server"
									Width="80px" OnClick="ImageButton1_Click" />
							</td>
						</tr>
						<tr>
							<td align="center">
								<%#Eval("PresentName")%>
							</td>
						</tr>
						<tr>
							<td align="center">
								<font color="red">
									<%#Convert.ToDouble(Eval("PresentWorth")).ToString("f2")%></font>
							</td>
						</tr>
					</table>
				</ItemTemplate>
			</asp:DataList>
		</td>
	</tr>
	<tr>
		<td align="center">
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
			<table border="0" cellpadding="0" cellspacing="0" width="60%">
				<tr>
					<td align="left">
						附言：
					</td>
				</tr>
				<tr>
					<td>
						<br />
						<asp:TextBox ID="txtContent" Width="400px" Height="80px" TextMode="MultiLine" runat="server"></asp:TextBox>
					</td>
					<td rowspan="2">
						<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
						<asp:HiddenField ID="HiddenField1" runat="server" />
					</td>
				</tr>
				<tr>
					<td>
						<br />
						<asp:Button ID="Button1" runat="server" Text="送出礼物" Width="80px" OnClick="Button1_Click" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<div>
</div>
</form>
</body>
</html>

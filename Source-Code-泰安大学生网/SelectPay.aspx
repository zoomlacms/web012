<%@ page language="C#" autoeventwireup="true" inherits="SelectPay, App_Web_vs4ncjmc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>支付提交</title>
<link rel="stylesheet" type="text/css" href="user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="user/skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" >
				<tr>
					<td>订单号：</td>
					<td>
						<asp:TextBox ID="txtOrder" runat="server"></asp:TextBox>
					</td>
					<td>卡号：</td>
					<td>
					<asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
					</td>
					<td>
						<asp:Button ID="Button1" runat="server" Text=" 查 询 " onclick="Button1_Click" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%">
			<Columns>
			<asp:BoundField DataField="paymentNum" HeaderText="订单号" />
			<asp:BoundField DataField="GameUser" HeaderText="游戏帐号" />
			<asp:BoundField DataField="CardNum" HeaderText="充值卡号" />
			<asp:BoundField DataField="Money" HeaderText="充值金额" />
			<asp:BoundField DataField="PayTime" HeaderText="充值时间" />
			<asp:TemplateField HeaderText="充值状态">
			<ItemTemplate>
			<%#GetStatus(Eval("Status").ToString())%>
			</ItemTemplate>
			</asp:TemplateField>
			</Columns>
			</asp:GridView>
		</td>
	</tr>
</table>
</form>
</body>
</html>
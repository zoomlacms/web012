<%@ page language="C#" autoeventwireup="true" inherits="User_Default2, App_Web_sxbic0ln" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>充值区</title>
<style type="text/css">
body {font-size: 12px;}
table tr td { font-size: 12px; }
.td1 { border-bottom: 1px #DCE3EE solid; }
.myinput { border: 1px #ccc solid; background-color: #F5F5F5; height: 18px; line-height: 18px; }
.mybutton { border: 1px #DCE3EE solid; height: 28px; width: 80px; }
.STYLE1 { color: #FF0000; }
.button { font-size: 14px; font-weight: bold; background: url(images/g_rbg.gif) repeat-x; height: 30px; border: 1px solid #002D96; }
.font_1 { color: #2880B9; font-weight: bold; }
</style>
</head>
<body style="margin: 0;">
<form runat="server">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td height="100" bgcolor="#0066CB">
	&nbsp;&nbsp;<img alt="" src="images/top.gif" width="255" height="49" />
</td>
</tr>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
	<td>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td height="30" bgcolor="#EEF7FF">
					&nbsp;<span class="font_1">第一步A：选择游戏所在分区</span>
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF">
					<table width="100%" border="0" cellspacing="0" cellpadding="10">
						<tr>
							<td width="20%">
								游戏所在分区：
							</td>
							<td width="80%">
								&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td height="30" bgcolor="#EEF7FF">
					&nbsp;<span class="font_1">第一步B：填写玩家帐户和选择支付方式</span>
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="10">
						<tr>
							<td>
								玩家帐户：
							</td>
							<td>
								<span class="td1">
									<asp:TextBox runat="server" ID="userName"></asp:TextBox>
									<span class="STYLE1">
										<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="玩家帐户不能为空"
											ControlToValidate="userName"></asp:RequiredFieldValidator>
									</span></span>
							</td>
						</tr>
						<tr>
							<td width="20%">
								确认玩家帐户：
							</td>
							<td width="80%">
								<span class="td1">
									<asp:TextBox ID="UserName2" runat="server"></asp:TextBox>
									<span class="STYLE1">
										<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="userName"
											ControlToValidate="UserName2">两次密码输入不一致</asp:CompareValidator>
									</span></span>
							</td>
						</tr>
						<tr>
							<td>
								请选择支付方式：
							</td>
							<td>
								<asp:DropDownList ID="pay" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td>
								请选择金额：
							</td>
							<td>
								<asp:DropDownList ID="DropDownList2" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<div align="center">
						<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="下一步" Width="101px" />
						<label>
							&nbsp;</label>&nbsp;&nbsp;&nbsp;
						<asp:Button ID="Button2" runat="server" Text="取消" Width="104px" OnClick="Button2_Click" />
					</div>
				</td>
			</tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center">
					<img alt="" src="images/corp_03.jpg" width="130" height="50" /><img alt="" src="images/corp_01.jpg"
						width="130" height="50" /><img alt="" src="images/corp_05.jpg" width="140" height="50" /><img alt="" src="images/corp_06.jpg" /><img alt="" src="images/corp_04.jpg" />
				</td>
			</tr>
		</table>
</form>
</body>
</html>
<%@ page language="C#" autoeventwireup="true" inherits="User_Info_UserBank, App_Web_3lloejsh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
	<div class="us_showinfo">
			<span class="us_showinfo1">您好<asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>！</span>您现在的位置：<span
				id="YourPosition"><span><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName"
					runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; <a title="会员中心"
						href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a></span>
				&gt;&gt; <span><a href="UserInfo.aspx">账户管理</a></span><span> &gt;&gt; </span><span>银行信息</span></span>
	</div>
</div>
<div class="us_seta" style="margin-top: 10px;" id="manageinfos" runat="server">
	<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
</div>
<div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
	<h1 style="text-align: center">
		银行信息</h1>
	<table width="100%">
		<tr>
			<td align="right" width="40%">
				开户银行
			</td>
			<td>
				<asp:TextBox ID="txtBankName" runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td align="right" width="40%">
				开 户 人
			</td>
			<td>
				<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td align="right" width="40%">
				银行卡号
			</td>
			<td>
				<asp:TextBox ID="txtBankNumber" runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<asp:Button ID="Button1" runat="server" Text="提 交" onclick="Button1_Click" />
			</td>
		</tr>
	</table>
</div>
</form>
</body>
</html>

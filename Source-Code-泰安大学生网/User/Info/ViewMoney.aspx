<%@ page language="C#" autoeventwireup="true" inherits="User_Info_ViewMoney, App_Web_1fhfg1ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>金额明细记录</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
<div class="us_topinfo">
	<div class="us_showinfo">
			<span class="us_showinfo1">您好<asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>！</span>您现在的位置：<span
				id="YourPosition"><span><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName"
					runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; <a title="会员中心"
						href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a></span>
				&gt;&gt; <span><a href="UserInfo.aspx">账户管理</a></span><span> &gt;&gt; </span><span>
					金额明细详情</span></span>
	</div>
</div>
<div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
<h1 style="text-align:center">金额明细详情</h1>
<table style="width: 100%; margin: 0 auto;" cellpadding="0" cellspacing="0" class="border">
	<tr class="tdbg">
		<td style="width:20%; float:left;line-height:30px; text-align:right">
			日期时间：
		</td>
		<td style="width:80%;line-height:30px">
			<asp:Label ID="LblOperDate" runat="server" Text="Label"></asp:Label>
		</td>
	</tr>
	<tr class="tdbg">
		<td style="width:20%; float:left;line-height:30px; text-align:right">
			操作IP：
		</td>
		<td style="width:80%;line-height:30px">
			<asp:Label ID="LblOperatorIP" runat="server" Text="Label"></asp:Label>
		</td>
	</tr>  
	<tr class="tdbg">
		<td style="width:20%; float:left;line-height:30px; text-align:right">
			数量：
		</td>
		<td style="width:80%;line-height:30px">
			<asp:Label ID="LblCount" runat="server" Text="Label"></asp:Label>
		</td>
	</tr>  
	<tr class="tdbg">
		<td style="width:20%; float:left;line-height:30px; text-align:right">
			操作人：
		</td>
		<td style="width:80%;line-height:30px">
			<asp:Label ID="LblOperator" runat="server" Text="Label"></asp:Label>
		</td>
	</tr>  
	<tr class="tdbg">
		<td style="width:20%; float:left;line-height:30px; text-align:right">
			备注：
		</td>
		<td style="width:80%;line-height:30px">
			<asp:Label ID="LblDetail" runat="server" Text="Label"></asp:Label>
		</td>
	</tr>              
	<tr class="tdbgbottom">
		<td colspan="2" align="center">
			<input id="Button1" type="button" value="返回" onclick="javascript:location.href='MoneyInfo.aspx'" />              
		</td>
	</tr>
</table>
</div>
</body>
</html>

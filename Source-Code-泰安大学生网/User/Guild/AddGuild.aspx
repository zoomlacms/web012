<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_AddGuild, App_Web_gt4knn2i" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>申请公会</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
	<div class="us_showinfo">
			您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank">
<asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; 
</span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; 
</span><span><a title="我的公会" href="Default.aspx">我的公会</a></span></span>
	</div>
	<div class="cleardiv">
	</div>
</div>
 <div class="us_topinfo" style="margin-top:10px;">
	<a href="Default.aspx">我已加入的公会</a> |<a href="FoundGH.aspx">我已创建的公会</a>
	|<a href="GuildIndex.aspx">我是会长创建公会</a>|<a href="List.aspx">公会排行列表</a>
	</div>
	   <div style="margin-top:10px;">
  <div class="us_seta" style="margin-top:5px;">
	<h1><div align="center">
	我是会长创建公会</div></h1>
	  <li style="width:100%; float:left;line-height:30px">
<asp:Panel ID="panelCreate" runat="server">
<table width="100%"  align="center" class="us_seta">
	<tr>
		<td >
			公会名称:
		</td>
		<td>
			<asp:TextBox ID="txtGHName" runat="server"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
					ControlToValidate="txtGHName" ErrorMessage="请输入公会名称"></asp:RequiredFieldValidator>
			
		</td>
	</tr>
	<tr><td >公会独立二级域名：</td>
	<td>

		http:// <asp:TextBox ID="txtGmail" runat="server"></asp:TextBox><asp:Label ID="Label1"
			runat="server" Text=""></asp:Label>
		
	</td>
	</tr>
	<tr>
		<td>
			公会游戏种类:</td>
		<td>
			<asp:DropDownList ID="DrGameClass" runat="server">
			<asp:ListItem>-请选择-</asp:ListItem>
			</asp:DropDownList>
		</td>
	</tr>
	<tr>
		<td>
			所在地区:
		</td>
		<td>
			<asp:DropDownList ID="DropProvince" runat="server" 
				onselectedindexchanged="DropProvince_SelectedIndexChanged1" 
				AutoPostBack="True">
			<asp:ListItem>-请选择-</asp:ListItem>
			</asp:DropDownList>
			&nbsp;
			<asp:DropDownList ID="DropCity" runat="server" Visible="false">
			
			</asp:DropDownList>
		</td>
	</tr>
	<tr>
		<td>
			公会描述:</td>
		<td>
			<asp:TextBox ID="txtDescribe" runat="server" Height="101px" 
				TextMode="MultiLine" Width="311px"></asp:TextBox>
		</td>
	</tr>
	<tr>
	<td align="center" colspan="2">
	  <asp:Button ID="Button2" runat="server" Text="提交申请" onclick="Button2_Click" />
	</td>
	</tr>
  
   
</table>
</asp:Panel>  
</li>
</div>
</form>
</body>
</html>
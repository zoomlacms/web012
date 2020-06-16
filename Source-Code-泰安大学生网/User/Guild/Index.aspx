<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Index, App_Web_fll2klj3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<asp:Label ID="lblGhName" runat="server" Text="公会名称"></asp:Label>
<style>
	body
	{
		font-size: 12px;
		margin: 0;
		padding: 0;
		background-color: #111213;
		color: #CCCCCC;
		text-align: center;
	}
	.menu .menu1
	{
		height: 23px;
		width: 760px;
		float: left;
		font-size: 14px;
		color: #FFFFFF;
		padding-top: 7px;
		text-align: left;
	}
	.menu
	{
		width: 960px;
		height: 30px;
		margin-bottom: 2px;
		margin-right: auto;
		margin-left: auto;
	}
</style>
</head>
<body>
<div>
	<table width="100%" cellpadding="0" cellspacing="0">
		<tr>
			<td width="40%" height="28">
			</td>
			<td width="60%" align="right" background="images/topbar.gif">
				<div>
					<font color="#000000">用户昵称:</font><font color="#FF0000">
						<asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
					</font><font color="#000000">贡献度:</font><font color="#FF0000">0</font> <font color="#000000">
						短消息:</font><a href="#" target="_blank"> <font color="#FF0000">0</font></a> <a href="#"
							target="_blank"><font color="#000000">控制中心</font></a> | <a href="#" target="_blank">
								<font color="#000000">个人空间</font></a> | <a href="#"><font color="#000000">退出登录</font></a>&nbsp;
							
				</div>
			</td>
		</tr>
	</table>
</div>
<div class="menu">
	<div class="menu1">
		<a href="Index.aspx">首页</a> | <a href="#">文章</a> | <a href="#">相册</a> | <a href="#">
			视频</a> | <a href="#">成员</a> | <a href="#">贡献</a> | <a href="#">商城</a> | <a href="#">
				语音</a>|<a href="#">Flash</a> | <a href="#">论坛</a> | <a href="#">管理</a></div>
	<div align="right">
		<a href="http://bbs.u9u8.com/bbs_tz_list.asp?q_id=3&amp;bbs_id=15" class="link1"
			target="_blank">内测号发放</a>&nbsp; <a href="http://bbs.u9u8.com/bbs_tz_list.asp?q_id=4&amp;bbs_id=4"
				class="link1" target="_blank">帮助</a>&nbsp;</div>
</div>
</body>
</html>
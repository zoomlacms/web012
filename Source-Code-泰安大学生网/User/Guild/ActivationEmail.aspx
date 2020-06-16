<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_ActivationEmail, App_Web_fll2klj3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>浏览</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
<div class="s_bright">
<div class="us_topinfo">
	<div class="us_showinfo">
		<h1>您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank">
<asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; 
</span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; 
</span><span><a title="我的公会" href="Default.aspx">我的公会</a></span></span>
        </h1>
	</div>
	<div class="cleardiv"></div>
</div>
<div class="us_topinfo" style="margin-top:10px;">
    <a href="Default.aspx" style="color:#F00">我已加入公会</a> |<a href="FoundGH.aspx">我已创建公会</a>
    |<a href="GuildIndex.aspx">我是会长创建公会</a>|<a href="List.aspx">公会排行列表</a>
    </div>
</div>
</body>
</html>

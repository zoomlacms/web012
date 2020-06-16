<%@ page language="C#" autoeventwireup="true" inherits="OrderOver, App_Web_vs4ncjmc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>完成订单提交</title>
<link rel="stylesheet" type="text/css" href="user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="user/skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
<asp:HiddenField ID="hfResult" runat="server" value=""/>
<div id="m_top">
	<h1 class="m_logo"></h1>
	<h1 style="float:right;">
		<ul>
            
			<li><a href="/">首页</a></li>
			<li><a href=#>新闻</a></li>
			<li><a href=#>图库</a></li>
			<li><a href=#>下载</a></li>
			<li><a href=#>商城</a></li>
			<li><a href=#>论坛</a></li>
			<li style="float:right;width:140px;background:url();"><a href="javascript:alert('设为首页');">设为首页</a> | <a href="javascript:alert('加入收藏');">加入收藏</a></li></ul>
	</h1>
</div>
<!-- 正文布局 -->
<div class="s_body">
<!-- 左边开始 -->
<div class="s_bleft">
	<div class="i_whyj">
		<h1>登陆会员中心您将获得：</h1>
		<ul>
			<li>自由发布信息 </li>
			<li>查看积分与管理空间 </li>
			<li>设定您的个性化空间</li><li>提交您的需求为您服务 </li>
			<li>购物支付多彩商务体验 </li>
		</ul>
		<div id="left_" class="cleardiv" style="height:15px;"></div>
		<h2 style="color:#FF6600">用户通道</h2>
		<h3><a href="/">快速返回首页</a></h3>
		<h2>站长通道</h2>
	</div>
</div>

<!-- 右边开始 -->
<div class="s_bright">
	<div class="rg_inout">
		<h1>完成提交</h1>
		<h2>第三步:完成订单提交&nbsp;<img src="/user/images/regl3.gif" width="242" height="14" /></h2>
		<div class="cleardiv"></div>
	    <ul>
	        <li>
	        <p>
            <asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>&nbsp;
            </p>
            </li>
	    </ul>
	    	<ul>
	        <li style="text-align:center"></li>
	        </ul>   
	    	<ul>
	        <li style="text-align:center">
	        <asp:Button ID="Button1" runat="server" Text="使用在线支付" OnClick="Button1_Click" />&nbsp;&nbsp;
	        <asp:Button ID="UserPurseBTN" runat="server" Text="使用虚拟钱包支付" onclick="UserPurseBTN_Click" />&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Visible="false" Text="PayPal支付" OnClick="Button3_Click" />&nbsp;&nbsp;
	        <asp:Button ID="Button2" runat="server" OnClientClick="location.href='/';;return false;" Text="返回首页" />
	        </li>
	        </ul>
	  <div class="cleardiv"></div>
	</div>
</div>

</div>
<div class="cleardiv"></div>
<div class="m_copyright">
	<ul><a href=#>关于我们</a> | <a href=#>常见问题</a> | <a href=#>使用条款</a> | <a href=#>隐私声明</a> | <a href=#>安全提示</a> | <a href=#>意见反馈</a> | <a href=#>联系我们</a> | <a href=#>招聘信息</a></ul>
	<h1> &copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。</h1>
</div>
</form>
</body>
</html>
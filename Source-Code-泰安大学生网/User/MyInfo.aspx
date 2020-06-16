<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.MyInfo, App_Web_erm1kfs3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>会员信息页</title>
<link rel="stylesheet" type="text/css" href="skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
<div class="s_bright">
<div class="us_r_infoa">
<div class="us_logo">
<ul>
  <asp:Image ID="imgUserPic" runat="server" Width="96px" Height="109px" /></ul>
<ul><a href='<%=ResolveUrl("~/User/Info/UserInfo.aspx") %>'>【个人信息】</a></ul>
</div>
<div class="us_pynews">
  您现在的位置：<span id="YourPosition"><a title="网站首页" href="/" target="_blank">
  <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
  </a><span> &gt;&gt; </span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; </span><span><a title="信息管理" href="MyInfo.aspx">个人信息</a></span></span>
  <div class="us_xzb">
	<h2>会员组别：<asp:Label ID="LblGroupName" runat="server" Text="" /><br />
	待阅短信：<asp:Label ID="LblUnreadMsg" runat="server" Text="" />条<br />
	最近登陆：<asp:Label ID="LblLastLoginTime" runat="server" /> <br />
	等级：<asp:Image ID="Grouppicture" runat="server" Width="20" Height="20" />
   </h2>
  </div>
	<div class="us_message">
		<h3>便捷菜单</h3>
		<ul>
			<li><a href="Project/ProjectRequire.aspx">创建项目</a></li>
			<li><a href="Project/ProjectList.aspx">查看项目</a></li>
			<li><a href="Message/Message.aspx">站内短信</a></li>
			<li><a href="ChangPSW.aspx">修改密码</a></li>
			<li><a href="/PayOnline/SelectPayPlat.aspx">在线支付</a></li>
			<li><a href="/GuestBook/Default.aspx" target="_blank">在线留言</a></li>
		</ul>
	</div>
</div>
<div class="cleardiv"></div>
</div>
<!-- str -->
<div>
<div class="us_r_infoa">
	<div class="us_seta">
		<h1>◎信息维护</h1>
		<div class="us_pynews">
            <h2>您的联系信息</h2>
            <ul>
            <li><strong><a href="">性别：</a></strong> <asp:Label ID="LblSex" runat="server" /></li>
            <li><a href="">邮箱地址：</a><asp:Label ID="LblEmail" runat="server" Text="" /></li>
            <li><strong><a href="">手机号码：</a></strong> <asp:Label ID="LblMobile" runat="server" /></li>
            </ul>              

          <h2>您的交易信息</h2>
            <ul>
            <li>结算总金额：<asp:Label ID="ship" runat="server" /></li> 
            <li>已支付金额：<asp:Label ID="Almoney" runat="server" /></li>                 
            <li>未支付金额：<asp:Label ID="Nonemoney" runat="server" /></li>
            <li>上次支付时间：<asp:Label ID="time" runat="server" /></li>
           
          </ul>
          
           <h2>您的其它信息</h2>
            <ul>
            <li>积分：<asp:Label ID="LblExp" runat="server" /></li>
            <li>游戏币值：<asp:Label ID="LblGuessMP" runat="server" /></li>                  
            <li>注册日期：<asp:Label ID="LblRegTime" runat="server" /></li>
            <li>登陆次数：<asp:Label ID="LblLoginTimes" runat="server" /></li>
            <li>最近修改密码时间：<asp:Label ID="LblChgPswTime" runat="server" /></li>
            <li>上次被锁定时间：<asp:Label ID="LblLastLockTime" runat="server" /></li>
            <li>最后登陆IP：<asp:Label ID="LblLastLoginIP" runat="server" /></li>
          </ul>

		</div>
	</div>
		<div class="us_seta">
		<h1 style="clear:both;">◎SNS社区功能导航</h1>
		<div class="c_pynews">
			<h2>社区娱乐</h2>
			<ul>
				<li><a href="/User/UserFriend/">好友</a></li>
				<li><a href="/User/UserZone/LogManage/SelfLogManage.aspx">日志</a></li>
				<li><a href="/User/UserZone/Pic/CategList.aspx">相册</a></li>
				<li><a href="/User/userzone/GatherStrainManage/GSManage.aspx">族群</a></li>
				<li><a href="/User/UserZone/Memo/MemoList.aspx">备忘录</a></li>
				<li><a href="/User/UserZone/Message/MyMessage.aspx">留言板</a></li>
				<li><a href="/User/UserZone/Parking/Default.aspx">抢车位</a></li>
				<li><a href="/User/UserZone/Home/MyHome.asp">小屋</a></li>
				<li><a href="/User/UserZone/ChitChat.aspx">蒙面聊</a></li>
				<li><a href="/User/UserZone/Book/BookList.aspx">读书</a></li>
				<li><a href="/User/UserZone/Book/MusicList.aspx">音乐</a></li>
				<li><a href="/User/UserZone/Book/MovieList.aspx">电影</a></li>
				<li><a href="/User/UserZone/Book/ItineraryList.aspx">旅途</a></li>
			</ul>
		</div>
        
            <div class="c_pynews">
			<h2>班级功能</h2>
			<ul>
				<li><a href="/User/UserZone/School/MySchoolList.aspx">班级列表</a></li>
				<li><a href="/User/UserZone/School/SchoolList.aspx">加入班级</a></li>
				<li><a href="/User/UserZone/School/SchoolFellow.aspx">查找同学</a></li>
				<li><a href="/User/UserZone/School/AddRessList.aspx">我的通讯录</a></li>
			</ul>
		</div>
</div>

</div>
</div>
</form>
</body>
</html>
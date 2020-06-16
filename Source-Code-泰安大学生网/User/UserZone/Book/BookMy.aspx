<%@ page language="C#" autoeventwireup="true" inherits="BookMy, App_Web_oalw2kfa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlMy.ascx" TagName="WebUserControlMy" TagPrefix="uc1" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head>
<title>读书</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
<div style="margin:auto; width:748px">
    <div class="us_topinfo">
        <div class="cleardiv"></div>
        <div class="us_showinfo">
                您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                    ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                    </span><span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent">
                        会员中心</a></span><span> &gt;&gt; </span><span>我的书籍</span>
        </div>
    </div>
    <uc3:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc3:WebUserControlTop>
    &nbsp;&nbsp;
    <uc1:WebUserControlMy id="WebUserControlMy1" runat="server">
    </uc1:WebUserControlMy><br />
</div>
</body>
</html>
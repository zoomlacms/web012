<%@ page language="C#" autoeventwireup="true" inherits="User_Info_UserInfoText, App_Web_3lloejsh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>基本信息</title>
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
                    &gt;&gt; <span><a href="UserInfo.aspx">账户管理</a></span><span> &gt;&gt; 基本</span></span>信息
        </div>
    </div>
    <div class="us_seta" style="margin-top: 10px;" id="manageinfos" runat="server">
        <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    </div>
    <div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
        <h1 style="text-align: center">
            基本信息</h1>    
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_SetCenter_SC_ANotification, App_Web_p4rg0npa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlSetCenterTop.ascx" TagName="WebUserControlSetCenterTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 设置中心</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
<script src='<%=ResolveUrl("~/Common/RiQi.js")%>' type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: auto; width: 100%">
        <div class="us_topinfo">
            <div class="us_pynews">
                    您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_top"><asp:Label
                        ID="LblSiteName" runat="server" Text=""></asp:Label></a></span> &gt;&gt; </span>
                    <span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_parent">会员中心</a></span>&gt;&gt;设置中心&gt;&gt;活动通知
            </div>
            <div class="cleardiv">
            </div>
        </div>
        <div>
            <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
            <uc1:WebUserControlSetCenterTop ID="WebUserControlSetCenterTop" runat="server" />
        </div>
        <br />
       <div class="us_topinfo" style="margin-top: 10px; width: 98%">
            <table border="0" class="us_showinfo" width="100%" align="center" cellpadding="0"
                cellspacing="0">
                <tr>
                    <td>
                        活动通知
                    </td>
                </tr>
            </table>
             <div class="cleardiv">
        </div>
        </div>
       
    </div>
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_ShowRoomNotify, App_Web_4r1scmua" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>班级列表</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
        <div style="margin:auto; width:748px">
            <div class="us_topinfo">
                <div class="cleardiv">
                </div>
                <div class="us_showinfo">
                        您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                            ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                            </span><span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent">
                                会员中心</a></span> &gt;&gt; <span><a href="mySchoolList.aspx">我的班级 </a></span>&gt;&gt;
                            <span>班级信息</span></span>
                </div>
            </div>
            <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
            <br />
            <div class="us_showinfo">
            <div>
            <span><a href="showRoom.aspx?Roomid=<%=RoomID %>"><%=RoomName %>班级</a></span> &gt;&gt; <span><a href="RoomNotifyList.aspx?RoomID=<%=RoomID %>">黑板报列表</a></span> &gt;&gt; <span><%=Ntitle%></span>
            <hr />
            </div>
            <table cellpadding="0" cellspacing="0" border ="0" width="100%">
            <tr>
            <td id="tdTitle" runat="server" align="center" >
                
            </td>
            </tr>
            <tr>
            <td id="tdTime" runat="server" align="center">
                
            </td>
            </tr>
            <tr>
            <td id="tdContext" runat="server" >
                
            </td>
            </tr>
            
            </table>
            </div>
        </div>
</form>
</body>
</html>
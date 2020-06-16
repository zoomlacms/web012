<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_ShowRoomActive, App_Web_4r1scmua" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的班级</title>
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
                                会员中心</a></span>&gt;&gt;<span><a href="mySchoolList.aspx"> 我的班级 </a></span>&gt;&gt;
                            <span></span><span>班级信息</span>
                </div>
            </div>
            <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
            <br />
            <div class="us_showinfo">
                <div>
                    &nbsp;&nbsp;&nbsp;<a href="ShowRoom.aspx?Roomid=<%=RoomID%>"><%=RoomName %>班级</a>
                    &gt;&gt; <a href="roomactivelist.aspx?RoomID=<%=RoomID%>">活动列表</a> &gt;&gt; 活动详细信息<hr />
                </div>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr id="Eitd" runat="server">
                        <td valign="top"  colspan="2" style="width: 100%">
                            &nbsp;&nbsp; <a href="AddRoomActive.aspx?AID=<%=AID %>&RoomID=<%=RoomID%>">修改</a> |
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">删除</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2"  id="tdTitle" runat="server">
                        </td>
                    </tr>
                    <tr>
                        <td align="center"   colspan="2" id="tdDate" runat="server">
                        </td>
                    </tr>
                    <tr>
                        <td valign="top"  style="width:80%" id="tdContext" runat="server" align="left" >
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td align="center" style="width:20%" valign="top">
                        <asp:Button ID="Button1" runat="server" Text="我要参与" OnClick="Button1_Click" />
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" Width="100%" RepeatDirection="Horizontal" >
                            <HeaderStyle HorizontalAlign="center" /><HeaderTemplate>
                            <strong>活动参与人员</strong>
                            </HeaderTemplate>
                            <ItemStyle HorizontalAlign="center" />
                            <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem,"UserName")%>
                            </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
</form>
</body>
</html>
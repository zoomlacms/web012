<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_AuditingMemberList, App_Web_4r1scmua" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
                <div class="cleardiv"></div>
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
                    <span><a href="showRoom.aspx?Roomid=<%=RoomID %>"><%=RoomName %></a></span> &gt;&gt; <span>申请人列表</span>
                    <hr />
                </div>
                <asp:GridView ID="GridView1" DataKeyNames="Noteid" runat="server" AutoGenerateColumns="False" Width="100%" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="用户名" >
                            <HeaderStyle Width="20%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="AuditingContext" HeaderText="申请理由" />
                        <asp:TemplateField HeaderText="申请身份">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#GetType(DataBinder.Eval(Container.DataItem, "StatusType").ToString()) %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:BoundField DataField="AddTime" HeaderText="申请时间" >
                            <HeaderStyle Width="15%" />
                        </asp:BoundField>
                        <asp:CommandField SelectText="通过申请" ShowSelectButton="True" >
                            <HeaderStyle Width="10%" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
</form>
</body>
</html>
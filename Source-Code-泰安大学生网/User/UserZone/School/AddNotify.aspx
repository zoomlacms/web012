<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_AddNotify, App_Web_4r1scmua" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
                            <span>班级信息 </span>
                </div>
            </div>
            <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
            <br />
            <div class="us_showinfo">
            <div>
            <span><a href="showRoom.aspx?Roomid=<%=RoomID %>"><%=RoomName %></a></span> &gt;&gt; <span><a href="RoomNotifyList.aspx?RoomID=<%=RoomID %>">黑板报列表</a></span> &gt;&gt; <span>添加黑板报</span>
            <hr />
            </div>
                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td>黑板报标题：
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtTitle" runat="server" Width="600px" MaxLength="200"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入标题" ControlToValidate="txtTitle"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>黑板报内容：
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtContext" runat="server" Rows="15" TextMode="MultiLine" Width="600px" MaxLength="1000"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="请输入内容" ControlToValidate="txtContext"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        
                                    </td>
                                    <td align="center"><asp:Button ID="Button1" runat="server" Text="提  交" OnClick="Button1_Click" />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
</form>
</body>
</html>
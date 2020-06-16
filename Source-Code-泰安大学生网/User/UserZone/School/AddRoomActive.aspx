<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_AddRoomActive, App_Web_4r1scmua" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的班级</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
<script language="javascript" type="text/javascript">
    function Check()
    {
        window.document.getElementById("txtStateDate").value
    }
</script>
<script src="../../../Common/RiQi.js" language="javascript" type="text/javascript"></script>
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
                                会员中心</a></span>&gt;&gt;<span><a href="mySchoolList.aspx"> 我的班级 </a></span>&gt;&gt;
                            <span></span><span>班级信息</span>
                </div>
            </div>
            <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
            <br />
            <div class="us_showinfo">
                <div>
                    &nbsp;&nbsp;&nbsp;<a href="ShowRoom.aspx?Roomid=<%=RoomID%>"><%=RoomName %></a>  &gt;&gt; <a href="RoomActiveList.aspx?RoomID=<%=RoomID%>"> 活动列表</a> &gt;&gt; 发起活动
                    <hr />
                </div>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                <td align="right">活动标题：</td>
                <td><asp:TextBox ID="txtTitle" runat="server" Width="360px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"
                        ErrorMessage="请输入活动标题"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                <td align="right">活动开始时间：</td>
                <td><asp:TextBox ID="txtStateDate" runat="server" OnFocus="setday(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStateDate"
                        ErrorMessage="请输入活动开始时间"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                <td align="right">活动结束时间：</td>
                <td><asp:TextBox ID="txtEndDate" runat="server" OnFocus="setday(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEndDate"
                        ErrorMessage="请输入活动结束时间"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtStateDate"
                        ControlToValidate="txtEndDate" ErrorMessage="结束时间小于开始时间" Operator="GreaterThanEqual"
                        Type="Date"></asp:CompareValidator>
                </td>
                </tr>
                <tr>
                <td valign="top" align="right">活动内容：</td>
                <td><asp:TextBox ID="txtContext" runat="server" Rows="10" TextMode="MultiLine" Width="500px"></asp:TextBox></td>
                </tr>
                    <tr>
                        <td align="right" valign="top">
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContext"
                                ErrorMessage="请输入活动内容"></asp:RequiredFieldValidator></td>
                    </tr>
                <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="提  交" OnClick="Button1_Click" /></td>
                </tr>
                </table>
            </div>
        </div>
</form>
</body>
</html>
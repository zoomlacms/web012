<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Cut_PortalList, App_Web_k3p0ohfx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html >
<head>
<title>网友主页</title>
<link rel="stylesheet" href="style/widget.css" type="text/css">
<link rel="stylesheet" href="style/reset.css" type="text/css">
<link rel="stylesheet" href="style/common.css" type="text/css">
<link rel="stylesheet" href="style/control.css" type="text/css">
<link rel="stylesheet" href="style/font.css" type="text/css">
<link rel="stylesheet" type="text/css" href="../../../App_Themes/UserThem/cut.css" />
</head>
<body>
<div class="header">
  <div class="headWrap" >
    <div class="headTop"><span class="logo"><a href="PortalList.aspx"><img alt="逐浪软件网友主页" title="逐浪软件网友主页" src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>"></a></span>
      <div class="navBox"  >
       <ul class="mainNav">
          <li><a class="ie6Png  none " href="#">网友主页</a></li>
        </ul>
      </div>
      <span class="topLink"><a href="/User/login.aspx" class="link3">登录&nbsp;|</a> <a href="/User/Register.aspx" class="link3" target="_blank">注册</a> <a href="home.aspx" class="link3" target="_blank">我的主页</a></span> </div>
<form id="form1" runat="server">
<div class="divMain"  style="border:#67C3DA 1px solid;width:973px; height:700px;">
<div class="textAlign"><%=message%></div>
 <ul class="mainul">
    <asp:Repeater ID="repUserPortal" runat="server">
    <ItemTemplate>
      <li class="mainli" ><span><a class="lia" href='Portal.aspx?Uid=<%# Eval("UserID") %>'><img class="mainimg" alt="" src="style/images/userPar.png" title="" ><%# Eval("UserName") %></a> </span> <%# GetTime(Eval("UserName"))%></li>
    </ItemTemplate>
    </asp:Repeater>
    </ul>
  <div style="clear:both; width:100%; height:10px;"></div>
  <div class="textAlign"> 
     <span style="text-align: center">
        共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />页次：
                <asp:Label ID="Nowpage" runat="server" Text="" />/
                <asp:Label ID="PageSize" runat="server" Text="" />页
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" 
            class="l_input" Width="16px"  Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_OnSelectedIndexChanged"></asp:DropDownList>
                页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"  ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
            </span>
  </div>   
</div>
    </form>
</body>
</html>

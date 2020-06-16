<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="User_login_m, App_Web_sxbic0ln" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>用户登陆-
<%Call.Label("{$SiteName/}"); %>
</title>
<link href="css/global.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<script src="../JS/ajaxrequest.js" type="text/javascript"></script>
<script type="text/javascript">
if(self!=top){top.location=self.location;}
function onfocus() {
    try
    {
        document.getElementById('TxtUserName').focus();
    }catch(Error){}
}

var sts = 3;//登陆后跳转等待时间;单位：秒

function sucse(s,url) {
    if (s == 1) {//成功
        document.getElementById("loginPad_b").style.display = "none";
        document.getElementById("main_sd").style.display = "";
        document.getElementById("sec").innerHTML = sts;
        setInterval(loacationgoto, 1000);
    }
    else {
        document.getElementById("loginPad_b").style.display = "";
        document.getElementById("main_sd").style.display = "none";
    }
}

function loacationgoto() {
    if (sts > 0) {
        sts--;
        document.getElementById("sec").innerHTML = sts;
        if (sts <= 0) {
            location.href = "m/Default.aspx";
        }
    }
    else {
        location.href = "m/Default.aspx";
    }
}
</script>
</head>
<body  onload="onfocus();" style=" background:none;">
<div id="loginPage" style="background-image:url(../App_Themes/UserThem/images/m/login_bg.jpg)">
  <form id="Form1" runat="server">
    <div id="login_top">
      <div id="L_main">
        <div style="margin:10px auto 0; width:800px;">
          <ul>
            <li><a href=""><img src="../App_Themes/UserThem/images/m/sj.png"></a><br/>
              <a href="">话费充值</a></li>
            <li><a href=""><img src="../App_Themes/UserThem/images/m/sim.png"></a><br/>
              <a href="">充值卡</a></li>
            <li><a href=""><img src="../App_Themes/UserThem/images/m/g.jpg"></a><br/>
              <a href="">话费充值</a></li>
            <li><a href=""><img src="../App_Themes/UserThem/images/m/qq.png"></a><br/>
              <a href="">话费充值</a></li>
            <li><a href=""><img src="../App_Themes/UserThem/images/m/jp.png"></a><br/>
              <a href="">话费充值</a></li>
            <li><a href=""><img src="../App_Themes/UserThem/images/m/dl.png"></a><br/>
              <a href="">话费充值</a></li>
            <li><a href=""><img src="../App_Themes/UserThem/images/m/zls.png"></a><br/>
              <a href="">话费充值</a></li>
            <li><a href=""><img src="../App_Themes/UserThem/images/m/hm.png"></a><br/>
              <a href="">话费充值</a></li>
            <div class="clear"></div>
          </ul>
        </div>
      </div>
      <div class="clear"></div>
      <div id="mko">
        <div style="width:450px; margin:auto;">
          <div id="mk1"><img src="../App_Themes/UserThem/images/m/logo.gif" alt="网站logo"></div>
          <div id="mk1_r">云南世宏科技在线系统</div>
          <div class="clear"></div>
        </div>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
    <div id="login">
      <div id="loginPad_t"><img src="../App_Themes/UserThem/images/m/login_title.jpg"></div>
      <div id="main_sd" style="display:none">
        <ul>
          <li style="color:green; font-size:14px; font-weight:bold">欢迎您！登陆成功</li>
          <li style="margin-top:25px;">系统将在 <span id="sec">3</span> 秒后自动跳转到<a href="m/Default.aspx">会员首页</a></li>
        </ul>
      </div>
      <div id="loginPad_b">
        <ul>
          <li>
            <asp:Label ID="lblUser" runat="server" Text="用户名："></asp:Label>
            <asp:TextBox ID="TxtUserName" runat="server" style="width:140px; margin-left:20px ;border:#CCC solid 1px;"  CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
          </li>
          <li>密　码：<input type="hidden" value="" id="mac" name="mac" runat="server"/>
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" style="width:140px; margin-left:20px; border:#CCC solid 1px;"  CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
          </li>
          <li>
            <asp:Button ID="btnLogin" class="i_bottom" runat="server" Text="登　录" onclick="btnLogin_Click" />
            <input type="checkbox" name="checkbox" checked="checked" id="checkbox" style="margin-left:18px" />
            记住登录&nbsp;
            <asp:HyperLink Visible="false" ID="hlReg" runat="server"  NavigateUrl="~/User/login_m.aspx?RegID=1">Email登录</asp:HyperLink>
          </li>
          <li style="margin-top:25px;"><a href="/User/GetPassword.aspx">忘记密码了？ </a>如果您尚未在本站注册为用户，请先点击<a href="Register.aspx">点此注册</a>。</li>
          <li>
            <div class="reg_put" id="trVcodeRegister" visible="false" runat="server" > 验证码：
              <asp:TextBox ID="TxtValidateCode" MaxLength="6" runat="server" style="width:140px; margin-left:20px ;border:#CCC solid 1px;" CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
              <asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div class="clear"></div>
    <div id="bottom"> <a href="/"><img src="../App_Themes/UserThem/images/m/logo.gif" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
      <p>
        <script language="javascript" type="text/javascript"> 
<!--
    var year = "";
    mydate = new Date();
    myyear = mydate.getYear();
    year = (myyear > 200) ? myyear : 1900 + myyear;
    document.write(year); 
--> 
</script>
        &nbsp;Copyright&copy;&nbsp;
        <%Call.Label("{$SiteName/}"); %>
        All rights reserved.</p>
    </div>
    <asp:RequiredFieldValidator ID="ValrUserName" runat="server" ErrorMessage="请输入用户名！" ControlToValidate="TxtUserName" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="ValrPassword" runat="server" ErrorMessage="请输入密码！" ControlToValidate="TxtPassword" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
  </form>
</div>
</body>
</html>
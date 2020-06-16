<%@ page language="C#" autoeventwireup="true" inherits="User_Left, App_Web_erm1kfs3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>功能导航</title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../JS/jquery-1.4.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="../js/UserDefault.js"></script>
</head>
<body style="background-color:#E6F2F8">
<form id="form1" runat="server">
  <table  id="userTab1" width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
    <tr>
      <td height="22" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr><!--<img src="../App_Themes/UserThem/images/icon.gif" width="15" height="15" style="cursor: hand"  onclick="show('td1')">-->
            <td width="25"><span id="span1" class="imgbgover" onclick=" usershow('#td1','#span1')" ></span></td>
            <td valign="top"><div class="left_font" style="cursor: hand" onclick="usershow('#td1','#span1')">我的信息</div></td>
          </tr>
        </table></td>
    </tr>
    <tr id="td1"  class="tabtr">
      <td ><table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu">
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;"> &nbsp;&nbsp;<a href="Info/UserInfo.aspx" target="main_right">账号信息</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; 
                <a href="CashCoupon/ArriveManage.aspx" target="main_right">优惠劵列表</a></td>
          </tr>
                    <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; 
                <a href="CashCoupon/ArriveJihuo.aspx" target="main_right">优惠劵激活</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="ConstPassen.aspx" target="main_right">常用客户</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle"  style="padding-left:15px;">&nbsp;&nbsp; <a href="info/UserRecei.aspx" target="main_right">我的地址簿</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle"  style="padding-left:15px;">&nbsp;&nbsp; <a href="info/UserDay.aspx" target="main_right">节日提醒</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="info/MyGetMoney.aspx" target="main_right">我的收入</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="info/MtrlsMrktng.aspx" target="main_right">推广收入</a></td>
          </tr>
        </table></td>
    </tr>
  </table>
  <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
    <tr>
      <td height="22" valign="top" class="left_font"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="25"><span id="span4"  class="imgbgout"  onclick="usershow('#td4','#span4')"></span></td>
            <td valign="top"><div class="left_font" style="cursor: hand" onclick="usershow('#td4','#span4')">订阅导航</div></td>
          </tr>
        </table></td>
    </tr>
    <tr id="td4"  class="tabtr">
      <td><table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu">
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="MySubscription.aspx" target="main_right">我的订阅</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;"> &nbsp;&nbsp;<a href="BidList.aspx?type=myBid"target="main_right">我的竞标</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="BidList.aspx?type=myJoin"target="main_right">我参与的竞标</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="BidList.aspx?type=settlement"target="main_right" >竞标结算</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="../Questions/Default.aspx" target="main_right" >组卷系统</a></td>
          </tr>
        </table></td>
    </tr>
  </table>
  
</form>
</body>
</html>
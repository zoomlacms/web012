<%@ page language="C#" autoeventwireup="true" inherits="User_Sera_shopLeft, App_Web_sxbic0ln" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>商城功能导航</title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../JS/jquery-1.4.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="../js/UserDefault.js"></script>
</head>
<body style="background-color:#E6F2F8">
<form id="form1" runat="server">
    <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu" >
    <tr>
        <td height="22" valign="top" class="left_font">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="25"> <span id="span1" class="imgbgover" onclick="usershow('#td1','#span1')" ></span></td>
                    <td valign="top">
                        <div class="left_font" style="cursor: hand" onclick="usershow('#td1','#span1')">商城管理</div>
                    </td>
                </tr>
            </table>
        </td>   
    </tr>
    <tr id="td1" class="tabtr">
        <td>
            <table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu"> 
            <tr>
                    <td >
                        <img  class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;
                        <a href="GroupList.aspx?start=true" target="main_right">我的团定</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img  class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;
                        <a href="Info/DredgeVip.aspx" target="main_right">VIP卡管理</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">
                        &nbsp;&nbsp;<a href="BossInfo/NodeTree.aspx"target="main_right">我的加盟商</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;
                        <a href="BossInfo/MeInfo.aspx"target="main_right">我的加盟信息</a>
                    </td>
                </tr>
                    <tr>
                    <td>
                        <img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;
                        <a href="PreViewOrder.aspx?menu=Cartinfo"target="main_right" >购物订单</a></td>
                </tr>           
            </table>
        </td>
    </tr>
    <tr>
        <td>
        <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
            <tr>
                <td width="25"><span id="span2" class="imgbgout" onclick="usershow('#td2','#span2')" ></span></td>
                <td valign="top"><div class="left_font" style="cursor: hand" onclick="usershow('#td2','#span2')">店铺管理</div></td>
            </tr>
        </table>
        </td>
    </tr>
    <tr id="td2" class="tabtr">
        <td>
            <table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu"> 
                    <tr>
                    <td><img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="UserShop/Default.aspx"target="main_right" >我的店铺</a></td>
                </tr>
                    <tr>
                    <td><img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="Profile/OrderManage.aspx"target="main_right" >我的订单</a></td>
                </tr>
                    <tr>
                    <td><img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="Profile/Default.aspx"target="main_right" >我的返利</a></td>
                </tr>
                    <tr>
                    <td><img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="Profile/PointRecord.aspx"target="main_right" >我的积分</a></td>
                </tr>
                    <tr>
                    <td><img  class="chtd"   src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="Profile/ExChangeRecord.aspx"target="main_right" >兑换记录</a></td>
                </tr>
                <tr>
                    <td><img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="Profile/Accountinfo.aspx"target="main_right" >收款信息设置</a></td>
                </tr>
                <tr>
                    <td><img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="siteManage/Default.aspx" target="_blank" >分站联盟推广</a ></td>
                </tr>
                <tr>
                    <td><img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="producter/ProducterManage.aspx" target="main_right" >出售商品信息</a></td>
                </tr>
                <tr>
                    <td><img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="PrintServer/ImageList.aspx" target="main_right" >Flex作品</a></td>
                </tr>                 
            </table>
        </td>
    </tr>
    <tr>
        <td>
        <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
            <tr>
                <td width="25" ><span id="span3" class="imgbgout" onclick="usershow('#td3','#span3')" ></span></td>
                <td valign="top"><div class="left_font" style="cursor: hand" onclick="usershow('#td3','#span3')" >推广赚钱</div></td>
            </tr>
        </table>
        </td>
    </tr>
    <tr id="td3" class="tabtr">
        <td>
            <table width="100%" border="0" cellpadding="6" cellspacing="1" class="leftmenu"> 
                    <tr>
                    <td><img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="PromotUnion/Default.aspx" target="_blank" >赚钱计划</a></td>
                </tr>
                    <tr>
                    <td><img class="chtd"  src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="PromotUnion/userunioninviteview.aspx" target="main_right">赚钱记录</a></td>
                </tr>      
            </table>
        </td>
    </tr>
     <tr>
        <td>
        <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
            <tr>
              <td width="25"><span id="span5"  class="imgbgout" onclick="usershow('#td5','#span5')"></span></td>
            <td valign="top"><div class="left_font" style="cursor: hand" onclick="usershow('#td5','#span5')">竞拍</div></td>
            </tr>
        </table>
        </td>
    </tr>
    <tr id="td5" class="tabtr">
        <td>
            <table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu"> 
              <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;"> &nbsp;&nbsp;<a href="BidManage/Default.aspx?type=0"target="main_right">正在竞拍</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="BidManage/BidEnd.aspx?type=0"target="main_right">竞拍成功</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="BidManage/Bidpaul.aspx?type=1"target="main_right" >保价购买</a></td>
          </tr>
          <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="BidManage/Bidpaul.aspx?type=2" target="main_right" >放弃购买</a></td>
          </tr>
            </table>
        </td>
    </tr>
      <tr>
        <td>
        <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
            <tr>
             <td width="25"><span  id="span6" class="imgbgout" onclick="usershow('#td6','#span6')"></span></td>
            <td valign="top"><div class="left_font" style="cursor: hand" onclick="usershow('#td6','#span6')">体验区竞拍</div></td>
            </tr>
        </table>
        </td>
    </tr>
    <tr id="td6" class="tabtr">
        <td>
            <table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu"> 
              <tr>
            <td><img class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;"> &nbsp;&nbsp;<a href="BidManage/Default.aspx?type=1"target="main_right">正在竞拍</a></td>
          </tr>
          <tr>
            <td><img   class="chtd" src="../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="BidManage/BidEnd.aspx?type=1" target="main_right">竞拍成功</a></td>
          </tr>
            </table>
        </td>
    </tr>
</table> 
</form>
</body>
</html>
<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_ShopLeft, App_Web_fipepwvn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>聚合功能导航</title>
<link href="../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../../JS/jquery-1.4.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="../../JS/UserDefault.js"></script>
</head>
<body style="background-color: #E6F2F8">
<table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
<tr>
    <td height="22" valign="top">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="25"><span id="span1" class="imgbgover" onclick="usershow('#td1','#span1')" ></span></td>
                <td valign="top">
                    <div class="left_font" style="cursor: hand" onclick=" usershow('#td1','#span1')" >聚合管理</div>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr id="td1" class="tabtr">
    <td>
        <table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu">
            <tr>
                <td>
                    <img class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle"  style="padding-left:15px;">&nbsp;&nbsp;
                    <a href="../../Space/SpaceManage.aspx" target="main_right" runat="server" id="a4">我的聚合</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;
                    <a href="" target="main_right" runat="server" id="a1">聚合首页</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;
                    <a href="" target="main_right" runat="server" id="a2">聚合列表</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;
                    <a href="" target="main_right" runat="server" id="a3">聚合内容</a>
                </td>
            </tr>
        </table>
    </td>
</tr>
</table>
<table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
<tr>
    <td height="22" valign="top">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="25"> <span id="span2" class="imgbgout" onclick="usershow('#td2','#span2')" ></span></td>
                <td valign="top">
                    <div class="left_font" style="cursor: hand" onclick="usershow('#td2','#span2')" >用户收藏</div>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr id="td2" class="tabtr">
    <td>
        <table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu">
            <tr>
                <td>
                    <img class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;
                    <a href="/User/Content/MyFavori.aspx?type=1" target="main_right" runat="server" id="a5">内容收藏</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;
                    <a href="/User/Content/MyFavite_Shop.aspx?type=2" target="main_right" runat="server" id="a6">商品收藏</a>
                </td>
            </tr>
            <tr>
                <td>
                    <img class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;
                    <a href="/User/Content/MyFavite_UserShop.aspx?type=3" target="main_right" runat="server" id="a7">网店收藏</a>
                </td>
            </tr>
        </table>
    </td>
</tr>
</table>
</body>
</html>
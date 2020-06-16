<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_CommunityLeft, App_Web_gt4knn2i" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>互动功能导航</title>
<link href="../../App_Themes/UserThem/user.css"rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="../../JS/UserDefault.js"></script>
</head>
<body style="background-color:#E6F2F8">

    <table width="124" height="210" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
        <tr>
            <td height="22" valign="top" class="left_font">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="25">
                            <img src="../../App_Themes/UserThem/images/icon.gif" width="15" height="15" style="cursor: hand"
                                onclick="show('td2')">
                        </td>
                        <td valign="top">
                            <div class="left_font" style="cursor: hand" onClick="show('td2')"> 社区互动</div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr id="td2">
            <td>
                <table width="100%" border="0" cellpadding="6" cellspacing="1" bgcolor="D6E7EF" class="leftmenu"> 
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                            <a href="../UserZone/Default.aspx" target="main_right">我的空间</a>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                            &nbsp;&nbsp;<a href="../../Guild/Default.aspx"target="main_right">游戏公会</a>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                            <a href="../Guild/Zone/Default.aspx"target="main_right">公会个人空间</a>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                            <a href="../Guild/UserQuestFriend.aspx"target="main_right" >找朋友</a>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                            <a href="../Survey/SurveyAll.aspx"target="main_right" >问卷投票</a>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                            <a href="../Game/GameManage.aspx"target="main_right" >游戏管理</a>
                        </td>
                    </tr>         
                     <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                            <a href="../UserZone/Cut/List.aspx" target="main_right" >网页剪刀</a>
                        </td>
                    </tr>                    
                </table>
            </td>
        </tr>
    </table>
    <table width="124" height="20" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
        <tr>
            <td height="22" valign="top" class="left_font">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="25">
                            <img src="../../App_Themes/UserThem/images/icon.gif" width="15" height="15" style="cursor: hand"
                                onclick="show('td1')">
                        </td>
                        <td valign="top">
                            <div class="left_font" style="cursor: hand" onClick="show('td1')"> 聊天系统</div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr id="td1">
            <td>
                <table width="100%" border="0" cellpadding="6" cellspacing="1" bgcolor="D6E7EF" class="leftmenu"> 
                    <tr>
                        <td bgcolor="#FFFFFF">
                            <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                            &nbsp;&nbsp;<a href="javascript:void(0);" onClick="window.open('/user/Usertalk/TalkIndex.aspx?'+Math.random(), 'newwindow', 'height=730, width=1028, top=0, left=0, toolbar=no, menubar=no, scrollbars=no,resizable=no,location=no, status=no');" >在线聊天</a>
                        </td>
                    </tr>                       
                </table>
            </td>
        </tr>
    </table>

</body>
</html>
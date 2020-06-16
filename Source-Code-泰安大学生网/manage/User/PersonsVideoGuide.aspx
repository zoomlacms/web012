<%@ page language="C#" autoeventwireup="true" inherits="manage_User_PersonsVideoGuide, App_Web_mcs1zuhc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
    <title></title>
    <link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
     <script type="text/javascript">
         function Switch(obj) {
             obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
             var nextDiv;
             if (obj.nextSibling) {
                 if (obj.nextSibling.nodeName == "DIV") {
                     nextDiv = obj.nextSibling;
                 }
                 else {
                     if (obj.nextSibling.nextSibling) {
                         if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                             nextDiv = obj.nextSibling.nextSibling;
                         }
                     }
                 }
                 if (nextDiv) {
                     nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
                 }
             }
         }
         function OpenLink(lefturl, righturl) {
             if (lefturl != "") {
                 parent.frames["left"].location = lefturl;
             }

             try {
                 parent.MDIOpen(righturl); return false;
             } catch (Error) {
                 parent.frames["main_right"].location = righturl;
             }
         }

         function gotourl(url) {
             try {
                 parent.MDILoadurl(url); void (0);
             } catch (Error) {
                 parent.frames["main_right"].location = "../" + url; void (0);
             }
         }
</script>
</head>
<body>
    <form id="formGuide" runat="server">
    <div id="Div1">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">
                    多人视频管理</div>
            </li>
            <li id="Guide_main">
                <div id="Guide_box">
                    <div class="guideexpand" onclick="Switch(this)">
                        多人视频管理</div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('User/VideoRoom.aspx');">房间管理</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('User/VideoHall.aspx');">大厅管理</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('User/VideoUserManage.aspx');">用户管理</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('User/AdminiStrator.aspx');">管理员设置</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('User/Agent.aspx');">代理商管理</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('User/Wiipointscard.aspx');">点卡管理</a></li>
                          <%--  <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/CN/nite/Content/VideoVerify.aspx');">客户端管理</a></li>--%>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/CN/nite/Content/VideoVerify.aspx');">宝箱游戏</a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>

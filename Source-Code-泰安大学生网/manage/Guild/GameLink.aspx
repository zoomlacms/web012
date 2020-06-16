<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_GameLink, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>游戏管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
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
    <body id="Guidebody" style="margin: 0px; margin-top: 1px;">
        <form id="formGuide" runat="server">
        <div id="Div1">
            <ul>
                <li id="Guide_top">
                    <div id="Guide_toptext">
                        公会管理</div>
                </li>
                <li id="Guide_main">
                    <div id="Guide_box">
                        <div class="guideexpand" onclick="Switch(this)">
                            公会管理
                        </div>
                        <div class="guide">
                            <ul>
                                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                    <a href="javascript:gotourl('Guild/GHManage.aspx');">公会管理</a></li>
                                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                    <a href="javascript:gotourl('Guild/Disprove.aspx');">举报管理</a></li>
                                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                    <a href="javascript:gotourl('Guild/GameClassManage.aspx');">游戏分类</a></li>
                                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                    <a href="javascript:gotourl('Guild/OfficeClassManage.aspx');">职位管理</a></li>
                                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                    <a href="javascript:gotourl('Guild/GameTemplateManage.aspx');">模板设计</a></li>
                                <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                    <a href="javascript:gotourl('Guild/SkinsManage.aspx');">风格管理</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        </form>
    </body>
</html>

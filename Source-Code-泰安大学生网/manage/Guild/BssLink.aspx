<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_BBSLlink, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>论坛管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript">
        function Switch(obj, maxid) {
            for (var i = 0; i <= maxid; i++) {
            var nextobjs = document.getElementById("menu" + i)
           if (nextobjs) {
            var nextDivs;
            if (nextobjs.nextSibling) {
           if (nextobjs.nextSibling.nodeName == "DIV") {
            nextDivs = nextobjs.nextSibling;
             }
            else {
              if (nextobjs.nextSibling.nextSibling) {
               if (nextobjs.nextSibling.nextSibling.nodeName == "DIV") {
                 nextDivs = nextobjs.nextSibling.nextSibling;
                     }
                   }
                  }

            if (nextDivs) {
                if (obj.id != "menu" + i) {
                   nextDivs.style.display = "none";
                   document.getElementById("menu" + i).className = "guidecollapse"
                            }
                            else {
                                nextDivs.style.display = "";
                                document.getElementById("menu" + i).className = "guideexpand"
                            }
                        }
                    }
                }
            }
            chechs();
        }

        function chechs() {
            if (document.getElementById) {
                parent.document.getElementById("left").height = document.body.scrollHeight + 20;
            }
            else {
                parent.document.getElementById("left").height = document.body.scrollHeight + 20;
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
            parent.frames["main_right"].location = url; void (0);
        }
    }
    </script>

</head>
<body id="Guidebody" style="margin: 0px; margin-top: 1px;">
    <form id="formGuide" runat="server">
    <div>
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">
                    论坛管理</div>
            </li>
            <li id="Guide_main">
                <div id="Guide_box">
                    <div class="guideexpand" onclick="Switch(this,10)" id="menu0">
                        设置
                    </div>
                    <div class="guide" id="show0">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/BasicSettings.aspx');">基本设置</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/AdvancedSettings.aspx');">高级设置</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/Advmanage.aspx');">广告管理</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/LinkFriend.aspx');">友情链接</a></li>
                        </ul>
                    </div>
                    <div class="guideexpand" onclick="Switch(this,10)" id="menu1">
                        成员
                    </div>
                    <div class="guide" id="show1" style="display: none">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/SearchUser.aspx');">搜索用户</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/AdminUser.aspx');">浏览所有用户</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/AllRoles.aspx');">管理所有角色</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/serRank.aspx');">管理用户等级</a></li>
                        </ul>
                    </div>
                    <div class="guideexpand" onclick="Switch(this,10)" id="menu2">
                        论 坛
                    </div>
                    <div class="guide" id="show2" style="display: none">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/ForumAdd.aspx');">新建论坛</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/ManageGroups.aspx');">论 坛 组</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/TreeView.aspx');">论 坛</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/Tags.aspx');">标 签</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/TreeView.aspx');">管理所有论坛</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/BbsManage.aspx');">管理论坛资料</a></li>
                        </ul>
                    </div>
                    <div class="guideexpand" onclick="Switch(this,10)" id="menu3">
                        系 统
                    </div>
                    <div class="guide" id="show3" style="display: none">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/Circumstance.aspx');">主机环境变量</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/Discreteness.aspx');">组件支持情况</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('/manage/BBS/Statistics.aspx');">论坛统计记录</a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>

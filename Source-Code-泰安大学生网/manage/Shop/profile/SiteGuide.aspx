<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_SiteGuide, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>分站后台导航</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
<body id="Guidebody" style="margin: 0px; margin-top:1px;">
<form id="formGuide" runat="server">
<div id="Div1">
    <ul>
        <li id="Guide_top">
            <div id="Guide_toptext">分站后台管理</div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)">
                   图片广告
                </div>                    
                <div class="guide">
                <ul>     
                   <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('profile/sitepicManage.aspx');">图片广告管理</a></li>
                   <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('profile/SitePicAdv.aspx?menu=add');">添加图片广告</a></li>
                </ul>
              </div>
            </div>
        </li>
        <li id="Li2">
            <div id="Div3">
                <div class="guideexpand" onclick="Switch(this)">
                   文字广告
                </div>                    
                <div class="guide">
                <ul>     
                   <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('profile/SiteTextAdvManage.aspx');">文字广告管理</a></li>
                   <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('profile/SiteTextAdv.aspx?menu=add');">添加文字广告</a></li>
                </ul>
              </div>
            </div>
        </li>
         <li id="Li1">
            <div id="Div2">
                <div class="guideexpand" onclick="Switch(this)">
                   博客内容推广
                </div>                    
                <div class="guide">
                <ul>     
                   <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('profile/SiteBlogManage.aspx');">博客内容推广管理</a></li>
                   <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('profile/SiteBolgAdv.aspx?menu=add');">添加博客推广内容</a></li>
                </ul>
              </div>
            </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>

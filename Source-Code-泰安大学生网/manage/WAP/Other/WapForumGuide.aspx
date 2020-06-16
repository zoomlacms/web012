<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_Other_WapForumGuide, App_Web_uiknzllp" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>其他信息</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">    
function Switch(obj)
{
    obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
    var nextDiv;
    if (obj.nextSibling)
    {
        if(obj.nextSibling.nodeName=="DIV")
        {
            nextDiv = obj.nextSibling;
        }
        else
        {
            if(obj.nextSibling.nextSibling)
            {
                if(obj.nextSibling.nextSibling.nodeName=="DIV")
                {
                    nextDiv = obj.nextSibling.nextSibling;
                }
            }
        }
        if(nextDiv)
        {
            nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none"; 
        }
    }
}
function OpenLink(lefturl,righturl)
{
    if(lefturl!="")
    {
        parent.frames["left"].location =lefturl;
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
               信息管理</div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)">
                 论坛管理
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/WapForum_Class.aspx');">板块管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/WapForum_Class_Edit.aspx?menu=add');">添加板块</a></li>
                </ul>
                </div>
            </div>
            
            <div id="Div2">
                <div class="guideexpand" onclick="Switch(this)">
                 视频管理
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/VideoManage.aspx');">视频管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/AddVideo.aspx?menu=add');">添加视频</a></li>
                </ul>
                </div>
            </div>
            
               <div id="Div3">
                <div class="guideexpand" onclick="Switch(this)">
                 小说管理
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/NovelManage.aspx');">小说管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/NovelEdit.aspx?menu=add');">添加小说</a></li>
                </ul>
                </div>
            </div>
            
             <div id="Div4">
                <div class="guideexpand" onclick="Switch(this)">
                 友情链接管理
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/FSLinks.aspx');">友情链接管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/FSLink_Edit.aspx?menu=add');">添加友情链接</a></li>
                </ul>
                </div>
            </div>
            
             <div id="Div5">
                <div class="guideexpand" onclick="Switch(this)">
                 兼职信息管理
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/Part-timeInfo.aspx');">兼职信息管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/Part-timeEdit.aspx?menu=add');">添加兼职信息</a></li>
                </ul>
                </div>
            </div>
            
                  <div id="Div6">
                <div class="guideexpand" onclick="Switch(this)">
                 校园达人
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/Dalen_School.aspx');">校园达人-图片管理</a></li>
                </ul>
                </div>
            </div>
            
              <div id="Div7">
                <div class="guideexpand" onclick="Switch(this)">
                 文章页管理
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/Default.aspx');">文章页管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:gotourl('Other/Default_Add.aspx?menu=add');">添加文章页</a></li>
                </ul>
                </div>
            </div>
            
        </li>
     </ul>
</div>
</form>
</body>
</html>

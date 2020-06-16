<%@ page language="C#" autoeventwireup="true" inherits="manage_Profile_QuickLinks, App_Web_qkkyiq1m" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
<title>工作台导航</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
    function OpenLink(lefturl, righturl)
    {
        if(lefturl!="")
        {
            parent.frames["left"].location = lefturl; 
        }

        try {
            parent.MDIOpen(righturl);void (0);
        } catch (Error) {
        parent.frames["main_right"].location = "../" + righturl; ; void (0);
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
            <div id="Guide_toptext">
                工作台</div>
        </li>
        <li id="Guide_main">
            <div id="Guide_box">
                <div class="guideexpand" onclick="Switch(this)">
                    工作台快捷导航
                </div>                    
                <div class="guide">
                <ul>                
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../Content/NodeTree.aspx','Content/ContentManage.aspx')">内容管理</a></li>
                     <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../Shop/OrderLink.aspx','Shop/OrderList.aspx')">订单管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../Content/ModelGuide.aspx','Content/ModelManage.aspx')">内容模型管理</a></li>
            <%--<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../Shop/ModelGuide.aspx','Shop/ModelManage.aspx')">商品模型管理</a></li>--%>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../Content/SetNodeTree.aspx','Content/NodeManage.aspx')">节点管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../Template/TemplateLink.aspx','Template/TemplateManage.aspx')">模板管理</a></li>
                   <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../Template/TemplateLink.aspx','Template/LabelManage.aspx')">标签管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../User/AdminLink.aspx','User/AdminManage.aspx')">管理员管理</a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../User/UserGuide.aspx','User/UserManage.aspx')">会员管理</a></li> 
                     <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../Content/CreateLink.aspx','Content/CreateHtmlContent.aspx')">生成发布</a></li>                      
                   <%-- <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../Shop/ShopNodeTree.aspx','Shop/ProductManage.aspx')">商品管理</a></li>--%>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="javascript:OpenLink('../Config/ConfigGuide.aspx','Config/SiteInfo.aspx')">网站配置</a></li>
                   
                </ul>
                </div>
            </div>
        </li>
     </ul>
</div>
</form>
</body>
</html>

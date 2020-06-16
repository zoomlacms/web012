<%@ page language="C#" autoeventwireup="true" inherits="Forum_ShowForum, App_Web_swdbtm0r" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%Call.Label("{$SiteName/}"); %>互动交流平台 </title>
<script language="JavaScript" type="text/javascript">        var CookiePath = "/", CookieDomain = "";</script>
<script language="JavaScript" type="text/javascript" src="Utility/global.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/BBSXP_Modal.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="archives" title="<%Call.Label("{$SiteName/}"); %>论坛官方" href="http://www.ZoomLa.cn/archiver/" />
<link rel="alternate" type="application/rss+xml" title="<%Call.Label("{$SiteName/}"); %>论坛官方" href="http://www.ZoomLa.cn/rss.aspx" />
<link rel="stylesheet" type="text/css" href="Themes/default/scriptstyle_1_forumdisplay.css" />
<script type="text/javascript">
	function aColor() {
		var a = document.getElementsByTagName("a");
		for (var i = 0; i < a.length; i++) {
			var aHref = a[i].href;
			var aBool = aHref.indexOf("ShowForum");
			if (a[i].innerHTML == document.getElementById("pap").innerHTML && aBool != -1) {
				a[i].style.color = "#FFFFFF";
				a[i].style.backgroundColor = "#00ACE6";
			}
		}
	}
</script>
</head>
<body onload="aColor()">
    <form id="form1" runat="server">
    <div id="ajaxwaitid">
    </div>
    <div id="header">
        <div id="PageTopBody" runat="server">
        </div>
        <div class="wrap s_clear">
            <h2>
                <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank">
                    <img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a></h2>
            <div id="umenu">
                <a class="noborder" onclick="showWindow('register', this.href);return false;" href="../Guild/register.aspx">
                    注册</a> <a onclick="showWindow('login', this.href);return false;" href="login.aspx?action=login">
                        登录</a>
            </div>
            <div id="ad_headerbanner" runat="server">
            </div>
            <div id="menu">
                <ul>
                    <li class="current"><a hidefocus id="mn_index" href="Default.aspx">论坛</a></li>
                    <li id="hnxX2h" class="menu_7" onmouseover="showMenu({'ctrlid':this.id})"><a hidefocus
                        class="dropmenu" href="#" target="_blank">产品</a></li>
                    <li class="menu_2"><a hidefocus id="mn_search" href="search.aspx">搜索</a></li>
                    <li><a id="mn_plugin_yeswan_front" href="plugin.aspx?id=yeswan:front">帮助</a></li>
                    <li class="menu_5"><a hidefocus onclick="showWindow('nav', this.href);return false;"
                        href="misc.aspx?action=nav">导航</a></li></ul>

                <script type="text/javascript">
                    var currentMenu = $('mn_index') ? $('mn_index') : $('mn_index');
                    currentMenu.parentNode.className = 'current';
                </script>

            </div>

            <script type="text/javascript">
                function setstyle(styleid) {
                    str = unescape('op%3Dfeeds');
                    str = str.replace(/(^|&)styleid=\d+/ig, '');
                    str = (str != '' ? str + '&' : '') + 'styleid=' + styleid;
                    location.href = 'index.aspx?' + str;
                }
                function color1() {
                    document.getElementById("");
                }
            </script>

            <ul id="style_switch">
                <li class="current"><a style="background: #1e4b7e" title="默认风格" onclick="setstyle(1)"
                    href="###">默认风格</a></li>
                <li><a style="background: #ff8e00" title="uchome" onclick="setstyle(49)" href="###">
                    uchome</a></li>
                <li><a style="background: #55616a" title="jeans" onclick="setstyle(50)" href="###">jeans</a></li>
                <li><a style="background: #c36" title="fervor" onclick="setstyle(47)" href="###">fervor</a></li>
                <li><a style="background: #51a482" title="greenwall" onclick="setstyle(53)" href="###">
                    greenwall</a></li>
                <li><a style="background: #009b97" title="greyish-green" onclick="setstyle(66)" href="###">
                    greyish-green</a></li>
                <li><a style="background: #244d8f" title="blue" onclick="setstyle(69)" href="###">blue</a></li>
            </ul>
        </div>
    </div>
    <div id="nav">
        <a href="Default.aspx">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal></a> »
        <asp:Literal ID="ForumName" runat="server"></asp:Literal></div>
    <div id="ad_text" class="ad_text" runat="server">
    </div>
    <div id="wrap" class="wrap s_clear">
        <div class="main">
            <div class="content">
                <div id="forumheader" class="s_clear">
                    <h1 style="">
                        <asp:Literal ID="Forumtxt" runat="server"></asp:Literal></h1>
                    <p class="forumstats">
                        [ <strong>
                            <asp:Literal ID="TotalThreads" runat="server"></asp:Literal></strong> 主题 /
                        <asp:Literal ID="TotalPosts" runat="server"></asp:Literal>
                        回复 ]</p>
                    <div class="forumaction" style="float: right">
                        <div class="right">
                            <a href="rss.aspx?ForumID=<%=fid%>" target="_blank" class="feed">RSS</a></div>
                    </div>
                    <p class="channelinfo">
                        <asp:Literal ID="ForumDescription" runat="server"></asp:Literal></p>
                    <p id="modedby">
                        <asp:Literal ID="Moderated" runat="server"></asp:Literal></p>
                </div>
                <div id="modarea" class="s_clear" runat="server">
                    <div class="list">
                        <span class="headactions">
                            <img onclick="toggle_collapse('modarea_c');" alt="收起/展开" title="收起/展开" src="Themes/default/collapsed_no.gif"
                                id="modarea_c_img" class="toggle" /></span>
                        <h3>
                            <a href="javascript:;" id="tab_2" class="current">本版规则</a></h3>
                    </div>
                    <div id="modarea_c" style="">
                        <div id="tab_c_2" class="rule">
                            <asp:Literal ID="rule" runat="server"></asp:Literal>
                        </div>
                    </div>
                </div>
                <asp:Literal ID="FourmList" runat="server"></asp:Literal>
                <div class="pages_btns s_clear">
                    <div class="pages" id="lian">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
                    <span id="visitedforums" class="pageback"><a href="Default.aspx">返回首页</a></span>
                    <span class="postbtn" id="newspecial"><a href="Topic.aspx?action=newthread&fid=<%=fid %>">
                        发帖</a></span><div style="display: none" id="pap">
                            <%=pageIndex%></div>
                </div>
                <div class="gnstyle">
                    <a href="ShowForum.aspx?fid=<%=fid%>&type="><strong class="colorlan">全部</strong></a>
                    &nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=安装">安装</a>&nbsp;|&nbsp;<a
                        href="ShowForum.aspx?fid=<%=fid%>&type=使用"> 使用</a>&nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=疑问">疑问</a>&nbsp;|&nbsp;
                    <a href="ShowForum.aspx?fid=<%=fid%>&type=不是BUG">不是BUG</a>&nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=已答复"><span
                        class="colorhong">已答复</span></a>&nbsp;| &nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=有待解决"><span
                            class="colorhuang">有待解决</span></a>&nbsp;| &nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=分享">分享</a>&nbsp;|&nbsp;<a
                                href="ShowForum.aspx?fid=<%=fid%>&type=经验">经验</a>&nbsp;|&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=已解决"><span
                                    class="colorlv">已解决</span></a>
                </div>
                <div id="threadlist" class="threadlist datalist" style="position: relative;">
                    <table summary="forum_29" cellspacing="0" cellpadding="0" class="datatable" width="100%">
                        <thead class="colplural">
                            <tr>
                                <td colspan="2">
                                    类型:<a href="ShowForum.aspx?fid=<%=fid%>&type=">全部</a> | <a href="ShowForum.aspx?fid=<%=fid%>&type=投票">
                                        投票</a>
                                </td>
                                <th>
                                    <ul class="itemfilter s_clear">
                                        <li>主题:</li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type="><span>全部</span></a></li>
                                        <li><a class="filter" href="ShowForum.aspx?fid=<%=fid%>&type=精华"><span>精华</span></a></li>
                                        <li class="pipe">|</li>
                                        <li>时间:</li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=一天"><span>一天</span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=两天"><span>两天</span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=周"><span>周</span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=月"><span>月</span></a></li>
                                        <li><a href="ShowForum.aspx?fid=<%=fid%>&type=季"><span>季</span></a></li>
                                        <li class="pipe">|</li>
                                        <li><a class="order " href="ShowForum.aspx?fid=<%=fid%>&type=热门">热门</a></li>
                                    </ul>
                                </th>
                                <td class="author" style="text-align: right;">
                                </td>
                                <td>
                                    <a href="ShowForum.aspx?fid=<%=fid%>&type=" class="order ">作者/时间</a>
                                </td>
                                <td class="nums">
                                    <a href="ShowForum.aspx?fid=<%=fid%>&type=回复" class="order ">回复</a>&nbsp;<a href="ShowForum.aspx?fid=<%=fid%>&type=查看"
                                        class="order ">查看</a>
                                </td>
                                <td class="lastpost">
                                    <cite><a href="ShowForum.aspx?fid=<%=fid%>&type=最后发表" class="order order_active">最后发表</a></cite>
                                </td>
                            </tr>
                        </thead>
                        <div style="z-index: 2;">
                            <asp:Repeater ID="ShowList" runat="server">
                                <ItemTemplate>
                                    <tbody id="stickthread_<%#Eval("ThreadID") %>">
                                        <tr>
                                            <td class="folder">
                                                <a href="Thread.aspx?ThreadID=<%#Eval("ThreadID")%>&fid=<%=Request.QueryString["fid"] %>"
                                                    title="新窗口打开" target="_blank">
                                                    <%#GetThreadImg(Eval("ThreadID", "{0}"))%>
                                                </a>
                                            </td>
                                            <td class="icon">
                                                <%#GetThreadEmoticon(Eval("ThreadID", "{0}"))%>
                                            </td>
                                            <th class="subject new">
                                                <label>
                                                    &nbsp;</label>
                                                <span id="thread_<%#Eval("ThreadID")%>"><a href="ShowForum.aspx?fid=<%=fid%>&type=<%#Eval("Category") %>">
                                                    <%#getcategory(Eval("Category","{0}"))%></a><a href="Thread.aspx?ThreadID=<%#Eval("ThreadID")%>&fid=<%=Request.QueryString["fid"] %>"><font
                                                        color='<%#Eval("threadstyle")%>'><%#Eval("Topic","{0}")%></font></a></span>
                                            </th>
                                            <td class="author" align="right">
                                                <%#GetJingImg(Eval("ThreadID", "{0}"))%>
                                            </td>
                                            <td class="author" style="padding-left: -10px;">
                                                <cite><a href="#">
                                                    <%#Eval("PostAuthor")%></a> </cite><em>
                                                        <%#Eval("PostTime", "{0:...d}")%></em>
                                            </td>
                                            <td class="nums">
                                                <strong>
                                                    <%#Eval("TotalReplies")%></strong>/<em><%#Eval("TotalViews")%></em>
                                            </td>
                                            <td class="lastpost">
                                                <cite><a href="space.aspx?username=<%#Eval("LastName")%>">
                                                    <%#Eval("LastName")%></a></cite> <em><a href=""><span title="<%#Eval("LastTime")%>">
                                                        <%#GetDayDiff(Eval("LastTime","{0}")) %></span></a></em>
                                            </td>
                                        </tr>
                                    </tbody>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <tbody>
                            <tr>
                                <td class="folder">
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <th class="subject">
                                    <b>版块主题</b>
                                </th>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                        <asp:Repeater ID="PostList" runat="server">
                            <ItemTemplate>
                                <tbody id="normalthread_1528773">
                                    <tr>
                                        <td class="folder">
                                            <a href="Thread.aspx?ThreadID=<%#Eval("ThreadID")%>&fid=<%=Request.QueryString["fid"] %>"
                                                title="新窗口打开" target="_blank">
                                                <%#GetThreadImg(Eval("ThreadID", "{0}"))%>
                                            </a>
                                        </td>
                                        <td class="icon">
                                            <%#GetThreadEmoticon(Eval("ThreadID", "{0}"))%>
                                        </td>
                                        <th class="subject new">
                                            <label>
                                                &nbsp;
                                            </label>
                                            <span id="thread_<%#Eval("ThreadID")%>"><a href="ShowForum.aspx?fid=<%=fid%>&type=<%#Eval("Category") %>">
                                                <%#getcategory(Eval("Category","{0}"))%></a><a href="Thread.aspx?ThreadID=<%#Eval("ThreadID")%>&fid=<%=Request.QueryString["fid"] %>"><font
                                                    color='<%#Eval("threadstyle")%>'><%#ZoomLa.Common.BaseClass.Left(Eval("Topic","{0}"),32)%></font></a></span>
                                        </th>
                                        <td class="author" align="right">
                                            <%#GetJingImg(Eval("ThreadID", "{0}"))%>
                                        </td>
                                        <td class="author">
                                            <cite><a href="#">
                                                <%#Eval("PostAuthor")%></a> </cite><em>
                                                    <%#Eval("PostTime", "{0:d}")%></em>
                                        </td>
                                        <td class="nums">
                                            <strong>
                                                <%#Eval("TotalReplies")%></strong>/<em><%#Eval("TotalViews")%></em>
                                        </td>
                                        <td class="lastpost">
                                            <cite><a href="space.aspx?username=<%#Eval("LastName")%>">
                                                <%#Eval("LastName")%></a></cite> <em><a href="redirect.aspx?tid=<%#Eval("ThreadID") %>&goto=lastpost#lastpost">
                                                    <span title="<%#Eval("LastTime")%>">
                                                        <%#GetDayDiff(Eval("LastTime","{0}")) %></span></a></em>
                                        </td>
                                    </tr>
                                </tbody>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </div>
                <div class="pages_btns s_clear">
                    <div class="pages">
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </div>
                    <span id="visitedforums" class="pageback"><a href="Default.aspx">返回首页</a></span>
                    <span class="postbtn" id="newspecialtmp"><a href="Topic.aspx?action=newthread&fid=<%=fid %>">
                        发帖</a></span>
                </div>
            </div>
        </div>
    </div>
    <div id="ad_footerbanner" runat="server">
        <asp:Panel ID="panelpage" runat="server">
            总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
            <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
            <asp:Label ID="FirstPage" runat="server"></asp:Label>
            <asp:Label ID="RePage" runat="server"></asp:Label>
            <asp:Label ID="NextPage" runat="server"></asp:Label>
            <asp:Label ID="EndPage" runat="server"></asp:Label>
        </asp:Panel>
    </div>
    <div id="footer">
        <div class="wrap s_clear">
            <div id="footlink">
                <p>
                    <strong><a href="http://www.zoomla.cn/" target="_blank">ZoomLa! Technology Ltd.</a></strong>
                    ( <a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备09077823号</a>)<span
                        class="pipe">|</span><a href="mailto:tech#zoomla.cn">联系我们</a> <span class="pipe">|</span><a
                            href="archiver/" target="_blank">Archiver</a><span class="pipe">| </span>
                </p>
                <p class="smalltext">
                    <asp:Literal ID="TimeSpan" runat="server"></asp:Literal>
                    <span id="debuginfo">Processed in <%=pubclass.RunTime%> second(s)</span>.
                </p>
            </div>
            <div id="rightinfo">&copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。</div>
        </div>
    </div>
    </form>
</body>
</html>
<%@ page language="C#" autoeventwireup="true" inherits="Forum_Default, App_Web_hzgocbod" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%Call.Label("{$SiteName/}"); %>互动交流平台</title>
<script language="JavaScript" type="text/javascript"> var CookiePath = "/", CookieDomain = "";</script>
<script language="JavaScript" type="text/javascript" src="Utility/global.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/BBSXP_Modal.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="archives" title="<%Call.Label("{$SiteName/}"); %>论坛官方" href="http://www.ZoomLa.cn/archiver/" />
<link rel="alternate" type="application/rss+xml" title="<%Call.Label("{$SiteName/}"); %>论坛官方" href="http://www.ZoomLa.cn/rss.aspx" />
<link rel="stylesheet" type="text/css" href="Themes/default/scriptstyle_1_index.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="ajaxwaitid">
    </div>
    <div id="header">
        <div id="PageTopBody" runat="server">
        </div>
        <div class="wrap s_clear">
            <h2>
                <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a></h2>
            <div id="umenu">   
                <a class="noborder" href="../Guild/register.aspx">
                    注册</a> 
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="退出" Visible="false" 
                    onclick="Button1_Click"  CssClass="bt1"/>
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
                <li><a style="background: #244d8f" title="blue" onclick="setstyle(69)" href="###">blue</a></li></ul>
        </div>
        <div style="display: none" id="myprompt_menu" class="promptmenu">
            <div class="promptcontent">
                <ul class="s_clear">
                    <li style="display: none"><a id="prompt_pm" href="pm.aspx?filter=newpm" target="_blank">
                        私人消息 (0)</a></li>
                    <li style="display: none"><a id="prompt_announcepm" href="pm.aspx?filter=announcepm"
                        target="_blank">公共消息 (0)</a></li>
                    <li style="display: none"><a id="prompt_task" href="task.aspx" target="_blank">论坛任务
                        (0)</a></li>
                    <li style="display: none"><a id="prompt_systempm" href="notice.aspx?filter=systempm"
                        target="_blank">系统消息 (0)</a></li>
                    <li style="display: none"><a id="prompt_friend" href="notice.aspx?filter=friend"
                        target="_blank">好友消息 (0)</a></li>
                    <li style="display: none"><a id="prompt_threads" href="notice.aspx?filter=threads"
                        target="_blank">帖子消息 (0)</a></li></ul>
            </div>
        </div>
    </div>
    <div id="nav">
        <a href="Default.aspx">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal></a> » 首页</div>
    <div id="ad_text" class="ad_text" runat="server">
    </div>
    <div id="wrap" class="wrap s_clear">
        <div class="main">
            <div class="content">
                <div class="pages_btns s_clear">
                    <p>
                        你可以<a class="lightlink" onclick="showWindow('register', this.href);return false;"
                            href="../Guild/register.aspx">注册</a>一个帐号，并以此<a class="lightlink" onclick="showWindow('login', this.href);return false;"
                                href="login.aspx?action=login">登录</a>，以浏览更多精彩内容，并随时发布观点，与大家交流。</p>
                </div>
                
                <div id="ann">
                    <dl>
                        <dt>公告:
                            <dd>
                                <div id="annbody">
                                      <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate><div><a href="Thread.aspx?Threadid=<%# Eval("ThreadID") %>"><%# Eval("topic") %></a></div></ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </dd>
                    </dl>
                </div>
                <div class="itemtitle s_clear">
                    <p class="right forumcount">
                        今日: <em>
                            <asp:Label ID="lblNum" runat="server" Text="Label"></asp:Label></em>, 昨日: 
                        <em>
                        <asp:Label ID="lblBeforeNum" runat="server" Text="Label"></asp:Label>
                        </em>, 会员: <em>
                            <asp:Literal ID="UserTotal" runat="server"></asp:Literal></em>
                    </p>
                    <ul>
                        <li><a href="Default.aspx?op=classics"><span>论坛版块</span></a> </li>
                        <li><a href="Default.aspx?op=feeds"><span>论坛动态</span></a> </li>
                    </ul>
                </div>
                
                
                <asp:Literal ID="FourmList" runat="server"></asp:Literal>
                
               
                <div class="mainbox list">
                    <span class="headactions">
                        <img id="forumlinks_img" onclick="toggle_collapse('forumlinks');" alt="" src="Themes/default/collapsed_no.gif"></span>
                    <h3>
                        友情链接</h3>
                    <div id="forumlinks">
                        <div class="forumlinks">
                            <ul class="s_clear">
                                <li>
                                    <div class="forumlogo">
                                        <img border="0" alt="ZoomLa.COM" src="images/logo.gif" height="30px" width="100px"></div>
                                    <div class="forumcontent">
                                        <h5>
                                            <a href="http://www.ZoomLa.cn" target="_blank">ZoomLa.CN</a></h5>
                                        <p>
                                            ZoomLa! 官方网站 用户会员区</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="forumlogo">
                                        <img border="0" alt="免费论坛申请" src="/Forum/Images/links/5d6d.gif" height="30px" width="100px"></div>
                                    <div class="forumcontent">
                                        <h5>
                                            <a href="http://www.5d6d.com/" target="_blank">免费论坛申请</a></h5>
                                        <p>
                                            ZoomLa!免费论坛申请,不限空间、流量，稳定、安全、高速、无广告，免费绑定自有域名、免费提供二级域名</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="forumimglink">
                       
                                    <asp:DataList ID="UrlList" runat="server" DataKeyField="" Width="100%" RepeatColumns="8">
                                    <ItemTemplate>
                                    <table width="100%">
                                       <tr>
                                       <td>
                                          <a href='<%#Eval("URL") %>' target="_blank" title='<%#Eval("Name") %>'><asp:Image ID="Image1" runat="server" Height="30px" Width="100px" ImageUrl='<%#Eval("Logo")%>' /></a>
                                       </td>
                                       </tr>
                                    </table>
                                    </ItemTemplate>
                                    </asp:DataList>
                        </div>
                        
                        <div class="forumtxtlink">
                            <ul class="s_clear">
                                <li><a title="天极网社区" href="http://bbs.yesky.com" target="_blank">天极网社区</a></li>
                                <li><a title="电脑报论坛" href="http://bbs.shudoo.com/" target="_blank">电脑报论坛</a></li>
                                <li><a title="ChinaUnix." href="http://www.chinaunix.net/" target="_blank">ChinaUnix.</a></li>
                        </div>
                    </div>
                </div>
                <div id="online" class="mainbox list">
                    <span class="headactions"><a class="nobdr" href="index.aspx?showoldetails=yes#online">
                        <img alt="" src="Themes/default/collapsed_yes.gif"></a></span>
                    <h3>
                        <strong>在线会员</strong> - 总计 <em><%=Allonline%></em>
                        人在线 - 最高记录是 <em><%=BaseOnline %></em> 于 <em><%=BaseOnlineTime %></em>.
                    </h3>
                </div>
            </div>
    </div>
    </div>
    <div id="ad_footerbanner" runat="server">
    </div>
    <div id="footer">
        <div class="wrap s_clear">
            <div id="footlink">
                <p>
                    <strong><a href="http://www.zoomla.cn/" target="_blank"><%Call.Label("{$SiteName/}"); %> Technology Ltd.</a></strong>
                    ( <a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备09077823号</a>)<span
                        class="pipe">|</span><a href="mailto:tech#zoomla.cn">联系我们</a> <span class="pipe">
                            |</span><a href="archiver/" target="_blank">Archiver</a><span class="pipe">|
                            </span>
                </p>
                <p class="smalltext">
                    <asp:Literal ID="TimeSpan" runat="server"></asp:Literal> <span id="debuginfo">Processed in <%=pubclass.RunTime%>
second(s)</span>.
                </p>
            </div>
            <div id="rightinfo">&copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。 </div>
        </div>
    </div>
    </form>
</body>
</html>
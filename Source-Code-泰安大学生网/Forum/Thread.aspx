<%@ page language="C#" autoeventwireup="true" inherits="Forum_Thread, App_Web_swdbtm0r" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%Call.Label("{$SiteName/}"); %>互动交流平台 </title>
<script language="JavaScript" type="text/javascript">
	var CookiePath = "/", CookieDomain = "";
</script>
<script language="JavaScript" type="text/javascript" src="Utility/global.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/BBSXP_Modal.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/Commons.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/template_quickreply.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/Ajax.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/Bbcodes.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/Bbcode.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/Common.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/Posts.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/template_report.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/template_showtopic.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/template_utils.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/Post.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/Bbcode.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="archives" title="<%Call.Label("{$SiteName/}"); %>论坛官方" href="http://www.ZoomLa.cn/archiver/" />
<link rel="alternate" type="application/rss+xml" title="<%Call.Label("{$SiteName/}"); %>论坛官方" href="http://www.ZoomLa.cn/rss.aspx" />
<link rel="stylesheet" type="text/css" href="Themes/default/scriptstyle_1_forumdisplay.css" />
<style type="text/css">
	.style3{width: 46px;}
	.style4{ padding-left: 10px;
		background-color: #EBF2F8;
		width: 125px; }
	.style5 {padding-left: 10px;
		background-color: #EBF2F8;
		width: 46px;}
	.style6{width: 214px;
		background: #D3E8F2; }
	.style7{border-style: none;
		border-color: inherit;
		border-width: medium;
		vertical-align: top;
		overflow: hidden;
		padding-left: 10px;
		background-color: white;
		height: 35px;
		padding-right: 1px;
		padding-top: 0;
		padding-bottom: 0; }
</style>
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
                    <li class="menu_2"><a hidefocus id="mn_search" href="">搜索</a></li>
                    <li><a id="mn_plugin_yeswan_front" href="">帮助</a></li>
                    <li class="menu_5"><a hidefocus onclick="showWindow('nav', this.href);return false;"
                        href="">导航</a></li></ul>

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
    </div>

    <script type="text/javascript">        zoomstatus = parseInt(1); var imagemaxwidth = '600'; var aimgcount = new Array();</script>

    <div id="nav">
        <a href="Default.aspx">
            <asp:Literal ID="ForumName" runat="server"></asp:Literal></a> » <a href="ShowForum.aspx">
                <asp:Literal ID="ForumLink" runat="server"></asp:Literal></a>
    </div>
    <div id="wrap" class="wrap s_clear threadfix">
        <div class="forumcontrol">
            <div id="Div1" class="wrap s_clear threadfix">
                <div class="forumcontrol">
                    <table cellspacing="0" cellpadding="0" width="100%">
                        <tr>
                            <td class="style6">
                            </td>
                            <td>
                                <div class="pages">
                                    <asp:Label ID="lblPage1" runat="server" Text=""></asp:Label>
                                </div>
                                <span class="pageback" id="visitedforums" onmouseover="$('visitedforums').id
    = 'visitedforumstmp';this.id = 'visitedforums';showMenu({'ctrlid':this.id})"><a href="ShowForum.aspx?fid=<%=GetFid()%>">
 返回列表</a></span> <span class="postbtn" id="newspecial" prompt="post_newthread" onmouseover="$('newspecial').id = 'newspecialtmp';this.id = 'newspecial';showMenu({'ctrlid':this.id})">
            <a href="Topic.aspx?action=newthread&fid=<%=GetFid()%>" onclick="showWindow('newthread', this.href);return false;">
                发帖</a></span>
                   <span class="postbtn" id="Span1" prompt="post_newthread" onmouseover="$('Span1').id = 'newspecialtmp';this.id = 'Span1';showMenu({'ctrlid':this.id})">
            <a href="ToStick1.aspx?action=tostick&ThreadID=<%=GetTid()%>&fid=<%=GetFid()%>" onclick="showWindow('tostick', this.href);return false;")>
                回帖</a></span>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="postlist" class="mainbox viewthread">
                    <div id="post_7157145">
                        <table id="pid7157145" summary="pid7157145" cellspacing="0" cellpadding="0">
                            <tr>
                                <td id="style2" rowspan="2" valign="top" class="style3">
                                    <div class="popupmenu_popup userinfopanel" id="userinfo7157145" style="display: none;
                                        position: absolute;">
                                    </div>
                                    <div>
                                        <div id="postLeft">
                                            <div class="avatar">
                                                
                                                    <img src="<%=topuserface%>" onerror="this.onerror=null;this.src='Images/Face/noavatar_middle.gif'" />
                                                <p>
                                                    <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>
                                                </p>
                                                <p>
                                                &nbsp;</p>
                                                <dl class="profile s_clear">
                                                    <dt>帖子&nbsp;&nbsp;<asp:Label ID="lblTotalPosts" runat="server"></asp:Label></dt>
                                                    <dt>声望&nbsp;&nbsp;<asp:Label ID="lblReputation" runat="server"></asp:Label></dt>
                                                    <dt>金币&nbsp;&nbsp;<asp:Label ID="lblUserMoney" runat="server"></asp:Label></dt>
                                                    <dt>注册时间&nbsp;&nbsp;<asp:Label ID="lblUserRegisterTime" runat="server"></asp:Label></dt></dl>
                                             </div>
                                         </div>
                                      </div>
                                                
                                </td>
                                <td class="style7">
                                    <div class="">
                                    <div class="posterinfo">
                                            <div class="pagecontrol">
                                                <a href="viewthread.php?action=printable&amp;tid=900320" target="_blank" class="print left">
                                                    打印</a>
                                                <div class="msgfsize right">
                                                    <label>
                                                        字体大小:
                                                    </label>
                                                    <small onclick="$('postlist').className='mainbox viewthread'" title="正常">t</small><big
                                                        onclick="$('postlist').className='mainbox viewthread t_bigfont'" title="放大">T</big>
                                                </div>
                                            </div>
                                            <div class="authorinfo">
                                            
                                                <em id="authorposton12919594"><img class="authicon" id="authicon12919594" src="images/common/online_member.gif"
                                                    onclick="showauthor(this, 'userinfo12919594');" />
                                                     <strong><a title="复制本帖链接" id="postnum7157145" href="javascript:;" onclick="setCopy('http://www.discuz.net/viewthread.php?tid=900320', '帖子地址已经复制到剪贴板')">
                                        <font color="red"><b>楼主<asp:Label ID="lblPostAuthor" runat="server" Text="Label"></asp:Label></font></a> </b>
                                             </strong>
                                             &nbsp;
                                                    <asp:Label ID="lblUserName1" runat="server"></asp:Label>
                                                    发表于 <span title="<%#Eval("LastTime")%>">
                                                        <%#GetDayDiff(Eval("LastTime","{0}")) %>&nbsp;分钟前</span></em>| 
                                                <asp:LinkButton ID="LbtnLookLz" runat="server" onclick="LbtnLookLz_Click">只看该作者</asp:LinkButton>
                                                  <em class="rpostno" title="跳转到指定楼层">跳转到
                                                <input id="rpostnovalue" size="3" type="text" class="txtarea" onkeydown="if(event.keyCode==13) {$('rpostnobtn').click();return false;}" /><span
                                                    id="rpostnobtn" onclick="window.location='redirect.php?ptid=900320&ordertype=0&postno='+$('rpostnovalue').value">»</span></em>
                                          <strong> 
                                      &nbsp;        
                                     <a href="viewthread.php?tid=900320&amp;extra=page%3D1&amp;ordertype=1">
                                                倒序看帖</a></strong>           
                                            </div>
                                        </div>
                                 
                                    </div>                
                                    <div class="defaultpost">
                        <div class="ad_textlink2" id="ad_thread2_0">
                            <a href="" target="_blank">
                                <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
                            </a>
                        </div>
                        <div style="word-wrap:break-word;display:block; width:680px; clear:both; overflow:hidden;">
                            <asp:Label ID="lblBody" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                                </td>
                             </tr>
                            <tr>
                                <td class="postcontent postbottom">
                                    <div class="signatures" style="max-height: 60px; maxheightie: 60px;">
                                        <asp:Label ID="lblCont" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                </td>
                                <td class="postcontent">
                                    <div class="postactions">
                                        <div class="postact s_clear">
                                            <em></em>
                                            <p>
                                            </p>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="threadad">
                                <td class="style5">
                                </td>
                                <td class="adcontent">
                                    <div class="ad_column" id="ad_interthread">
                                    </div>
                                </td>
                            </tr>
                            </table>
                    </div>
                    <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div id="post_7160839">
                            <table id="pid7160839" summary="pid7160839" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td id="style4">
                                        <div class="popupmenu_popup userinfopanel" id="userinfo7160839" style="display: none;
                                            position: absolute;">
                                        </div>
                                        <div>
                                            <div class="avatar">
                                                <a href="" target="_blank">
                                                    <img src="<%#GetUserFace(Eval("PostAuthor","{0}")) %>" onerror="this.onerror=null;this.src='Images/Face/noavatar_middle.gif'" /></a>
                                                <p>
                                                    <em>
                                                        <%#GetUserName(Eval("PostAuthor","{0}"))%>
                                                    </em>
                                                </p>
                                            
                                        <p>
                                            &nbsp;</p>
                                        <dl class="profile s_clear">
                                            <dt>帖子&nbsp;&nbsp;<%#GetTotalPosts(Eval("PostAuthor").ToString())%></dt>
                                            <dt>声望&nbsp;&nbsp;<%#GetReputation(Eval("PostAuthor").ToString())%></dt>
                                            <dt>金币&nbsp;&nbsp;<%#GetUserMoney(Eval("PostAuthor").ToString())%></dt>
                                            <dt>注册时间&nbsp;&nbsp;<%#GetRegisterTime(Eval("PostAuthor").ToString())%></dt></dl>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="postcontent">
                                        <div class="defaultpost">
                                            <div class="postmessage ">
                                                <div class="t_msgfontfix">
                                                    <table cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td id="postmessage_7160839">
                                                                <%#Eval("Body") %>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div id="post_rate_div_7160839">
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                    </td>
                                    <td class="postcontent">
                                        <div class="postactions">
                                            <div class="postact s_clear">
                                                <em></em>
                                                <p>
                                                    <a href="javascript:;" onclick="scrollTo(0,0);">TOP</a>
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="threadad">
                                    <td class="style4">
                                    </td>
                                    <td class="adcontent">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </ItemTemplate>
                  </asp:Repeater>
                    <div id="post_7160859">
                    </div>
                
            <div id="postlistreply" class="mainbox viewthread">
                <div id="post_new" class="viewthread_table" style="display: none">
                </div>
            </div>
            <div class="forumcontrol s_clear">
                <table cellspacing="0" cellpadding="0" class="narrow">
                    <tr>
                        <td>
                            <div class="pages">
                                <asp:Label ID="lblPage2" runat="server" Text=""></asp:Label>
                            </div>
                            <span class="pageback" id="visitedforums" onmouseover="$('visitedforums').id= 'visitedforumstmp';this.id = 'visitedforums';showMenu({'ctrlid':this.id})">
                                <a href="Thread.aspx?ThreadID=<%=GetTid()%>&fid=<%=GetFid()%>">返回列表</a></span>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="f_post" class="mainbox viewthread">
                <table cellspacing="0" cellpadding="0">
                    <tr>
                        <td class="postauthor">
                            <div class="avatar">
                                <img src="<%=selfface %>" onerror="this.onerror=null;this.src='Images/Face/noavatar_middle.gif'" /></div>
                        </td>
                        <td>
                            <div class="editor_tb">
                                <span class="right"><a href="" onclick="return switchAdvanceMode(this.href)">高级模式</a>
                                    <span class="pipe">|</span> <span id="newspecialtmp" onmouseover="$('newspecial').id = 'newspecialtmp';this.id = 'newspecial';showMenu({'ctrlid':this.id})">
                                        <a href="Topic.aspx?action=newthread&fid=<%=GetFid() %>" >发新话题</a></span>
                                        </span>
                                    </div>
                                    <asp:TextBox ID="txtNew" runat="server" Height="107px" TextMode="MultiLine" Width="443px"></asp:TextBox><br />
                                    <label for="fastpostrefresh">
                                    </label>
                                    <asp:Button ID="Button1" runat="server" Text="发表回复" OnClick="Button1_Click" />
                                    <input id="fastpostrefresh" type="checkbox" />
                                    <label for="fastpostrefresh">
                                        回帖后跳转到最后一页</label>
                                    <script type="text/javascript">
                                if (getcookie('discuz_fastpostrefresh') == 1) { $('fastpostrefresh').checked = true; }
                                    </script>

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <div id="footer">
        <div class="wrap s_clear">
            <div id="footlink">
                <p>
                    <strong><a href="http://www.zoomla.cn/" target="_blank"><%Call.Label("{$SiteName/}"); %> Technology Ltd.</a></strong>
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
    <script type="text/javascript">
		var postminchars = parseInt('10'); var postmaxchars = parseInt('50000'); var disablepostctrl = parseInt('0'); 
    </script>
    </form>
</body>
</html>
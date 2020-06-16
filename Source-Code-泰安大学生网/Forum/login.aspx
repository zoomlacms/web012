<%@ page language="C#" autoeventwireup="true" inherits="Forum_login, App_Web_swdbtm0r" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%Call.Label("{$SiteName/}"); %>互动交流平台</title>
<script language="JavaScript" type="text/javascript">        var CookiePath = "/", CookieDomain = "";</script>
<script language="JavaScript" type="text/javascript" src="Utility/global.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/BBSXP_Modal.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="archives" title="<%Call.Label("{$SiteName/}"); %>论坛官方" href="http://www.ZoomLa.cn/archiver/" />
<link rel="alternate" type="application/rss+xml" title="<%Call.Label("{$SiteName/}"); %>论坛官方" href="http://www.ZoomLa.cn/rss.aspx" />
<link rel="stylesheet" type="text/css" href="Themes/default/style_1_common.css" />
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
                <a title="<%Call.Label("{$SiteName/}"); %>论坛官方" href="Default.aspx">
                    <img border="0" alt="<%Call.Label("{$SiteName/}"); %>论坛官方" style="filter: Alpha(Opacity=100);" src="images/logo.gif"></a></h2>
            <div id="umenu">
                <a class="noborder" href="../Guild/register.aspx">注册</a> <a href="login.aspx?action=login">
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
            </div>
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
    <div id="nav">
        <a href="Default.aspx">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal></a> » 登录论坛
    </div>
    <div id="wrap" class="wrap s_clear">
        <div class="main">
            <div class="content nofloat">
                <div class="fcontent" id="main_messaqge">
                    <div id="layer_login">
                        <h3 class="float_ctrl">
                            <em id="returnmessage">用户登录</em> <span></span>
                        </h3>
                        <div class="postbox">
                            <div class="loginform nolabelform">
                                <div class="float_typeid selectinput" id="account">
                                    <select name="loginfield" style="float: left; width: auto" id="loginfield">
                                        <option value="username">用户名</option>
                                        <option value="uid">UID</option>
                                        <option value="email">Email</option>
                                    </select>
                                    <asp:TextBox ID="username1" autocomplete="off" size="36" class="txt" TabIndex="1"
                                        value="" runat="server"></asp:TextBox>
                                </div>
                                <p class="selectinput loginpsw">
                                    <label for="password3">
                                        密 码 ：</label>
                                    <asp:TextBox ID="password1" runat="server" TextMode="Password" size="36" class="txt"
                                        TabIndex="1"></asp:TextBox>
                                </p>
                                <div>
                                    <select id="questionid" name="questionid">
                                        <option value="0">安全提问</option>
                                        <option value="1">母亲的名字</option>
                                        <option value="2">爷爷的名字</option>
                                        <option value="3">父亲出生的城市</option>
                                        <option value="4">您其中一位老师的名字</option>
                                        <option value="5">您个人计算机的型号</option>
                                        <option value="6">您最喜欢的餐馆名称</option>
                                        <option value="7">驾驶执照的最后四位数字</option>
                                    </select>
                                </div>
                                <div class="float_typeid selecttype">
                                    <asp:TextBox ID="answer" runat="server" autocomplete="off" size="36" class="txt" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="logininfo multinfo">
                                <h4>
                                    没有帐号？<a href="../Guild/register.aspx" title="注册帐号">注册</a></h4>
                                <p>
                                    <a href="javascript:;" title="找回密码">找回密码</a></p>
                                <p>
                                    <a href="javascript:;" title="清除痕迹">清除痕迹</a></p>
                            </div>
                            <p class="fsubmit s_clear">
                                <asp:Button ID="loginsubmit" runat="server" Text="登录" TabIndex="1" 
                                    onclick="loginsubmit_Click" />
                                <asp:CheckBox ID="cookietime" tabindex="1" runat="server" />
                                <label for="cookietime">
                                    记住我的登录状态</label>
                            </p>
                        </div>
                    </div>
                    <div id="layer_lostpw" style="display: none;">
                        <h3 class="float_ctrl">
                            <em id="returnmessage3">找回密码</em> <span></span>
                        </h3>
                        <div class="postbox">
                            <div class="loginform">
                                <label>
                                    <em>用户名:</em><input type="text" name="username" size="25" value="" tabindex="1" class="txt" /></label>
                                <label>
                                    <em>Email:</em><input type="text" name="email" size="25" value="" tabindex="1" class="txt" /></label>
                            </div>
                            <div class="logininfo multinfo">
                                <h4>
                                    没有帐号？<a href="register.aspx" onclick="hideWindow('login');showWindow('register', this.href);return false;"
                                        title="注册帐号">注册</a></h4>
                                <p>
                                    <a href="javascript:;" onclick="display('layer_login');display('layer_lostpw');">返回登录</a></p>
                            </div>
                            <p class="fsubmit s_clear">
                                <em>&nbsp;</em>
                                <button class="submit" type="submit" name="lostpwsubmit" value="true" tabindex="100">
                                    提交</button>
                            </p>
                        </div>
                    </div>
                </div>
                <div id="layer_message" class="fcontent alert_win" style="display: none;">
                    <h3 class="float_ctrl">
                        <em>用户登录</em> <span></span>
                    </h3>
                    <hr class="shadowline" />
                    <div class="postbox">
                        <div class="alert_right">
                            <div id="messageleft">
                            </div>
                            <p class="alert_btnleft" id="messageright">
                            </p>
                        </div>
                    </div>
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
                    <strong><a href="http://www.zoomla.cn/" target="_blank">ZoomLa! Technology Ltd.</a></strong>
                    ( <a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备09077823号</a>)<span
                        class="pipe">|</span><a href="mailto:tech#zoomla.cn">联系我们</a> <span class="pipe">|</span><a
                            href="archiver/" target="_blank">Archiver</a><span class="pipe">| </span>
                </p>
                <p class="smalltext">
                    <asp:Literal ID="TimeSpan" runat="server"></asp:Literal>
                    <span id="debuginfo">Processed in 0.025539 second(s), 3 queries</span>.
                </p>
            </div>
            <div id="rightinfo">&copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。</div>
        </div>
    </div>
    </form>
</body>
</html>
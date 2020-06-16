<%@ page language="C#" autoeventwireup="true" inherits="Forum_Topic, App_Web_hzgocbod" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%Call.Label("{$SiteName/}"); %>互动交流平台</title>
<script language="JavaScript" type="text/javascript">        
var CookiePath = "/", CookieDomain = "";
function typeTh2(op) {
	switch (op) {
		case "灰色":
			document.getElementById("HiddenField3").value = "#CCCCCC";
			break;
		case "黄色":
			document.getElementById("HiddenField3").value = "yellow";
			break;
		case "红色":
			document.getElementById("HiddenField3").value = "red";
			break;
		case "绿色":
			document.getElementById("HiddenField3").value = "green";
			break;
		case "蓝色":
			document.getElementById("HiddenField3").value = "blue";
			break;
		default:
			document.getElementById("HiddenField3").value = "#000";
	}
}
</script>
<script language="JavaScript" type="text/javascript" src="Utility/global.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/BBSXP_Modal.js"></script>
<script language="JavaScript" type="text/javascript" src="Utility/Post.js"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<script src="Utility/Common.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="archives" title="<%Call.Label("{$SiteName/}"); %> 逐浪论坛官方" href="http://www.ZoomLa.cn/archiver/" />
<link rel="alternate" type="application/rss+xml" title="<%Call.Label("{$SiteName/}"); %>逐浪论坛官方" href="http://www.ZoomLa.cn/rss.aspx" />
<link rel="stylesheet" type="text/css" href="Themes/default/scriptstyle_1_post.css" />  
</head>
<body onload="switchicon(null,null),typeTh('')">
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
            </div>
            <ul id="style_switch">
                <li class="current"><a style="background: #1e4b7e" title="默认风格" onclick="setstyle(1)"
                    href="###">默认风格</a></li>
                <li><a style="background: #ff8e00" title="uchome" onclick="setstyle(49)" href="###">
                    uchome</a></li>
                <li><a style="background: #55616a" title="jeans" onclick="setstyle(50)" href="###">
                    jeans</a></li>
                <li><a style="background: #c36" title="fervor" onclick="setstyle(47)" href="###">
                    fervor</a></li>
                <li><a style="background: #51a482" title="greenwall" onclick="setstyle(53)" href="###">
                    greenwall</a></li>
                <li><a style="background: #009b97" title="greyish-green" onclick="setstyle(66)" href="###">
                    greyish-green</a></li>
                <li><a style="background: #244d8f" title="blue" onclick="setstyle(69)" href="###">
                    blue</a></li></ul>
        </div>
    </div>
    <div id="nav">
        <a href="Default.aspx">
            <asp:Literal ID="ForumName" runat="server"></asp:Literal></a> »
        <asp:Literal ID="ForumLink" runat="server"></asp:Literal></div>
    <div id="wrap" class="wrap s_clear">
        <div class="main">
            <div class="content editorcontent">
                <input type="hidden" name="formhash" id="formhash" value="" />
                <input type="hidden" name="posttime" id="posttime" value="" />
                <input type="hidden" name="wysiwyg" id="e_mode" value="0" />
                <input type="hidden" name="iconid" id="iconid" value="" />
                <div class="s_clear" id="editorbox">
                    <h3 class="float_ctrl">
                        <em id="returnmessage">发新话题</em>
                    </h3>
                    <div class="postbox" id="postbox">
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                        <asp:HiddenField ID="HiddenField2" runat="server" />
                        <div class="float_postinfo s_clear">
                            &nbsp;
                            <em id="icon" class="dropmenu" onclick="showMenu({'ctrlid':this.id})">
                            <img id="icon_img" name="icon_img" src="images/icons/icon1.gif" alt="" /></em>
                            <ul id="icon_menu" class="popupmenu_popup" style="display: none">
                                <li><a href="javascript:;">
                                    <img onclick="switchicon(65,this)" src="images/icons/icon01.gif" alt="" /></a></li><li>
                                        <a href="javascript:;">
                                            <img onclick="switchicon(66,this)" src="images/icons/icon02.gif" alt="" /></a></li><li>
                                                <a href="javascript:;">
                                                    <img onclick="switchicon(67,this)" src="images/icons/icon03.gif" alt="" /></a></li><li>
                                                        <a href="javascript:;">
                                                            <img onclick="switchicon(68,this)" src="images/icons/icon04.gif" alt="" /></a></li><li>
                                                                <a href="javascript:;">
                                                                    <img onclick="switchicon(69,this)" src="images/icons/icon05.gif" alt="" /></a></li><li>
                                                                        <a href="javascript:;">
                                                                            <img onclick="switchicon(70,this)" src="images/icons/icon06.gif" alt="" /></a></li><li>
                                                                                <a href="javascript:;">
                                                                                    <img onclick="switchicon(71,this)" src="images/icons/icon07.gif" alt="" /></a></li><li>
                                                                                        <a href="javascript:;">
                                                                                            <img onclick="switchicon(72,this)" src="images/icons/icon08.gif" alt="" /></a></li><li>
                                                                                                <a href="javascript:;">
                                                                                                    <img onclick="switchicon(73,this)" src="images/icons/icon09.gif" alt="" /></a></li><li>
                                                                                                        <a href="javascript:;">
                                                                                                            <img onclick="switchicon(74,this)" src="images/icons/icon10.gif" alt="" /></a></li><li>
                                                                                                                <a href="javascript:;">
                                                                                                                    <img onclick="switchicon(75, this)" src="images/icons/icon11.gif" alt="" /></a></li><li>
                                                                                                                        <a href="javascript:;">
                                                                                                                            <img onclick="switchicon(76, this)" src="images/icons/icon12.gif" alt="" /></a></li><li>
                                                                                                                                <a href="javascript:;">
                                                                                                                                    <img onclick="switchicon(77, this)" src="images/icons/icon13.gif" alt="" /></a></li><li>
                                                                                                                                        <a href="javascript:;">
                                                                                                                                            <img onclick="switchicon(78, this)" src="images/icons/icon14.gif" alt="" /></a></li><li>
                                                                                                                                                <a href="javascript:;">
                                                                                                                                                    <img onclick="switchicon(79, this)" src="images/icons/icon15.gif" alt="" /></a></li><li>
                                                                                                                                                        <a href="javascript:;">
                                                                                                                                                            <img onclick="switchicon(80, this)" src="images/icons/icon16.gif" alt="" /></a></li></ul>
                            <span>
                                <input name="subject" id="subject" prompt="post_subject" class="txt" value="" maxlength="50" tabindex="1" runat="server" />
                                
                            </span>
                            <div class="left">
                                 <select id="threadID" onchange="typeTh(this.value)">
                                      <option value="">请选择帖子类型</option>
                                          <option value="安装">安装</option>
                                               <option value="使用">使用</option>
                                                   <option value="疑问">疑问</option>
                                                      <option value="不是BUG">不是BUG</option>
                                                           <option value="已答复">已答复</option>
                                                               <option value="有待解决">有待解决</option>
                                                                    <option value="分享">分享</option>
                                                                          <option value="经验">经验</option>
                                                                               <option value="已解决">已解决</option>
                                </select>
                                <select onchange="typeTh2(this.value)" id="titColor">
                                   <option value="">--请选择标题颜色--</option>
                                   <option value="红色">红色</option>
                                   <option value="蓝色">蓝色</option>
                                   <option value="绿色">绿色</option>
                                   <option value="黄色">黄色</option>
                                   <option value="灰色">灰色</option>
                                </select>
                                <asp:HiddenField ID="HiddenField3" runat="server" />
                            </div>
                        </div>
                        
                        <div id="e_controls" style="margin-top:5px">
                            <div>
                                <div class="newediter">
                                    <table cellpadding="0" cellspacing="0" border="0" width="100%" style="table-layout: fixed">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="e_textarea" Height="300px" TextMode="MultiLine" class="txt" prompt="post_message" tabindex="1" runat="server" ></asp:TextBox>
                                                <script type="text/javascript">
                                                    //<![CDATA[
                                                    CKEDITOR.replace('e_textarea',
						                            {
						                                skin: 'kama'
						                            });
                                                    //]]>
                                                </script>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="columntype">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="firstlist posttags">
                                        <p>
                                            <strong>标签(TAG):</strong> (用逗号或空格隔开多个标签，最多可填写 <strong>5</strong> 个)</p>
                                        <p>
                                            <input type="text" name="tags" id="tags" class="txt" value="" tabindex="1" />
                                            <button name="addtags" type="button" onclick="relatekw();return false">
                                                +可用标签</button>
                                            <span id="tagselect"></span>
                                        </p>
                                    </td>
                                    <td class="firstlist">
                                        <p>
                                            <strong>阅读权限:</strong></p>
                                        <p>
                                            <input type="text" name="readperm" value="" class="txt" tabindex="1" />
                                            0或空为不限制</p>
                                    </td>
                                    <td class="firstlist">
                                        <p>
                                            <strong>售价</strong>(金钱):</p>
                                        <p>
                                            <input type="text" name="price" value="" class="txt" tabindex="1" />
                                            <span title="您可以使用 [free]message[/free] 代码发表无需付费也能查看的免费信息">最高 30 </span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="columntype">
                            <h4>
                                发帖选项:</h4>
                            <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td class="firstlist">
                                        <p>
                                            <input type="checkbox" name="htmlon" id="htmlon" value="0" disabled="disabled" /><label
                                                for="htmlon">Html 代码</label></p>
                                        <p>
                                            <input type="checkbox" id="allowimgcode" disabled checked="checked" /><label for="allowimgcode">[img] 
                                            代码</label></p>
                                    </td>
                                    <td>
                                        <p>
                                            <asp:CheckBox ID="cbIsUrlcheck" runat="server" Text="禁用 URL 识别" />
                                        </p>
                                        <p>
                                            <asp:CheckBox ID="cbIsEmoticon" runat="server" Text="禁用" />
                                            &nbsp;<a href="faq.php?action=faq&amp;id=5&amp;messageid=32" target="_blank">表情</a></p>
                                           
                                        <p>
                                            <asp:CheckBox ID="cbIsLocked" runat="server" 
                                                Text="禁用" />
                                                    </p>
                                        <p>
                                            <asp:CheckBox ID="cbIsTagResolve" runat="server" Text="禁用 标签解析" />
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            <asp:CheckBox ID="cbThreadOrder" runat="server" Text="倒序看帖" />
                                        </p>
                                        <p>
                                            <asp:CheckBox ID="cbIsThreadRevert" runat="server" Text="关注此主题的新回复" Checked="true" />
                                        </p>
                                        <p>
                                            <asp:CheckBox ID="cbIsPersonalsign" runat="server" Text="使用个人签名" />
                                        </p>
                                        <p>
                                            <asp:CheckBox ID="cbIsAnonymity" runat="server" Text="使用匿名发帖" />
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            <asp:CheckBox ID="cbThreadTop" runat="server" Text="主题置顶" />
                                        </p>
                                        <p>
                                            <asp:CheckBox ID="cbIsGood" runat="server" Text="精华帖子" />
                                        </p>
                                        <p>
                                            <asp:CheckBox ID="cbVisible" runat="server" Text="回帖仅作者可见" />
                                        </p>
                                        <p>
                                            <asp:CheckBox ID="cbIsRobThread" runat="server" Text="抢楼帖" />
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="btnbar">
                            <span></span>
                            <asp:Button ID="postsubmit" runat="server" Text="发新话题" prompt="post_submit" 
                                tabindex="1" onclick="postsubmit_Click"/>
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
    </form>
</body>
</html>
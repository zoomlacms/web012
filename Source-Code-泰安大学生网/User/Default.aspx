<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="User_Default, App_Web_erm1kfs3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head id="Head1" runat="server">
<title>会员中心</title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/default.css" rel="stylesheet" type="text/css" />
<script src="/js/ajaxrequest.js"></script>
<script src="../JS/main.js" type="text/javascript"></script>
<script src="../OnlineService/js/samples.js"></script>
<script type="text/javascript" language="javascript" src="../JS/UserDefault.js"></script>
<script type="text/javascript" src="../../js/Dialog/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog/Dialog.js"></script>
<script language="javascript" type="text/jscript">
function openWin(url, title) {
	var diag = new Dialog();
	diag.Modal = false;
	diag.Width = 640;
	diag.Height = 490;
	diag.Title = title + "<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
	diag.URL = url;
	diag.show();
}
</script>

<script>
var returnvalue;
var ajax = new AJAXRequest;
// 请求提示
function doPrompt(step) {
}
function GetMess_show() {
ajax.get("/User/mess.aspx?c=mess",
function(obj) {
returnvalue = obj.responseText;
if (returnvalue.indexOf("$$$") > -1) {
	if (returnvalue != "0") {
		var returnarr = returnvalue.split("$$$");
		if (returnarr[0] != "0") {
			showmsg("系统提示:", "<a href=\"javascript:void(0)\" hidefocus=\"true\" onclick=\"top.document.getElementById('main_right').src='/user/iServer/FiServer.aspx'\">您有" + returnarr[0] + "条回复问题</a>",returnarr[1]);
		}
	}
}
}
);
}
window.setInterval("GetMess_show()", 60000);
function showmsg(title, mess, tip) {
var MSG = new CLASS_MSN_MESSAGE("aa", 200, 120, title, mess, tip);
MSG.speed = 10;
MSG.step = 2;
MSG.show();
}

function GetOrderMess_show() {
ajax.get("/User/mess.aspx?c=order",
function(obj) {
returnvalue = obj.responseText;
if (returnvalue != "0") {
	showmsg("系统提示:", "<a href=\"javascript:void(0)\" hidefocus=\"true\" onclick=\"top.document.getElementById('main_right').src='/User/PreViewOrder.aspx?menu=Orderinfo'\">您今天有" + returnvalue + "个订单</a>", "请查收");
}
}
);
}
window.setInterval("GetOrderMess_show()", 60000);
function Load(r1, r2) {
document.getElementById("left").src = r1;
document.getElementById("main_right").src = r2;
}

function SelChange(obj) {
var leftUrl = "";
var rightUrl = "";
if (obj == "1") {
	leftUrl = "Left.aspx";
	rightUrl = "Info/UserInfo.aspx";
	Load(leftUrl, rightUrl);
}
if (obj == "2") {
	leftUrl = "Content/ContentLeft.aspx";
	rightUrl = "Content/Default.aspx?t=1";
	Load(leftUrl, rightUrl);
}
if (obj == "3") {
	leftUrl = "Sera_shopLeft.aspx";
	rightUrl = "Info/DredgeVip.aspx";
	Load(leftUrl, rightUrl);
}
if (obj == "4") {
	leftUrl = "Guild/CommunityLeft.aspx";
	rightUrl = "UserZone/Default.aspx";
	Load(leftUrl, rightUrl);
}
if (obj == "5") {
	leftUrl = "UserShop/ShopLeft.aspx";
	rightUrl = "../../Space/SpaceManage.aspx";
	  Load(leftUrl, rightUrl);
}
if (obj == "6") {
	leftUrl = "StationGuid.aspx";
	rightUrl = "Pages/Default.aspx";
	Load(leftUrl, rightUrl);
}
if (obj == "7") {
	leftUrl = "Questions/ExamGuide.aspx";
	rightUrl = "Questions/Default.aspx";
	Load(leftUrl, rightUrl);
}
var url = document.getElementById("siulr").value;
if (obj == "8") {   //网站首页
	window.location.replace(url);
}
if (obj == "9") {   //会员中心
	window.location.replace(url + "/User");
}
}

var frameObj = document.getElementById("MENU2");
setInterval("loadaction();", 500);
function loadaction() {
document.getElementById("main_right").width = parseFloat(document.body.offsetWidth) - parseFloat(document.getElementById("left").width) - 81;
}
</script>
</head>
<body>
<div>
<input id="siulr" type="hidden" value=" <%=siteUrl %>" />
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
<tr>
<td colspan="2" style="height: 80px" valign="bottom">
<table id="_TableHeader" width="100%" border="0" cellpadding="0" cellspacing="0"
style="background: #3388bb url(../App_Themes/UserThem/images/top_Blue.jpg) repeat-x left bottom;"
height="70px">
<tr>
<td height="70" valign="top" width="23%">
<table height="50" width="100%" border="0" cellpadding="0" cellspacing="0">
<tr style="float: left; width: 300px;">
	<td colspan="2">
		<div style="margin-top: 10px">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td rowspan="2" style="width: 16%; text-align: center">
						<asp:Image ID="imgUserPic" runat="server" Width="55" Height="55" />
					</td>
					<td width="67%">
						<span style="color: White">欢迎您!
							<asp:Label ID="lblUserName" runat="server" Text="" /></span>
					</td>
				</tr>
				<tr>
					<td>
						<span style="color: Yellow; float: left">您当前的会员级别：</span>
						<asp:Image ID="Grouppicture" runat="server" Width="20" Height="20" />
					</td>
				</tr>
			</table>
		</div>
	</td>
</tr>
</table>
<table height="30" border="0" cellpadding="0" cellspacing="0">
<tr style="width: 240px;">
	<td valign="bottom" nowrap="nowrap">
		<div style="float: left; background: url(../App_Themes/UserThem/images/selectsitebg.gif) no-repeat right top;
			color: #666666; padding: 6px 25px 0 10px;">
			<span id="selectsite" style="display: inline">当前位置:
				<div id='_SiteSelector' name='_SiteSelector' selectedindex='0' ztype='Select' class='zSelect'
					style="display: inline-block; *zoom: 1; *display: inline; vertical-align: middle;
					position: relative; height: 20px; white-space: nowrap; width: 130px;" styleoriginal="width:130px;"
					onchange="Application.onParentSiteChange();" listwidth="250" defaultblank="false">
					<select autocomplete='off' id="_SiteSelector_textField" name="_SiteSelector" style="vertical-align: top;background: transparent none; cursor: default; width: 120px;" onChange="SelChange(this.value)">
						<option value="7">快速导航</option>
						<option value="8">网站首页</option>
						<option value="9">会员中心</option>
						<option value="1">我的消息</option>
						<option value="2">内容管理</option>
						<option value="3">商城管理</option>
						<option value="7">教育模块</option>
						<option value="4">社区互动</option>
						<option value="5">我的聚合</option>
						<option value="6">站群信息</option>
					</select>
					<img class='arrowimg' src='../App_Themes/UserThem/images/blank.gif' width='18' height='20'
						id='_SiteSelector_arrow' style='position: relative; left: -17px; margin-right: -18px;
						cursor: pointer; width: 18px; height: 20px; vertical-align: top;' />
					<div id='_SiteSelector_list' class='optgroup' style='text-align: left; display: none;'>
						<div id='_SiteSelector_ul' style='left: -1px; width: -1px;'>
							<a href="javascript:void(0);" onClick="Selector.onItemClick(this);" onmouseover='Selector.onItemMouseOver(this)'
								selected='true' hidefocus value="206">综合演示站</a><a href="javascript:void(0);" onClick="Selector.onItemClick(this);"
									onmouseover='Selector.onItemMouseOver(this)' hidefocus value="211">政府演示站</a><a href="javascript:void(0);"
										onclick="Selector.onItemClick(this);" onmouseover='Selector.onItemMouseOver(this)'
										hidefocus value="213">企业演示站</a>
						</div>
					</div>
				</div>
			</span>
			<img src="../App_Themes/UserThem/images/selectsite_hide.gif" width="13" height="13"
				align="absmiddle" style="cursor: pointer;" title="隐藏" onClick="a=$('selectsite').style.display=='none'?false:true;$('selectsite').style.display=a?'none':'inline';this.src=a?'../App_Themes/UserThem/images/selectsite_show.gif':'../App_Themes/UserThem/images//selectsite_hide.gif';this.title=a?'展开':'隐藏'"></div>
	</td>
</tr>
</table>
</td>
<td valign="bottom">
<div style="text-align: right; margin: 0 10px 10px 0; color: White">
&nbsp;[&nbsp;<a href="javascript:void(0)" onClick="Load('Message/MessageLeft.aspx','Message/Message.aspx')"
	style="color: White">短消息(<asp:Label ID="LblUnreadMsg" runat="server" />)</a> |
<a href="javascript:void(0)" onClick="Load('left.aspx','ChangPSW.aspx')" style="color: White">修改密码</a> |<a href="javascript:window.open('/OnlineService/ShowForm.aspx','','width=640,height=550,top=200,left=300,resizable=yes');void(0);"  style="color: White;">在线客服</a> 
| <a href="<%=ResolveUrl("~/User/logout.aspx") %>" style="color: White">退出登录</a> ]</div>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
	<td align="center">
		<ul id="_Navigation" class="navigation">
			<li id='_Menu_0' class="liOver"><a href="javascript:void(0)" onClick="Load('Left.aspx','Info/UserInfo.aspx')"
				hidefocus><span>我的信息</span></a></li>
			<li id='_Menu_1' class="liOut"><a href="javascript:void(0)" onClick="Load('Content/ContentLeft.aspx','Content/Default.aspx?t=1')"
				hidefocus><span>内容管理</span></a></li>
			<li id='_Menu_2' class="liOut"><a href="javascript:void(0)" onClick="Load('Sera_shopLeft.aspx','Info/DredgeVip.aspx')"
				hidefocus><span>商城购物</span></a></li>
			<li id='_Menu_3' class="liOut"><a href="javascript:void(0)" onClick="Load('Questions/ExamGuide.aspx','Questions/Default.aspx')"
				hidefocus><span>教育模块</span></a></li>
			<li id='_Menu_4' class="liOut"><a href="javascript:void(0)" onClick="Load('Guild/CommunityLeft.aspx','UserZone/Default.aspx')"
				hidefocus><span>社区互动</span></a></li>
			<li id='_Menu_5' class="liOut"><a href="javascript:void(0)" onClick="Load('UserShop/ShopLeft.aspx','../../Space/SpaceManage.aspx')"
				hidefocus><span>我的聚合</span></a></li>
			<li id='_Menu_6' class="liOut"><a href="javascript:void(0)" onClick="Load('StationGuid.aspx','Pages/Default.aspx')"
				hidefocus><span>站群信息</span></a></li>
		</ul>
	</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" background="../App_Themes/UserThem/images/lxkj_02.gif">
<tr>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td height="8" valign="top" background="../App_Themes/UserThem/images/top_bg3.gif">
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td valign="top" style="width: 176px; background: #C7E2F2;" id="MENU">
<table height="100%" border="0" cellpadding="0" cellspacing="0" id="MENU2" name="MENU2" style="width:185px;">
<tr>
<td width="155" height="98%" valign="top" class="leftmenu_bk" style="display: block;
padding: 10px;">
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0"
bgcolor="#E6F2F8">
<tr>
	<td height="13" valign="bottom">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="13">
					<img src="../App_Themes/UserThem/images/left_01.gif" width="13" height="13" />
				</td>
				<td background="../App_Themes/UserThem/images/left_03.gif" width="129">
				</td>
				<td width="13">
					<img src="../App_Themes/UserThem/images/left_02.gif" width="13" height="13" />
				</td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td height="100%" valign="top" align="left">
		<iframe width="150px" height="100%" frameborder="0" marginwidth="0" marginheight="0"
			scrolling="no" src="Left.aspx" allowtransparency="true" id="left" name="left"
			style="z-index: 2; padding-left: 4px; font-size: smaller"></iframe>
	</td>
</tr>
<tr>
	<td height="19" valign="bottom">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="19">
					<img src="../App_Themes/UserThem/images/left_04.gif" width="19" height="19" />
				</td>
				<td background="../App_Themes/UserThem/images/left_06.gif" width="117">
				</td>
				<td width="19">
					<img src="../App_Themes/UserThem/images/left_05.gif" width="19" height="19" />
				</td>
			</tr>
		</table>
	</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
<td style="width: 99%" valign="top" background="../App_Themes/UserThem/images/main_bg.gif">
<table width="100%" border="0" height="100%" cellpadding="0" cellspacing="0" >
<tr>
<td width="40%" height="34" valign="bottom">
<table border="0" cellspacing="0" cellpadding="0" style="margin-left: 15px;">
<tr>
	<td width="2">
		<img src="../App_Themes/UserThem/images/main_01.gif" width="2" height="27" />
	</td>
	<td valign="top" background="../App_Themes/UserThem/images/main_03.gif" class="title">
		<div id="OINF">
			请选择功能</div>
	</td>
	<td width="2">
		<img src="../App_Themes/UserThem/images/main_02.gif" width="2" height="27" />
	</td>
</tr>
</table>
</td>
<td width="60%" valign="top">
<table border="0" align="right" cellpadding="0" cellspacing="0" class="search_top"
id="LSEARCH" style="display: none">
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height:100%; background: white; padding: 4px;" align="center">
<div id="OPAD" style="height: 100%; width: 99%; background: white; overflow: auto;
text-align: left">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td valign="top" style="padding: 5px; height: 100%">
			<iframe height="100%" frameborder="0" marginwidth="0" marginheight="0" scrolling="auto"
				allowtransparency="true" id="main_right" name="main_right" style="padding-left: 4px;
				overflow-x: hidden; overflow-y: auto;" src="Main.aspx" onload="loadaction()"></iframe>
		</td>
	</tr>
</table>
</div>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="height: 20px;">
<table width="100%" border="0" cellpadding="0" cellspacing="0" background="../App_Themes/UserThem/images/bottom_bg.gif"
class="bottom_bk">
<tr>
<td height="20px">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
	<td width="177">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center" valign="top">
					<div class="bottom" id="st" style="cursor: pointer;" onClick="CloseleftStatu();">
						<font color="#ff3300">×</font> 关闭左栏</div>
				</td>
				<td width="2">
					<img src="../App_Themes/UserThem/images/lxkj_07.gif" width="2" height="20" />
				</td>
			</tr>
		</table>
	</td>
	<td align="right" valign="top" style="padding-right: 12px">
		<div class="bottom">

			<script language="javascript" type="text/javascript"> 
<!--
				var year = "";
				mydate = new Date();
				myyear = mydate.getYear();
				year = (myyear > 200) ? myyear : 1900 + myyear;
				document.write(year);                                                     
--> 
			</script>

			&nbsp; Copyright&copy;&nbsp;
			<%=GetCopyRight() %>. All rights reserved.</div>
	</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<div id="e_post_p"></div>
</div>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_Default, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
<script type="text/javascript" language="javascript">
function ShowMainsnew(lefturl) {
	var objLeft = window.frames['left'];
	if (lefturl != "") {
		objLeft.location.href = lefturl;
	}
}
function SetWinHeight(obj) {
	var win = obj;
	if (document.getElementById) {
		if (win && !window.opera) {
			if (win.contentDocument && win.contentDocument.body.offsetHeight) {
				win.height = win.contentDocument.body.offsetHeight;
				win.width = win.contentDocument.body.offsetWidth;
			}
			else if (win.Document && win.Document.body.scrollHeight) {
				win.height = win.Document.body.scrollHeight;
				win.width = win.Document.body.scrollWidth;
			}
		}
	}
}
</script>
</head>
<body>
<table width="100%">
<tr>
	<td style="width:100px" valign="top">
	<table>
	<tr>
	<td style="height:30px"></td>
	</tr>
	<tr>
	<td align="center"  style="height:30px"> <a href="javascript:{void(0);}" onclick=" ShowMainsnew('ListLog.aspx')">日志</a></td>
	</tr>
	<tr>
	<td align="center" style="height:30px"> <a href="javascript:{void(0);}" onclick=" ShowMainsnew('ListPhoneAlbums.aspx')">相册</a></td>
	</tr>
	<tr>
	<td align="center" style="height:30px"> <a href="javascript:{void(0);}" onclick=" ShowMainsnew('ListMusic.aspx')">音乐</a></td>
	</tr>
	<tr>
	<td style="height:30px"><a href="javascript:{void(0);}" onclick=" ShowMainsnew('Video.aspx')">视频</a></td>
	</tr>
	<tr>
	<td style="height:30px"><a href="javascript:{void(0);}" onclick=" ShowMainsnew('ZoneState.aspx')">状态</a></td>
	</tr>
	<tr>
	<td style="height:30px"><a href="javascript:{void(0);}" onclick=" ShowMainsnew('ListVote.aspx')">投票</a></td>
	</tr>
	<tr>
	<td style="height:30px"><a href="javascript:{void(0);}" onclick=" ShowMainsnew('PresentList.aspx')">礼物</a></td>
	</tr>
	<tr>
	<td style="height:30px"><a href="javascript:{void(0);}" onclick=" ShowMainsnew('Message.aspx')">留言</a></td>
	</tr>
	</table>
	</td>
	<td valign="top">
		<iframe frameborder="0" id="left" name="left" scrolling="auto" src="ListLog.aspx"
			style="width: 100%; visibility: visible; z-index: 2;" height="100%"  onload="Javascript:SetWinHeight(this)">
			浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>
	</td>
</tr>
</table>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_CollectVideo, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>制作视频相册</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
<div>
制作视频相册
</div>
<div class="us_topinfo" style="margin-top: 10px;">
<a href="MyVideo.aspx">我的视频</a> |<a href="FoundGH.aspx">好友的视频</a>|<a href="GuildIndex.aspx">制作视频相册</a>|<a
href="List.aspx">收藏视频录像</a>
</div>
<p>
</p>
<div id="content">
<table width="98%" border="0" align="center" cellpadding="4" cellspacing="0" class="tableBorder">
<tr>
	<td height="25" colspan="2" align="left">
		<strong>收藏视频</strong>
	</td>
</tr>
<tr>
	<td width="11%" height="30" align="right">
		视频类别：
	</td>
	<td width="89%" align="left">
		<asp:DropDownList ID="dropType" runat="server">
			<asp:ListItem Value="0">请选择视频类别</asp:ListItem>
			<asp:ListItem Value="1">公会宣传</asp:ListItem>
			<asp:ListItem Value="2">游戏故事</asp:ListItem>
			<asp:ListItem Value="3">真人秀</asp:ListItem>
			<asp:ListItem Value="4">娱乐八卦</asp:ListItem>
		</asp:DropDownList>
	</td>
</tr>
<tr>
	<td height="35" align="right">
		视频名称：
	</td>
	<td width="89%" align="left">
		&nbsp;<font color="#999999"><asp:TextBox ID="txtName" runat="server" Width="273px"></asp:TextBox>
			(50个字符之内!)</font>
	</td>
</tr>
<tr>
	<td height="33" align="right">
		视频封面：
	</td>
	<td height="33" align="left">
		&nbsp;<asp:TextBox ID="txtUpload" runat="server" Width="275px">http://</asp:TextBox>
		<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">我要本地上传</asp:LinkButton>
		<br />
		<asp:Panel runat="server" ID="pUpload" Visible="false">
			<iframe id="Iframe1" src="/manage/Common/ThumbnailUpload.aspx?CID=Upload&ftype=1"
				marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no">
			</iframe>
		</asp:Panel>
	</td>
</tr>
<tr>
	<td height="25" align="right">
		&nbsp;
	</td>
	<td height="25" align="left">
		<font color="#999999">图片路径格式如 http://my.u9u8.com/images/default_video.gif 必须是gif,jpg格式文件</font>
	</td>
</tr>
<tr>
	<td height="25" align="right">
		视频地址：
	</td>
	<td height="25" align="left">
		<asp:TextBox ID="txtVideoURL" runat="server" Width="280px">http://</asp:TextBox>
	</td>
</tr>
<tr>
	<td height="24" align="right">
		&nbsp;
	</td>
	<td height="24" align="left">
		<font color="#999999">文件地址格式如 http://my.u9u8.com/images/default.swf 最好是swf格式，可以在其他网站上上传，再将地址贴进来。</font>
	</td>
</tr>
<tr>
	<td height="30" align="right">
		简介说明：
	</td>
	<td height="30" align="left">
		<asp:TextBox ID="txtContent" runat="server" Height="132px" TextMode="MultiLine" Width="365px"></asp:TextBox>
		&nbsp;
	</td>
</tr>
<tr>
	<td height="60">
	</td>
	<td height="60" align="left">
		<input name="upfile" type="hidden" id="upfile" />
		<asp:Button ID="btnSave" runat="server" Text=" 保存 " OnClick="btnSave_Click" />
	</td>
</tr>
</table>
</div>
</form>
</body>
</html>

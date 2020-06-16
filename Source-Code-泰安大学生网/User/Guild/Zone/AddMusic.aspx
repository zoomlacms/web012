<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_AddMusic, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
</head>
<body>
<form id="form1" runat="server">
<link rel="stylesheet" type="text/css" href="../../Skin/User_Main.css" />
<link rel="stylesheet" type="text/css" href="../../Skin/user_user.css" />
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css"type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />    
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<div>
<li style="width: 15%; float: left; line-height: 30px; text-align: right">音乐名称： </li>
<li style="width: 83%; line-height: 30px; height: 35px;">
	<asp:TextBox ID="txtMusicName" runat="server" CssClass="l_input" Width="201px"></asp:TextBox>
</li>
<li style="width: 15%; float: left; line-height: 30px; text-align: right">音乐专辑： </li>
<li style="width: 83%; line-height: 30px; height: 35px;">
	<asp:DropDownList ID="ddlMusic" runat="server" Height="38px" Width="123px">
	</asp:DropDownList>
	<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">添加音乐专辑</asp:LinkButton>
</li>
<li style="width: 15%; float: left; line-height: 30px; text-align: right">音乐URL： </li>
<li style="width: 83%; line-height: 30px; height: 60px;">
	<asp:TextBox ID="txtUrl" runat="server" CssClass="l_input" Width="201px"></asp:TextBox>
	（请填写歌曲的完整地址，如：<font color="#ff0000">http://www.u9u8.com/music/demo.mp3</font>请选择<font 
		color="#ff0000">.mp3 .mp4 .avi .mpg .wmv </font>文件其他的暂不支持,<a 
		href="http://list.mp3.baidu.com/list/topmp3.html?id=1" target="_blank">查找最新热门歌曲</a>）<br />
</li>
<li style="width: 15%; float: left; line-height: 30px; text-align: right">歌手： </li>
<li style="width: 83%; line-height: 30px; height: 35px;">
	<asp:TextBox ID="txtSinger" runat="server" CssClass="l_input" Width="201px"></asp:TextBox>
</li>
<li style="width: 15%; float: left; line-height: 30px; text-align: right">歌词文件名： </li>
<li style="width: 83%; line-height: 30px; height: 169px;">
	<asp:TextBox ID="txtLrc" runat="server" CssClass="l_input" Width="363px" 
		Height="147px"></asp:TextBox>
</li>
<li style="width: 15%; float: left; line-height: 30px; text-align: right">描述： </li>
<li style="width: 83%; line-height: 30px; height: 85px;">
	<asp:TextBox ID="txtNode" runat="server" CssClass="l_input" Width="319px" 
		Height="77px" TextMode="MultiLine"></asp:TextBox>
</li>
 <li style="width: 100%; float: left; line-height: 30px; text-align: center">
			<asp:Button ID="BtnSubmit" runat="server" Text="添加" OnClick="BtnSubmit_Click" class="C_input" />
			&nbsp;&nbsp;
			<asp:Button ID="BtnCancle" runat="server" Text="取消" OnClick="BtnCancle_Click" ValidationGroup="BtnCancel" class="C_input" />
		</li>
</div>
</form>
</body>
</html>

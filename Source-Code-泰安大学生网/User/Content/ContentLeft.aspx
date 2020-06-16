 <%@ page language="C#" autoeventwireup="true" inherits="User_Left, App_Web_3e54r2y4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>功能导航</title>
<link href="../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../../JS/jquery-1.4.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="../../js/UserDefault.js"></script>
</head>
<body style="background-color:#E6F2F8">  
<table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
<tr>
	<td height="22" valign="top" class="left_font">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="25"><span id="span1" class="imgbgover" onclick=" usershow('#td1','#span1')" ></span></td>
				<td valign="top">
					<div class="left_font" style="cursor: hand" onclick="usershow('#td1','#span1')" >常规管理</div>
				</td> 
			</tr>
		</table>
	</td>
</tr>
<tr id="td1" class="tabtr">
	<td>
		<table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu">                         
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle"  style="padding-left:15px;"> &nbsp;&nbsp;<a href="../Content/Default.aspx?t=1"target="main_right">投稿管理</a></td>
			</tr>
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="../../manage/AddOn/ProjectsList.aspx" target="main_right">项目列表</a></td>
			</tr>
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="../../manage/AddOn/UserAddProjects.aspx"target="main_right">添加项目</a></td>
			</tr>                     
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="../../user/iServer/FiServer.aspx"target="main_right" >有问必答</a> </td>
			</tr>
		</table>
	</td>
</tr>
</table>
<table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
<tr>
	<td height="22" valign="top" class="left_font">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="25"><span id="span2" class="imgbgout" onclick=" usershow('#td2','#span2')" ></span> </td>
				<td valign="top"><div class="left_font" style="cursor: hand" onclick="usershow('#td2','#span2')" >人才招聘</div></td>
			</tr>
		</table>
	</td>
</tr>
<tr id="td2" class="tabtr">
	<td>
		<table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu"> 
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="../../Jobs/ExamineeList.aspx" target="main_right">面试通知</a></td>
			</tr>
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="../../CN/nite/Content/PositionManage.aspx"target="main_right">职位管理</a></td>
			</tr>
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="../../CN/nite/Content/ResumeManage.aspx"target="main_right">简历管理</a></td>
			</tr>
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp<asp:Literal ID="lt_src" runat="server" Text="视频房间申请"></asp:Literal></td>
			</tr>
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="../../CN/nite/Content/CompanyHouseManage.aspx" target="main_right" >视频房间管理</a></td>
			</tr>
			<tr>
				<td> <img   class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="../../CN/nite/Content/VideoManage.aspx"target="main_right" >企业视频</a></td>
			</tr>
				<tr>
				<td><img   class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp; <a href="MyFavori.aspx"target="main_right" >我的收藏</a></td>
			</tr>
		</table>
	</td>
</tr>
</table>   
<table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
<tr>
	<td height="22" valign="top" class="left_font">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="25"><span id="span3" class="imgbgout" onclick="usershow('#td3','#span3')" ></span></td>
				<td valign="top"><div class="left_font" style="cursor: hand" onclick="usershow('#td3','#span3')" >我的互动</div></td>
			</tr>
		</table>
	</td>
</tr>
<tr id="td3" class="tabtr">
	<td>
		<table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu">                         
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="../Content/Default.aspx?t=1"target="main_right">我的发表</a></td>
			</tr>
			<tr>
				<td><img   class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="../../manage/AddOn/ProjectsList.aspx" target="main_right">收件箱</a></td>
			</tr>
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="../../manage/AddOn/UserAddProjects.aspx"target="main_right">回收站</a></td>
			</tr>
		</table>
	</td>
</tr>
</table>
<table width="124" border="0" align="center" cellpadding="0" cellspacing="0" class="left_menu">
<tr>
	<td height="22" valign="top" class="left_font">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="25"><span id="span4" class="imgbgout" onclick="usershow('#td4','#span4')" ></span></td>
				<td valign="top"><div class="left_font" style="cursor: hand" onclick="usershow('#td4','#span4')" >威客竞标</div></td>
			</tr>
		</table>
	</td>
</tr>
<tr id="td4" class="tabtr">
	<td>
		<table width="100%" border="0" cellpadding="6" cellspacing="1"  class="leftmenu">                         
			<tr>
				<td><img  class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="../Content/IRelease.aspx"target="main_right">竞标管理</a></td>
			</tr>
			<tr>
				<td><img   class="chtd" src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle" style="padding-left:15px;">&nbsp;&nbsp;<a href="../Content/MyCommentList.aspx" target="main_right">我参与的</a></td>
			</tr>
		</table>
	</td>
</tr>
</table>
</body>
</html>
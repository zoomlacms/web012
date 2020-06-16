<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_Statistics, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>论坛统计记录</title>

     <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="r_navigation">
    
  <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>系统</span> &gt;&gt; <span>组件支持情况</span>
    </div>
    <div class="clearbox"></div>
   <table border="0" cellpadding="5" cellspacing="1" width="100%"  align="center" class="border">
	<tr class="spacingtitle">
		<td width="14%" align="center">日期</td>
		<td width="14%" align="center">今日主题</td>
		<td width="14%" align="center">今日帖子</td>
		<td width="14%" align="center">今日用户</td>
		<td width="14%" align="center">总主题</td>
		<td width="14%" align="center">总帖子</td>
		<td width="14%" align="center">总用户</td>
	</tr>
	<tr class="tdbg">
		<td align="center">2009-11-13</td>
		<td align="center">0</td>
		<td align="center">0</td>
		<td align="center">1</td>
		<td align="center">0</td>
		<td align="center">0</td>
		<td align="center">1</td>
	</tr>
 
</table>
<br />
<asp:Button ID="Button4" runat="server" Text="<<返回" class="C_input"/>     
<asp:Button ID="Button5" runat="server" Text="前进>>" class="C_input"/>
</form>
</body>
</html>
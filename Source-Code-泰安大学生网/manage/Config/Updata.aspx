<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_Updata, App_Web_lyzefjl3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>节点升级</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<span> 后台管理 </span>&gt;&gt;<span> 系统设置 </span>&gt;&gt;<span>一键升级 </span> <span style="color:Red;">[支持从历史版本升级到最新版本]</span>
</div>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
	<tr align="center">
		<td colspan="2" class="spacingtitle">升级文件</td>
	</tr>
    <tr>
        <td align="right" class="tdbg">升级文件:</td>
        <td class="tdbg">
           <asp:CheckBoxList RepeatDirection="Horizontal" ID="CblMonth" runat="server">
                <asp:ListItem Selected="True" Value="1">节点升级&nbsp;&nbsp;</asp:ListItem>
                <asp:ListItem Selected="True" Value="2">标签升级&nbsp;&nbsp;</asp:ListItem>
                <asp:ListItem Selected="True" Value="3">模型升级&nbsp;&nbsp;</asp:ListItem>
           </asp:CheckBoxList>
        </td>
    </tr>
	<tr class="tdbg">
		<td align="right" class="tdbg" style="width:10%">节点升级状态：</td>
		<td class="tdbg">
			<span style="color:Red">&nbsp;<asp:Label ID="Label1" runat="server" Text="状态"></asp:Label></span><br /></td>
	</tr>
    <tr class="tdbg">
		<td align="right" class="tdbg" style="width:10%">标签升级状态：</td>
		<td class="tdbg">
			<span style="color:Red">&nbsp;<asp:Label ID="Label2" runat="server" Text="状态"></asp:Label></span><br /></td>
	</tr>
    <tr class="tdbg">
		<td align="right" class="tdbg" style="width:10%">模型升级状态：</td>
		<td class="tdbg">
			<span style="color:Red">&nbsp;<asp:Label ID="Label3" runat="server" Text="状态"></asp:Label></span><br /></td>
	</tr>
	<tr align="center">
		<td colspan="2" class="tdbgleft" style="text-align:left">
			<asp:Button ID="EBtnBacthSet" Text="一键升级" class="C_input" Style="width: 110px;" OnClick="EBtnBacthSet_Click" runat="server" />
		</td>
	</tr>
</table>
</form>
</body>
</html>
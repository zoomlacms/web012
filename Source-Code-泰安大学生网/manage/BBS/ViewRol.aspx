<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_ViewRol, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>编辑角色属性</title>

     <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
    
  <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>成员</span> &gt;&gt; <span>管理所有角色</span> &gt;&gt; <span>编辑角色属性</span>
    </div>
    	<div class= "clearbox"></div>
   <table cellspacing="1" cellpadding="5" width="100%" border="0" class= "border" align="center">
		<tr class="spacingtitle">
			<td></td>
			<td width="60%"></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td><b>名称</b></td>
			<td width="60%">
                <asp:TextBox ID="TextBox1" runat="server" class="l_input"></asp:TextBox>
            </td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td><b>描述</b></td>
			<td width="60%">
                <asp:TextBox ID="TextBox2" runat="server" Width="530px" class="l_input"></asp:TextBox>
            </td>
		</tr>
		</table>
		<div class= "clearbox"></div>
		<table cellspacing="1" cellpadding="5" width="100%" border="0" class= "border" align="center">
		<tr class= "spacingtitle">
			<td colspan="2">设置该角色上传附件的相关选项：</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td><b>允许单个帖子附件的大小（KB）</b><br />启用系统默认设置，则输入0</td>
			<td>
                <asp:TextBox ID="TextBox3" runat="server" class="l_input"></asp:TextBox>
            </td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td><b>设置用户上传文件夹的最大容量（KB）</b><br />启用系统默认设置，则输入0</td>
			<td>
                <asp:TextBox ID="TextBox4" runat="server" class="l_input"></asp:TextBox>
            </td>
		</tr>
		<tr class="tdbg">
			<td colspan="2" align="center">&nbsp;
                <asp:Button ID="Button3" runat="server" Text="删除" Width="54px" 
                    onclick="Button3_Click" class="C_input"/>
                <asp:Button ID="Button4" runat="server" Text="保存" Width="60px" 
                    onclick="Button4_Click" class="C_input"/>
<asp:Button ID="Button1" runat="server" Text="返 回" onclick="Button1_Click" class="C_input"/> 
            </td>
		</tr>  
</table>
<br />
</form>
</body>
</html>
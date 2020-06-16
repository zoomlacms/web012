<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_UpdatePWd, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>修改密码</title>

     <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
      <div class="r_navigation">
    
  <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>成员</span> &gt;&gt; <span>修改密码</span>
    </div>
    <div class="clearbox"></div>
    <table class="border" width="100%" cellpadding="1" cellspacing="1" border="0">
    <tr class="spacingtitle" ><td style="width: 242px;"><span>修改密码</span></td><td></td></tr>   
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td style="width: 242px;">新密码：　</td>
		<td><asp:TextBox ID="NewPassword1" runat="server" Width="240px" class="l_input"></asp:TextBox></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td style="width: 242px;">再次输入新密码：　</td>
		<td><asp:TextBox ID="NewPassword2" runat="server" Width="240px" class="l_input"></asp:TextBox></td>
	</tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" Text="修 改 密 码" onclick="Button1_Click" class="C_input"/>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    
    </form>
</body>
</html>

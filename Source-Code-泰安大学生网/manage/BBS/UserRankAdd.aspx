<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_UserRankAdd, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>添加/编辑用户等级</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
     <div class="r_navigation">
    
  <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>成员</span> &gt;&gt; <span>添加/编辑用户等级</span>
    </div>
   <table border="0" cellpadding="0" cellspacing="1"  width="100%" align="center" class="border">
	<tr class="spacingtitle">
		<td colspan="2" align="center">
            <asp:Label ID="lblText" runat="server"></asp:Label>
        </td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td align="right" width="30%">用户角色：</td>
		<td>	
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>所有人</asp:ListItem>
                <asp:ListItem>管理员</asp:ListItem>
                <asp:ListItem>超级版主</asp:ListItem>
            </asp:DropDownList>
		    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="请选择用户角色" MaximumValue="999999" 
                MinimumValue="0"></asp:RangeValidator>
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td align="right" width="30%">最少发帖：</td>
		<td>  
            <asp:TextBox ID="PostingCountMin" runat="server" class="l_input"></asp:TextBox></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td align="right" width="30%">用户等级对应的文字或图片HTML代码：<br /><font color="#FF0000">（支持HTML）</font></td>
		<td>
            <asp:TextBox ID="RankName" runat="server" class="l_input"></asp:TextBox></td>
	</tr>
	<tr>
	<td align="right"><asp:Button ID="Button1" runat="server" Text="确 定" 
            onclick="Button1_Click" class="C_input"/>  
 <asp:Button ID="Button4" runat="server" Text="返回" onclick="Button4_Click" class="C_input"/>     
        </td>
	</tr>
	
</table>
   
<br />
</form>

</body>
</html>
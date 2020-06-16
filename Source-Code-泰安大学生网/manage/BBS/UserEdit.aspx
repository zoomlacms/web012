<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_UserEdit, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>查看“admin”的详细资料</title>

      <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="r_navigation">
    
  <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>成员</span> &gt;&gt; <span>浏览所有用户</span> &gt;&gt; <span>编辑</span>
    </div>
    <div class="clearbox"></div>
   <table cellspacing="1" cellpadding="5" border="0" width="100%" class="border" align="center">
	<tr class="spacingtitle">
		<td colspan="4" align="center">
            <asp:Label ID="lbltext" runat="server"></asp:Label>
        </td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td colspan="2">用户名称：<asp:Label ID="lblName" runat="server"></asp:Label>
        </td>
		<td width="600" colspan="2">用户密码：<asp:LinkButton ID="LinkButton1" runat="server" 
                onclick="LinkButton1_Click" CommandArgument='<%#Eval("UserID") %>'>修改密码</asp:LinkButton>
        </td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td colspan="2">用户角色：
		<asp:DropDownList ID="DropUser" runat="server">
            <asp:ListItem >管理员</asp:ListItem>
            <asp:ListItem >超级版主</asp:ListItem>
            <asp:ListItem >注册会员</asp:ListItem>
        </asp:DropDownList>
		</td>
		<td width="600" colspan="2">帐号状态：<asp:DropDownList ID="DropState" runat="server">
            <asp:ListItem Selected="True" Value="0">正等待审核</asp:ListItem>
            <asp:ListItem Value="1">已通过审核</asp:ListItem>
            <asp:ListItem Value="2">已禁用</asp:ListItem>
            <asp:ListItem Value="3">未通过审核</asp:ListItem>
            </asp:DropDownList>     
			</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td colspan="2">用户头衔：<asp:TextBox ID="UserTitle" runat="server" class="l_input"></asp:TextBox></td>
		<td width="600" colspan="2">信任等级：<asp:DropDownList ID="DropDengji" runat="server">
            <asp:ListItem Selected="True" Value="1">信任用户</asp:ListItem>
            <asp:ListItem Value="0">非信任用户</asp:ListItem>
            </asp:DropDownList>
                 </td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td width="600" colspan="2" ">发 帖 数：<asp:TextBox ID="TotalPosts" runat="server" class="l_input"></asp:TextBox>
            
        </td>
		<td colspan="2" ">用户声望：<asp:TextBox ID="Reputation" runat="server" class="l_input">
            </asp:TextBox>
            
        </td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td width="600" colspan="2">活跃天数：<asp:TextBox ID="UserActivityDay" runat="server" class="l_input"></asp:TextBox></td>
		<td colspan="2">用户等级：<asp:TextBox ID="txtdengji" runat="server" class="l_input"></asp:TextBox></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td colspan="2">金　　钱：<asp:TextBox ID="UserMoney" runat="server" class="l_input">0</asp:TextBox></td>
		<td width="600" colspan="2">邀 请 人：<asp:TextBox ID="TextBox2" runat="server" class="l_input"></asp:TextBox></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td colspan="2" >经 验 值：<asp:TextBox ID="txtjingyan" runat="server" class="l_input">0</asp:TextBox></td>
		<td colspan="2" >用户头像：<asp:TextBox ID="txtimage" runat="server" class="l_input">images/face/Default.gif</asp:TextBox></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td width="1200" colspan="4">注册日期：<asp:Label ID="lblbeginTime" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp; (IP:<asp:Label ID="lblBeginIP" runat="server"></asp:Label>
            )&nbsp;&nbsp;
                        
        </td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td width="1200" colspan="4">活动日期： 
            <asp:Label ID="lblhuoTime" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; (IP:<asp:Label ID="lblhuoIP" runat="server"></asp:Label>
            )</td>
	</tr>
	<tr class="spacingtitle">
		<td colspan="4" align="center">基本资料</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	  <td width="600" colspan="2">名字：<asp:TextBox ID="txtUserName" runat="server" class="l_input"></asp:TextBox>
        </td>
		<td width="600" height="3" colspan="2">性别：<asp:DropDownList ID="DropSex" runat="server">
            <asp:ListItem Value="0">[请选择]</asp:ListItem>
            <asp:ListItem Value="1">男</asp:ListItem>
            <asp:ListItem Value="2">女</asp:ListItem>
            </asp:DropDownList> </td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td width="600" colspan="2">生日： 
            <asp:TextBox ID="birthday" runat="server" class="l_input"></asp:TextBox></td>
		<td width="600" colspan="2">地址： 
            <asp:TextBox ID="Address" runat="server" class="l_input"></asp:TextBox></td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	  <td colspan="2">职业：<asp:TextBox
          ID="Occupation" runat="server" class="l_input"></asp:TextBox></td>
	  <td colspan="2">兴趣： <asp:TextBox ID="Interests" runat="server" class="l_input"></asp:TextBox></td>
    </tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	  <td colspan="2">邮箱： <asp:TextBox ID="UserEmail" runat="server" class="l_input"></asp:TextBox></td>
	  <td colspan="2">主页： 
          <asp:TextBox ID="txtzhuye" runat="server" class="l_input"></asp:TextBox>
                 </td>
    </tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	  <td colspan="2">博客：<asp:TextBox ID="txtblog" runat="server" class="l_input"></asp:TextBox></td>
	  <td colspan="2">相册：  
          <asp:TextBox ID="txtxiangce" runat="server" class="l_input"></asp:TextBox>
                 </td>
    </tr>   
	<tr class="spacingtitle">
		<td colspan="4" align="center">即时通信</td>
	</tr>  
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	  <td colspan="2">QQ ：<asp:TextBox ID="QQ" runat="server" class="l_input"/></td>
	  <td colspan="2">ICQ：　 <asp:TextBox ID="ICQ" runat="server" class="l_input"/></td>
    </tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	  <td colspan="2">AIM：<asp:TextBox ID="AIM" runat="server" class="l_input"/></td>
	  <td colspan="2">MSN：&nbsp; <asp:TextBox ID="MSN" runat="server" class="l_input"/></td>
    </tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
	  <td colspan="2">Yahoo：<asp:TextBox ID="Yahoo" runat="server" class="l_input"/></td>
	  <td colspan="2">Skype：<asp:TextBox ID="Skype" runat="server" class="l_input"/></td>
    </tr> 
	<tr class="spacingtitle">
		<td colspan="4" align="center">签名＆简介＆备注</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td width="600" colspan="4">签名：<asp:TextBox ID="TextBox3" runat="server" 
                Height="66px" TextMode="MultiLine" Width="547px" class="l_input"></asp:TextBox>
                 </td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td width="600" colspan="4">简介：<asp:TextBox ID="TextBox4" runat="server" 
                Height="63px" TextMode="MultiLine" Width="550px" class="l_input"></asp:TextBox>
        </td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td width="600" colspan="4">备注：<asp:TextBox ID="TextBox5" runat="server" 
                Height="69px" TextMode="MultiLine" Width="551px" class="l_input"></asp:TextBox>
        </td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td width="600" align="center" ><a onclick="return window.confirm('您确定要删除该用户所有发表过的帖子?');" href="?menu=UserDelTopic&type=delpost">删除该用户的所有主题</a></td>
		<td width="600" colspan="2" align="center" > <asp:Button ID="Button3" 
                runat="server" Text="更 新" onclick="Button3_Click" class="C_input"/></td>
		<td width="600" align="center" ><a onclick="return window.confirm('您确定要删除该用户的所有资料?');" href="?menu=UserDel&type=deluser">删除该用户的所有资料</a></td>
	</tr>
</table>
<asp:Button ID="Button1" runat="server" Font-Size="9pt" Text="<<返回" class="C_input"/>
    <asp:Button ID="Button2" runat="server" Font-Size="9pt" Text="前进>>" class="C_input"/>
</form>
</body>
</html>
<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_ForumAdd, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>新建论坛</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="r_navigation">
    
  <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>论坛</span> &gt;&gt; <span>新建论坛</span> &gt;&gt; <span><asp:Literal ID="LNav" runat="server" Text="添加/编辑论坛资料"></asp:Literal></span>
    </div>
    <div class="clearbox"></div>
 <table cellspacing="1" cellpadding="1" width="100%" class ="border" border="0">
		<tr  class="spacingtitle" style="height:"30px;">
			<td align="center" colspan="2" >
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td style=" width: 30%;" ><b>名称</b><br />版块名称</td>
			<td>
                <asp:TextBox ID="TxtForumName" runat="server" Width="300px" class="l_input"></asp:TextBox>
                   </td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td> <b>排序</b><br />
			从小到大排序设置，为“0”则隐藏此论坛</td>
			<td > 
                <asp:TextBox ID="TxtSortOrder" runat="server" Width="300px" class="l_input"></asp:TextBox>
			</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td><b>版面链接</b><br />在这里输入一个网址，每当用户点击这个版面时就会链接到那个地址</td>
			<td style="width: 766px;"><asp:TextBox ID="TxtForumUrl" runat="server" Width="300px" class="l_input"></asp:TextBox></td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td style=" width: 282px;"><b>论坛横排：</b><br />设置论坛组下的所有论坛横排时每行版块数量，如果设置为 0，则按正常方式排列</td>
			<td >
                <asp:TextBox ID="TxtDisplayMode" runat="server" class="l_input" ></asp:TextBox>
			</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td style=" width: 282px;"><b>论坛组</b><br />选择该论坛的论坛组</td>
			<td >
                <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>--请选择--</asp:ListItem>
                </asp:DropDownList>
			   
			    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="论坛组不能为空"></asp:RequiredFieldValidator>
			   
			</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td ><b>父版块</b><br />选择该论坛的父版块</td>
			<td style="width: 766px;" >
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--请选择--</asp:ListItem>
                    <asp:ListItem>主板块</asp:ListItem>
                </asp:DropDownList>
			</td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td ><b>论坛版主</b><br />多版主添加请用“|”分隔，如：tudou|土豆 </td>
			<td style="width: 766px;">
                <asp:TextBox ID="TxtModerated" runat="server" Width="300px" class="l_input"></asp:TextBox></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td ><b>帖子类别</b><br />添加请用“|”分隔，如：原创|转帖</td>
			<td align="left" valign="middle"><asp:TextBox ID="TxtTotalCategorys" 
                    runat="server" Width="300px" class="l_input"></asp:TextBox></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td valign="top" ><b>描述</b><br />简单描述一下该版，可以使用BBCode语法</td>
			<td >
               <asp:TextBox ID="TxtForumDescription" runat="server" Width="486px" TextMode="multiLine" 
                    Rows="15" Height="70px" class="l_input"></asp:TextBox>
                   </td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td valign="top" ><b>规则与导读</b><br />简单描述一下该版的规则与导读，可以使用BBCode语法</td>
			<td >
                <asp:TextBox ID="TxtForumRules" runat="server" Width="486px" TextMode="multiLine" 
                    Rows="15" Height="70px" class="l_input"></asp:TextBox>
                   </td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td ><b>启用这个论坛</b><br />禁用此论坛后，该论坛将无法访问</td>
			<td style="width: 766px;">
                <asp:RadioButtonList ID="IsActive" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1" Selected="True">是</asp:ListItem>
                    <asp:ListItem Value="0">否</asp:ListItem>
                </asp:RadioButtonList></td>
               
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td ><b>主题需要审批</b><br />启用该功能后，非信任用户该版的新主题需要审批通过了才会显示出来</td>
			<td style="width: 766px;">
			
			  <asp:RadioButtonList ID="ModerateNewThread" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1" Selected="True">是</asp:ListItem>
                    <asp:ListItem Value="0">否</asp:ListItem>
                </asp:RadioButtonList></td>

		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td ><b>帖子需要审批</b><br />启用该功能后，非信任用户该版的新帖子需要审批通过了才会显示出来</td>
			<td style="width: 766px;"><asp:RadioButtonList ID="ModerateNewPost" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1" Selected="True">是</asp:ListItem>
                <asp:ListItem Value="0">否</asp:ListItem>
                </asp:RadioButtonList>
                   </td>
                   </tr>
  
	</table>
	<br />
	<table cellspacing="1" cellpadding="1" width="100%" border="0">
	<tr align="right">
	<td>
	<asp:Button ID="sumit" runat="server" Text="保存" Height="23px"   Width="72px" onclick="sumit_Click" class="C_input" />
	<asp:HiddenField ID="HiddenField1" runat="server" />
    </td>
    </tr>
	   </table>  
	   <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input"/> 
</form>  
　</body>
　</html>
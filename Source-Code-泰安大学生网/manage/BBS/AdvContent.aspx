<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_AdvContent, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加广告</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../JS/calendar.js"></script>
</head>
<body id="body">
<form id="form1" runat="server">
<table cellspacing="1" cellpadding="1" width="100%" class ="border" border="0">
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2" style=" font-weight:bold; color:#008200; font-size:14px; line-height:30px" class="r_navigation">技巧提示</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2"><asp:Label ID="LblIntro" runat="server" Text=""></asp:Label></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2" style=" font-weight:bold; color:#008200; font-size:14px; line-height:30px"  class="r_navigation">添加广告<br /></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2" style=" font-weight:bold;color:#525552; line-height:25px">广告类型（必选）:<br /></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td>
                <span style="BORDER-RIGHT:green 1px solid; BORDER-TOP:green 1px solid; OVERFLOW:hidden; BORDER-LEFT:green 1px solid; BORDER-BOTTOM:green 1px solid; POSITION:absolute; margin-top:-9px">
                <asp:DropDownList ID="DDListType" runat="server" Width="266px" AutoPostBack="True" onselectedindexchanged="DDListType_SelectedIndexChanged" style="MARGIN:-2px"></asp:DropDownList></span>
            </td>
			<td >请选择广告的类别</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2" style=" font-weight:bold;color:#525552; line-height:25px">广告投放位置:<br /></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="260px">
                    <asp:ListItem Value="1" Selected="True">上</asp:ListItem>
                    <asp:ListItem Value="2">中</asp:ListItem>
                    <asp:ListItem Value="3">下</asp:ListItem>
                </asp:RadioButtonList>
            </td>
			<td >分为上中下 3 个位置，当上面的广告到期或被删除，下面的广告会自动上移</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2" style=" font-weight:bold;color:#525552; line-height:25px">广告标题（必填）:<br /></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td><asp:TextBox ID="TextBox1" runat="server" Width="260px" class="l_input"></asp:TextBox></td>
			<td >注意: 广告标题只为识别辨认不同广告条目之用，并不在广告中显示</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2" style=" font-weight:bold;color:#525552; line-height:25px">广告投放范围（必选）：<br /></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td><asp:ListBox ID="LBxRange" runat="server" Width="265px" Height="93px" SelectionMode="Multiple" border="green solid 1px"></asp:ListBox></td>
			<td style="width: 766px" >设置本广告投放的页面或论坛范围，可以按住 CTRL 多选，选择“全部”为不限制选择广告投放的范围</td>                
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2" style=" font-weight:bold;color:#525552; line-height:25px">广告起始时间（选填）：</td>               
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td><asp:TextBox ID="TextBox5" runat="server" class="l_input" Width="260px" onclick="calendar()" ></asp:TextBox></td>
			<td style="width: 766px;"> 设置广告起始生效的时间，格式 yyyy-mm-dd，留空为不限制起始时间</td>               
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2" style=" font-weight:bold;color:#525552; line-height:25px">广告结束时间（选填）:<br /></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td><asp:TextBox ID="TextBox6" runat="server" class="l_input" Width="260px" onclick="calendar()" ></asp:TextBox></td>
			<td style="width: 766px;">设置广告广告结束的时间，格式 yyyy-mm-dd，留空为不限制结束时间</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2" style=" font-weight:bold;color:#525552; line-height:25px">展现方式:<br /></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td><span style="BORDER-RIGHT:green 1px solid; BORDER-TOP:green 1px solid; OVERFLOW:hidden; BORDER-LEFT:green 1px solid; BORDER-BOTTOM:green 1px solid; POSITION:absolute; margin-top:-9px"><asp:DropDownList ID="DDListStyle" runat="server" Width="266px" style="MARGIN:-2px"></asp:DropDownList></span></td>
			<td>请选择所需的广告展现方式</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2" style=" font-weight:bold; color:#008200; font-size:14px; line-height:30px"  class="r_navigation">HTML 代码<br /></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td colspan="2" style=" font-weight:bold;color:#525552; line-height:25px">广告 HTML 代码:<br /></td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td>
                <asp:TextBox ID="TextBox2" runat="server" Width="476px" class="l_input" Height="147px" TextMode="MultiLine" ></asp:TextBox></td>           
			<td >请直接输入需要展现的广告的 HTML 代码</td>
		</tr>
	</table>
<asp:Button ID="BtnCommit" runat="server" class="C_input" Text="提 交" onclick="BtnCommit_Click" />
</form>
</body>
</html>

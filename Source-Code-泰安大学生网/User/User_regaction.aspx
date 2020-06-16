<%@ page language="C#" autoeventwireup="true" inherits="User_user_regaction, App_Web_erm1kfs3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员信息页</title>
<link rel="stylesheet" type="text/css" href="skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="skin/user_user.css" />
<style>
.box1 { font-size: 14px; font-weight: bold; color: #CC0000; margin-bottom: 10px; }
.rok { background-color: #FDFFCE; padding: 10px; border: 1px solid #FFBA43; margin-right: 10px; margin-left: 10px; margin-top: 20px; margin-bottom: 30px; }
.r1 { float: left; width: 25px; }
.r2 { float: left; width: 660px; }
.clearfix { clear: both; display: block; }
</style>
</head>
<html>
<body>
<form id="registerForm" runat="server" >
<div class="rok">
<div class="r1">
<img src="../images/ico_dh.gif" width="17" height="13" /></div>
<div class="r2">
<div class="box1">
	欢迎您，通行证注册成功，但是现在您的帐号十分脆弱</div>
<div>
	请立即补充下面二代密码保护资料!</div>
</div>
<div class="clearfix">
</div>
</div>
<table width="600" height="344" border="0" align="center" cellpadding="3" cellspacing="0">
<tr>
<td colspan="3">
	<strong><font color="#325AA2">设置密码问题答案</font></strong>
</td>
</tr>
<tr>
<td height="27" colspan="3">
	密码问题答案可用于找回通行证密码，请认真填写，自定义问题和答案长度不超过30个字符。
</td>
</tr>
<tr>
<td width="118" align="right">
	问题1：
</td>
<td width="235">
	<asp:DropDownList ID="dropq1" runat="server" 
		onselectedindexchanged="dropq1_SelectedIndexChanged" AutoPostBack="True">
	<asp:ListItem>请选择一个问题</asp:ListItem>
		<asp:ListItem>我母亲的姓名是？</asp:ListItem>
		<asp:ListItem>我父亲的姓名是？</asp:ListItem>
		<asp:ListItem>我配偶的姓名是？</asp:ListItem>
		<asp:ListItem>我的出生地点是？</asp:ListItem>
		<asp:ListItem>我高中班主任的名字是？</asp:ListItem>
		<asp:ListItem>我初中班主任的名字是？</asp:ListItem>
		<asp:ListItem>我小学班主任的名字是？</asp:ListItem>
		<asp:ListItem>我小学校名是？</asp:ListItem>
		<asp:ListItem>我的学号（或工号）是？</asp:ListItem>
		<asp:ListItem>我母亲的生日是？</asp:ListItem>
		<asp:ListItem>我父亲的生日是？</asp:ListItem>
		<asp:ListItem>我配偶的生日是？</asp:ListItem>
		<asp:ListItem>我自己编写密码提示问题</asp:ListItem>
	</asp:DropDownList>
</td>
<td width="254">
	<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
		ErrorMessage="请选择问题" ControlToValidate="dropq1" SetFocusOnError="false"></asp:RequiredFieldValidator>

</td>
</tr>
<tr id="my_question1" visible="false" runat="server">
<td align="right">
	自定义问题1：
</td>
<td>
	&nbsp;<asp:TextBox ID="txtz1" runat="server" Width="186px"></asp:TextBox>
</td>
<td>
	<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
		ErrorMessage="问题不能为空" SetFocusOnError="false" ControlToValidate="txtz1"></asp:RequiredFieldValidator>
	
</td>
</tr>
<tr>
<td align="right">
	答案1：
</td>
<td>
	&nbsp;<asp:TextBox ID="txta1" runat="server" Width="185px"></asp:TextBox>
</td>
<td>
	<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="答案不能为空" ControlToValidate="txta1" SetFocusOnError="false"></asp:RequiredFieldValidator>
	
</td>
</tr>
<tr>
<td width="118" align="right">
	问题2：
</td>
<td width="235">
	&nbsp;<asp:DropDownList ID="dropq2" runat="server" 
		onselectedindexchanged="dropq2_SelectedIndexChanged" AutoPostBack="True">
	<asp:ListItem>请选择一个问题</asp:ListItem>
		<asp:ListItem>我母亲的姓名是？</asp:ListItem>
		<asp:ListItem>我父亲的姓名是？</asp:ListItem>
		<asp:ListItem>我配偶的姓名是？</asp:ListItem>
		<asp:ListItem>我的出生地点是？</asp:ListItem>
		<asp:ListItem>我高中班主任的名字是？</asp:ListItem>
		<asp:ListItem>我初中班主任的名字是？</asp:ListItem>
		<asp:ListItem>我小学班主任的名字是？</asp:ListItem>
		<asp:ListItem>我小学校名是？</asp:ListItem>
		<asp:ListItem>我的学号（或工号）是？</asp:ListItem>
		<asp:ListItem>我母亲的生日是？</asp:ListItem>
		<asp:ListItem>我父亲的生日是？</asp:ListItem>
		<asp:ListItem>我配偶的生日是？</asp:ListItem>
		<asp:ListItem>我自己编写密码提示问题</asp:ListItem>
	</asp:DropDownList>
</td>
<td width="254">
	<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
		ErrorMessage="请选择问题" ControlToValidate="dropq2" SetFocusOnError="false"></asp:RequiredFieldValidator>
	
</td>
</tr>
<tr id="my_question2" visible="false" runat="server">
<td align="right">
	自定义问题2：
</td>
<td>
	&nbsp;<asp:TextBox ID="txtz2" runat="server"></asp:TextBox>
</td>
<td>
	<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
		ErrorMessage="问题不能为空" ControlToValidate="txtz2" SetFocusOnError="false"></asp:RequiredFieldValidator>
	
</td>
</tr>
<tr>
<td align="right">
	答案2：
</td>
<td>
	&nbsp;<asp:TextBox ID="txta2" runat="server"></asp:TextBox>
</td>
<td>
	<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
		ErrorMessage="答案不能为空" ControlToValidate="txta2" SetFocusOnError="false"></asp:RequiredFieldValidator>
	
</td>
</tr>
<tr>
<td width="118" align="right">
	问题3：
</td>
<td width="235">
	&nbsp;<asp:DropDownList ID="dropq3" runat="server" 
		onselectedindexchanged="dropq3_SelectedIndexChanged" AutoPostBack="True">
	<asp:ListItem>请选择一个问题</asp:ListItem>
		<asp:ListItem>我母亲的姓名是？</asp:ListItem>
		<asp:ListItem>我父亲的姓名是？</asp:ListItem>
		<asp:ListItem>我配偶的姓名是？</asp:ListItem>
		<asp:ListItem>我的出生地点是？</asp:ListItem>
		<asp:ListItem>我高中班主任的名字是？</asp:ListItem>
		<asp:ListItem>我初中班主任的名字是？</asp:ListItem>
		<asp:ListItem>我小学班主任的名字是？</asp:ListItem>
		<asp:ListItem>我小学校名是？</asp:ListItem>
		<asp:ListItem>我的学号（或工号）是？</asp:ListItem>
		<asp:ListItem>我母亲的生日是？</asp:ListItem>
		<asp:ListItem>我父亲的生日是？</asp:ListItem>
		<asp:ListItem>我配偶的生日是？</asp:ListItem>
		<asp:ListItem>我自己编写密码提示问题</asp:ListItem>
	</asp:DropDownList>
</td>
<td width="254">
	
	<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
		ErrorMessage="请选择问题" ControlToValidate="dropq3" SetFocusOnError="false"></asp:RequiredFieldValidator>
	
</td>
</tr>
<tr id="my_question3" visible="false" runat="server">
<td align="right">
	自定义问题3：
</td>
<td>
	&nbsp;<asp:TextBox ID="txtz3" runat="server"></asp:TextBox>
</td>
<td>
	
	<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
		ErrorMessage="问题不能为空" ControlToValidate="txtz3" SetFocusOnError="false"></asp:RequiredFieldValidator>
	
</td>
</tr>
<tr>
<td align="right">
	答案3：
</td>
<td>
	&nbsp;<asp:TextBox ID="txta3" runat="server"></asp:TextBox>
</td>
<td>
	
	<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
		ErrorMessage="答案不能为空" ControlToValidate="txta3" SetFocusOnError="false"></asp:RequiredFieldValidator>
	
</td>
</tr>
</table>

<table width="600" height="178" border="0" align="center" cellpadding="7" cellspacing="0">
<tr>
	<td colspan="3">
		<strong><font color="#325AA2">设置身份证</font></strong>
	</td>
</tr>
<tr>
	<td  colspan="3">
	  
	</td>
</tr>
<tr>
	<td width="117" height="33" align="right">
		身份证号码：
	</td>
	<td width="237">
   
		<asp:TextBox ID="txtcard" runat="server"></asp:TextBox>
	</td>
	<td width="254">
		
		<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
			ErrorMessage="身份证号码不能为空" ControlToValidate="txtcard" SetFocusOnError="false"></asp:RequiredFieldValidator>
		
	</td>
</tr>
<tr>
	<td height="58" align="right">
		&nbsp;
	</td>
	<td colspan="2">

		<asp:Button ID="Button1" runat="server" Text="提交保存" onclick="Button1_Click" />
	</td>
</tr>
</table>
</form>
</body>
</html>
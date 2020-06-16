<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_AddLog, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标32323232题页</title>
<script language="javascript">
function show()
{
	document.getElementById("title").innerText=document.title;
}
</script>
<link rel="stylesheet" type="text/css" href="../../Skin/User_Main.css" />
<link rel="stylesheet" type="text/css" href="../../Skin/user_user.css" />
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css"type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />    
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<input type="button" runat="server" onclick="show()" value="输出标题" />
<div class="us_seta" style="margin-top: 10px;">
		<h1 style="text-align: center">
			</h1>
			<li style="width: 15%; float: left; line-height: 30px; text-align: right">日志类型： </li>
		<li style="width: 83%; line-height: 30px; height: 35px;">
			<asp:DropDownList ID="ddlLogType" runat="server" class="l_input" Height="52px" 
				Width="96px">
			</asp:DropDownList>
			<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
				CausesValidation="False">添加分类</asp:LinkButton>
		</li>
		<li style="width: 15%; float: left; line-height: 30px; text-align: right;">标&nbsp; 
			题： </li>
		<li style="width: 83%; line-height: 30px">
			<asp:TextBox ID="txtTitle" runat="server" class="l_input" Width="267px" />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtTitle"
				runat="server" ErrorMessage="请输入标题！" Display="Dynamic" />
		</li>
		<li style="width: 15%; float: left; line-height: 30px; text-align: right;">颜&nbsp; 色： </li>
		<li style="width: 83%; line-height: 30px">
			<asp:TextBox ID="Titlecolor" runat="server" Text='' Width="10%" class="l_input"></asp:TextBox>
		<script language="JavaScript" type="text/javascript">
			var color;
			function SelectColor(t, clientId) {
				var url = "../../../Common/SelectColor.aspx?d=f&t=6";
				var old_color = (document.getElementById(clientId).value.indexOf('#') == 0) ? '&' + document.getElementById(clientId).value.substr(1) : '&' + document.getElementById(clientId).value;
				if (document.all) {
					color = showModalDialog(url + old_color, '', "dialogWidth:18.5em; dialogHeight:16.0em; status:0");
					if (color != null) {
						document.getElementById(clientId).value = color;
					} else {
						document.getElementById(clientId).focus();
					}
				} else {
					color = window.open(url + '&' + clientId, "hbcmsPop", "top=200,left=200,scrollbars=yes,dialog=yes,modal=no,width=300,height=260,resizable=yes");
				}
			}
		</script>

		&nbsp;<img onclick="SelectColor(this,'Titlecolor');" src="../../../App_Themes/AdminDefaultTheme/images/selectclolor.gif"
			align="absmiddle" style="border-width: 0px; cursor: pointer" />
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
				ControlToValidate="Titlecolor" ErrorMessage="请选择颜色"></asp:RequiredFieldValidator>
		&nbsp;&nbsp;&nbsp;
		</li>
		
		 <li style="width: 15%; float: left; line-height: 30px; text-align: right">访 问 权 限： </li>
		<li style="width: 83%; line-height: 30px">
			<asp:RadioButtonList ID="rblPermissions" runat="server" Width="157px" 
				style="margin-top: 0px" RepeatDirection="Horizontal" Height="25px">
			<asp:ListItem Text="所有人" Value="1"></asp:ListItem> <asp:ListItem Text="好友" Value="2"></asp:ListItem>
			<asp:ListItem Text="私密" Value="3"></asp:ListItem>
			</asp:RadioButtonList>
		<li style="width: 15%; float: left; line-height: 30px; text-align: right">内&nbsp; 容： </li>
		<li style="width: 83%; line-height: 30px">
			<asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" 
				class="l_input" Height="99px" Width="305px" /><br />
		</li>
		
		
	   
		<li style="width: 100%; float: left; line-height: 30px; text-align: center">
			<asp:Button ID="BtnSubmit" runat="server" Text="添加" OnClick="BtnSubmit_Click" class="C_input" />
			&nbsp;&nbsp;
			<asp:Button ID="BtnCancle" runat="server" Text="取消" OnClick="BtnCancle_Click" ValidationGroup="BtnCancel" class="C_input" />
		</li>
		<li style="width: 100%; float: left; line-height: 30px"></li>
	</div>
	<asp:Label Text="" ID="title" runat="server"></asp:Label>
</form>
</body>
</html>

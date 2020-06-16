<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.AddEditModel, App_Web_wdyr0bpz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head >
<title>编辑内容模型</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../JS/chinese.js" type="text/javascript"></script>
<script src="../../JS/chinese.js" type="text/javascript"></script>
<script language="JavaScript" type="text/JavaScript">
    function Getpy(ontxt, id) {
        var str = document.getElementById(ontxt).value.trim();
        if (str == "") {
            document.getElementById(id).value = "";
            return;
        }
        var arrRslt = makePy(str);
        if (arrRslt.length > 0) {
            document.getElementById(id).value = arrRslt.toString().toLowerCase();
            if (document.getElementById(id).value.indexOf(',') > -1) {//判断栏目名称有多音字后栏目标识名“，”并去掉逗号后面的数据
                var str = document.getElementById(id).value;
                document.getElementById(id).value = str.split(',', 1);
            }
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理</span> &gt;&gt; <span>系统设置</span> &gt;&gt; <a href="ModelManage.aspx">内容模型管理</a> &gt;&gt; <span>
		<asp:Literal ID="LNav" runat="server" Text="添加内容模型"></asp:Literal>
	</span>
</div>
<div class="clearbox">
</div>
<table class="border" width="100%" cellpadding="2" cellspacing="1">
	<tr>
		<td class="spacingtitle" colspan="2" align="center">
			<asp:Literal ID="LTitle" runat="server" Text="添加内容模型"></asp:Literal>
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft" style="width: 200px" >
			<strong>内容模型名称：</strong>
		</td>
		<td>
			<asp:TextBox ID="TxtModelName" class="l_input" runat="server" Width="156" MaxLength="200" onkeyup="Getpy('TxtModelName','TxtTableName')" AutoPostBack="True" /><font color="red">*</font>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtModelName">内容模型名称不能为空</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>创建的数据表名：</strong>
		</td>
		<td>
			<asp:Label ID="LblTablePrefix" runat="server" Text="ZL_C_" />
			<asp:TextBox ID="TxtTableName" class="l_input" runat="server" Width="120" MaxLength="50" AutoPostBack="True" /><font color="red">*</font>
			<asp:RegularExpressionValidator ID="ValeTableName" runat="server" ControlToValidate="TxtTableName" ErrorMessage="只允许输入字母、下划线" ValidationExpression="^[a-zA-Z_]+$" SetFocusOnError="true" Display="Dynamic" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtTableName">数据表名不能为空</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>项目名称：</strong>
			<br />
			例如：文章、软件、图片、商品
		</td>
		<td>
			<asp:TextBox ID="TxtItemName" runat="server" class="l_input" Width="156" MaxLength="20" /><font color="red">*</font>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtItemName" ErrorMessage="RequiredFieldValidator">项目名称不能为空</asp:RequiredFieldValidator>
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>项目单位：</strong>
			<br />
			例如：篇、个、张、件
		</td>
		<td>
			<asp:TextBox ID="TxtItemUnit" runat="server" class="l_input" Width="156" MaxLength="20" /><font color="red">*</font>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtItemUnit" ErrorMessage="RequiredFieldValidator">项目单位不能为空</asp:RequiredFieldValidator>
		</td>
	</tr>
   <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>是否复制：</strong>
			  <br />
			  确定模型是否可以复制
		</td>
		<td>
			<asp:RadioButtonList ID="rblCopy" runat="server" RepeatDirection="Horizontal">
				<asp:ListItem Value="1" Selected="True" >是</asp:ListItem>
				<asp:ListItem Value="2">否</asp:ListItem>
			</asp:RadioButtonList>
			
		</td>
	</tr>
		   <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>是否批量添加：</strong>
			  <br />
			  确定用户中心是否可以批量添加
		</td>
		<td>
			<asp:RadioButtonList ID="rblIslotsize" runat="server" RepeatDirection="Horizontal">
				<asp:ListItem Value="1" >是</asp:ListItem>
				<asp:ListItem Value="2"  Selected="True">否</asp:ListItem>
			</asp:RadioButtonList>
			
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>项目图标：</strong>
			<br />
			图标存放在~/Images/ModelIcon/目录下
		</td>
		<td>
			<asp:TextBox ID="TxtItemIcon" class="l_input" Text="Default.gif" runat="server" Width="156" MaxLength="20" />
			<asp:Image ID="ImgItemIcon" runat="server" ImageUrl="~/Images/ModelIcon/Default.gif" />
			<=<asp:DropDownList ID="DrpItemIcon" runat="server" />
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>模型描述：</strong>
		</td>
		<td>
			<asp:TextBox ID="TxtDescription" runat="server" class="l_input" 
				TextMode="MultiLine" Width="365px" Height="77px" />
		</td>
	</tr>
	<tr class="tdbgbottom">
		<td colspan="2">
			<asp:HiddenField ID="HdnModelId" runat="server" />
			<asp:Button ID="EBtnSubmit"  Text="保 存" class="C_input"  OnClick="EBtnSubmit_Click" runat="server" />
			&nbsp;&nbsp;
			<input name="Cancel" type="button"  id="Cancel" class="C_input"  value="取 消" onclick="window.location.href='ModelManage.aspx';" />
		</td>
	</tr>
</table>

<script type="text/javascript">
function ChangeImgItemIcon(icon)
{
	document.getElementById("<%= ImgItemIcon.ClientID %>").src = "../../Images/ModelIcon/"+icon;
}
function ChangeTxtItemIcon(icon)
{
	document.getElementById("<%= TxtItemIcon.ClientID %>").value = icon;
}
</script>
</form>
</body>
</html>
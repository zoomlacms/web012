<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_Default, App_Web_rixv4ifk" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>店铺主页</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />

<script src="../../Common/Common.js" type="text/javascript"></script>

<script language="javascript">
	function CheckAll(spanChk)//CheckBox全选
	{
		var oItem = spanChk.children;
		var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
		xState = theBox.checked;
		elm = theBox.form.elements;
		for (i = 0; i < elm.length; i++)
			if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
			if (elm[i].checked != xState)
				elm[i].click();
		}
	}
</script>
</head>
<body>
<form id="form1" runat="server">
<div style="width: 100%">
	<!-- str -->
	<asp:MultiView ID="MultiView1" runat="server">
		<asp:View ID="View1" runat="server">
			<uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
			<uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
			<div class="us_topinfo" style="margin-top: 10px; width: 98%">
				店铺基本信息
				<asp:Label ID="Label2" runat="server" Text=""></asp:Label></div>
			<div class="us_topinfo" style="margin-top: 10px; width: 98%">
				<li style="width: 120px; float: left; line-height: 30px; text-align: right;">商铺名称：
				</li>
				<li style="width: 70%; line-height: 30px">
					<asp:TextBox ID="Nametxt" runat="server" Text='' Width="35%" MaxLength="30"></asp:TextBox>
					<span><font color="red">*</font></span>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2"
						runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Nametxt">名称必填</asp:RequiredFieldValidator></li><li
							style="width: 120px; float: left; line-height: 30px; text-align: right">商铺信用积分：
						</li>
				<li style="width: 70%; line-height: 30px">&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label></li><li
					style="width: 120px; float: left; line-height: 30px; text-align: right">商铺状态：
				</li>
				<li style="width: 70%; line-height: 30px">&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label></li><li
					style="width: 120px; float: left; line-height: 30px; text-align: right">商铺类型：
				</li>
				<li style="width: 70%; line-height: 30px">&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label></li><li
					style="width: 120px; float: left; line-height: 30px; text-align: right">商铺风格模板：
				</li>
				<li style="width: 70%; line-height: 30px">&nbsp;<asp:DropDownList ID="DropDownList3"
					runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
				</asp:DropDownList>
					<br />
					<asp:Image ID="Image1" runat="server" Height="90px" Width="96px" /></li><li style="width: 100%;">
						<asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
					</li>
				<li style="width: 120px; float: left; line-height: 30px; text-align: right"></li>
				<li>
					<asp:Button ID="EBtnSubmit" Text="信息提交" runat="server" OnClick="EBtnSubmit_Click" />
					&nbsp;
					<input id="Button1" type="button" value="返  回" onclick="javascript:history.go(-1)" />
					<asp:HiddenField ID="HiddenField1" runat="server" />
				</li>
			</div>
		</asp:View>
		<asp:View ID="View2" runat="server">
			该功能尚未开启！
		</asp:View>
	</asp:MultiView></div>
</form>
</body>
</html>
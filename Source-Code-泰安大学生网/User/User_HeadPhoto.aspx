<%@ page language="C#" autoeventwireup="true" inherits="User_User_HeadPhoto, App_Web_sxbic0ln" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>设置头像</title>
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
<body>
<form id="form1" runat="server">
<div class="rok">
	<div class="r1">
		<img src="../images/ico_dh.gif" width="17" height="13" /></div>
	<div class="r2">
		<div class="box1">
			恭喜您，帐号保护资料设置成功!</div>
	</div>
	<div class="clearfix">
	</div>
</div>
<div class="clearfix">
</div>
<table width="80%" align="center">
	<tr>
		<td colspan="2">
			<strong><font color="#325AA2">请设置您的头像照片：</font></strong>
		</td>
	</tr>
	<tr>
		<td width="198" height="260" align="center">
		<asp:Image ID="Image1" runat="server"  Width="200px" Height="200px"/>
		</td>
		<td>
			<table border="0" cellspacing="0" cellpadding="3" width="100%">
				<tr>
					<td width="551" height="14" class="tablebody2">
						上传您的形象照片，提高您的魅力。
					</td>
				</tr>
				<tr>
					<td height="15">
						<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
							<asp:ListItem Value="1" Selected="True">虚拟形象照</asp:ListItem>
							<asp:ListItem Value="2">本人真实照片</asp:ListItem>
						</asp:RadioButtonList>
					</td>
				</tr>
				<tr>
					<td>
						<asp:TextBox ID="txtImg" runat="server"  ReadOnly="true"></asp:TextBox>
						<iframe id="bigimgs" style="top: 2px" src="fileupload.aspx?menu=txtImg" width="100%"
							height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
					</td>
				</tr>
				<tr><td>
					<asp:Button ID="Button1" runat="server" Text="上传形象照" onclick="Button1_Click" />
					
					&nbsp;
					 &nbsp;&nbsp;
				   
				</td></tr>
				<tr>
					<td height="21">
						<p>
							注意：<br />
							1、形象照可以是jpg、gif、png等格式文件，若想达到最佳效果请将照片尺寸调整为150*200；<br />
							2、您可以上传生活照、工作照等类型的照片，展示您的各种风采；<br />
							3、个人形象照请不要用卡通图，明星图及淫秽等违禁的图片。<br />
							4、您的形象照只有审核通过才会在 玩家真人秀 那显示出来。<br />
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr><td colspan="2" align="center">
	  <asp:Button ID="btnCancel"  runat="server" Text="下一步"  Width="60px" 
			class="C_input" onclick="btnCancel_Click"/>
	</td></tr>
</table>
</form>
</body>
</html>
<%@ page language="C#" autoeventwireup="true" inherits="NeatUpload_Progressone, App_Web_boo0ial2" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%--<%@ Page Language="c#" %>
<%@ Import Namespace="Bestcomy.Web.Controls.Upload" %>--%>
<HTML>
	<HEAD id="HEAD1" runat="server">
		<title>
			<%=Percentage%>
			% completed</title>
		<base target="_self" />
		<style>
    BODY { MARGIN: 0px; OVERFLOW: hidden; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BACKGROUND-COLOR: buttonface; BORDER-BOTTOM-STYLE: none }
    TD { FONT-SIZE: 11pt; FONT-FAMILY: Arial }
    </style>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<table border="0" cellpadding="5" width="100%">
				<tr>
					<td align="center" valign="middle" height="100%">
						<table border="0" width="340">
							<tr>
								<td nowrap>状态: <asp:Label ID="txt_progressinfo" Runat="server" /></td>
							</tr>
							<tr>
								<td nowrap>文件: <asp:Label ID="txt_filename" style="TEXT-OVERFLOW:ellipsis" Runat="server" Width="300" /></td>
							</tr>
						</table>
						<table border="0" cellspacing="1" cellpadding="0" style="BORDER-RIGHT:buttonhighlight 1px solid; BORDER-TOP:buttonshadow 1px solid; BORDER-LEFT:buttonshadow 1px solid; WIDTH:340px; BORDER-BOTTOM:buttonhighlight 1px solid; HEIGHT:22px">
							<tr>
								<td width="<%=Percentage%>%" bgcolor="highlight"></td>
								<td width="<%=100-Percentage%>%"></td>
							</tr>
						</table>
						<table border="0" cellspacing="0" cellpadding="1" width="340">
							<tr>
								<td nowrap>传输速率: <asp:Label ID="txt_speed" Runat="server" /></td>
							</tr>
							<tr>
								<td nowrap>剩余时间: <asp:Label ID="txt_leftTime" Runat="server" /></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="right" nowrap><asp:Button ID="btn_ok" Text="OK" Runat="server" Width="70" />  <asp:Button ID="btn_cancle" Text="Cancel" OnClick="btn_cancle_Click" Runat="server" Width="70" />     </td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
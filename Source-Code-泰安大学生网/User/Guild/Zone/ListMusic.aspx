<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_ListMusic, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>无标题页</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<asp:GridView ID="gvMusic" runat="server" AutoGenerateColumns="False" 
	Width="600px" CssClass="gridtitle" AllowPaging="True" DataKeyNames="ID" 
	onrowcommand="gvMusic_RowCommand"
	PageSize="20" Height="76px" 
	onpageindexchanging="gvMusic_PageIndexChanging">
	<RowStyle HorizontalAlign="Center" />
	<Columns>
		<asp:BoundField DataField="MusicName" HeaderText="音乐名" />
		<asp:BoundField DataField="Singer" HeaderText="歌手" />
		<asp:BoundField DataField="MusicTime" DataFormatString="{0:yyyy-MM-dd}" 
			HeaderText="添加时间" />
		<asp:TemplateField ShowHeader="False">
			<HeaderTemplate>
				删除
			</HeaderTemplate>
			<ItemTemplate>
				<asp:LinkButton ID="lbDelete" runat="server" CausesValidation="False" OnClientClick="if(!this.disabled) return confirm('确实要删除此信息到垃圾箱吗？');"
					CommandName="Delete" Text="删除" CommandArgument='<%# Eval("ID") %>'></asp:LinkButton>
			</ItemTemplate>
		</asp:TemplateField>
		<asp:TemplateField>
			<HeaderTemplate>
				修改
			</HeaderTemplate>
			<ItemTemplate>
				<asp:LinkButton ID="LinkButton1" CommandName="update" runat="server" CommandArgument='<%# Eval("ID") %>'>修改</asp:LinkButton>
			</ItemTemplate>
		</asp:TemplateField>
	</Columns>
	<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
</asp:GridView>
</form>
</body>
</html>

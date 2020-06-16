<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Content.MyFavori, App_Web_1e5k3s5m" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的收藏</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
<script language="javascript" type="text/javascript" src="/SelectCheckBox.js"></script>
</head>
<body>
<div>
	<div class="us_pynews" style="height: 24px; line-height: 24px;">
		您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/"><asp:Label ID="LblSiteName"
			runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; </span><span><a
		   title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; </span>
			<span>我的收藏</span></span>
	</div>
	<div class="clearbox">
	</div>
	<form id="form1" runat="server">
	<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False"
		DataKeyNames="FavoriteID" PageSize="20" OnPageIndexChanging="Egv_PageIndexChanging"
		OnRowCommand="Lnk_Click" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
		<Columns>
			<asp:TemplateField HeaderText="选择">
				<ItemTemplate>
					<asp:CheckBox ID="chkSel" runat="server" />
				</ItemTemplate>
				<ItemStyle HorizontalAlign="Center" />
			</asp:TemplateField>
			<asp:TemplateField HeaderText="会员形象照">
				<HeaderStyle Width="25%" />
				<ItemTemplate>
					<a href="../../ShowList.aspx?id=<%#Eval("InfoID", "{0}")%>">
						<asp:Image ID="Image1" runat="server" Height="68px" Width="72px" ImageUrl='<%#GetUrl(Eval("InfoID", "{0}"))%>' /></a>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="Center" />
			</asp:TemplateField>
			<asp:TemplateField HeaderText="会员信息">
				<HeaderStyle Width="40%" />
				<ItemTemplate>
					<a href="../../ShowList.aspx?id=<%#Eval("InfoID", "{0}")%>">
						<%# GetInfo(Eval("InfoID", "{0}"))%>
					</a>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="Center" />
			</asp:TemplateField>
			<asp:TemplateField HeaderText="收藏时间">
				<HeaderStyle Width="20%" />
				<ItemTemplate>
					<%# Eval("FavoriteDate", "{0}")%>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="Center" />
			</asp:TemplateField>
		</Columns>
		<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
		<RowStyle BackColor="#EFF3FB" Height="25px" />
		<EditRowStyle BackColor="#2461BF" />
		<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
		<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
		<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
		<AlternatingRowStyle BackColor="White" />
		<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"
			NextPageText="下一页" PreviousPageText="上一页" />
	</asp:GridView>
	<div style="padding-top: 5px;">
		<div class="us_seta" style="height: auto;">
			<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
				Text="选中本页显示的所有项目" />
			<asp:Button ID="Button2" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click"	OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项从收藏夹删除吗？')}"	CssClass="button" UseSubmitBehavior="true" />
			&nbsp;&nbsp;</div>
	</div>
	</form>
</div>
</body>
</html>
<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_RolePermissions, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>编辑版块权限</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
    
  <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>成员</span> &gt;&gt; <span>管理所有角色</span> &gt;&gt; <span>编辑版块权限</span>
    </div>
    <div class="clearbox"></div>
   <table cellspacing="1" cellpadding="5" width="100%" border="0" class="border" align="center">
	<tr class="spacingtitle">
		<td align="center"><asp:Label ID="lblName" runat="server"></asp:Label>
            在各版块的权限</td>
	</tr>
	
	<asp:GridView ID="gv" runat="server" Width="100%" CssClass="border" AutoGenerateColumns="False" DataKeyNames="ForumPermissionsID" GridLines="None">
	      <Columns>
            <asp:TemplateField HeaderText="板块权限" ItemStyle-HorizontalAlign="Center">
	              <ItemTemplate>
	                   <asp:Label runat="server" Text='<%# getFroum(Eval("ForumID")) %>'></asp:Label>
	              </ItemTemplate>
	              <HeaderStyle Width="9%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	          </asp:TemplateField>
	          <asp:TemplateField HeaderText="浏览" ItemStyle-HorizontalAlign="Center">
	              <ItemTemplate>
	                   <asp:CheckBox ID="chkliu" runat="server" Checked='<%# getbool(Eval("PermissionView")) %>' />
	              </ItemTemplate>
	              <HeaderStyle Width="9%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	          </asp:TemplateField>
	          <asp:TemplateField HeaderText="阅读" ItemStyle-HorizontalAlign="Center">
	              <ItemTemplate>
	                   <asp:CheckBox ID="chkdu" runat="server" Checked='<%# getbool(Eval("PermissionRead")) %>' />
	              </ItemTemplate>
	              <HeaderStyle Width="9%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	          </asp:TemplateField>
	          <asp:TemplateField HeaderText="发帖" ItemStyle-HorizontalAlign="Center">
	              <ItemTemplate>
	                   <asp:CheckBox ID="chkpost" runat="server" Checked='<%# getbool(Eval("PermissionPost")) %>' />
	              </ItemTemplate>
	              <HeaderStyle Width="9%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	          </asp:TemplateField>
	          <asp:TemplateField HeaderText="回复" ItemStyle-HorizontalAlign="Center">
	              <ItemTemplate>
	                   <asp:CheckBox ID="chkanswer" runat="server" Checked='<%# getbool(Eval("PermissionReply")) %>' />
	              </ItemTemplate>
	              <HeaderStyle Width="9%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	          </asp:TemplateField>
	          <asp:TemplateField HeaderText="编辑" ItemStyle-HorizontalAlign="Center">
	              <ItemTemplate>
	                  <asp:CheckBox ID="chkedit" runat="server" Checked='<%# getbool(Eval("PermissionEdit")) %>' />
	              </ItemTemplate>
	              <HeaderStyle Width="9%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	          </asp:TemplateField>
	          <asp:TemplateField HeaderText="删除" ItemStyle-HorizontalAlign="Center">
	              <ItemTemplate>
	                   <asp:CheckBox ID="chkdel" runat="server" Checked='<%# getbool(Eval("PermissionDelete")) %>' />
	              </ItemTemplate>
	              <HeaderStyle Width="9%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	          </asp:TemplateField>
	          <asp:TemplateField HeaderText="发起投票" ItemStyle-HorizontalAlign="Center">
	              <ItemTemplate>
	                   <asp:CheckBox ID="chktou" runat="server" Checked='<%# getbool(Eval("PermissionCreatePoll")) %>' />
	              </ItemTemplate>
	              <HeaderStyle Width="9%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	          </asp:TemplateField>
	          <asp:TemplateField HeaderText="投票" ItemStyle-HorizontalAlign="Center">
	              <ItemTemplate>
	                   <asp:CheckBox ID="chkfa" runat="server" Checked='<%# getbool(Eval("PermissionVote")) %>' />
	              </ItemTemplate>
	              <HeaderStyle Width="9%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	          </asp:TemplateField>
	          <asp:TemplateField HeaderText="附件" ItemStyle-HorizontalAlign="Center">
	              <ItemTemplate>
	                   <asp:CheckBox ID="chkfu" runat="server" Checked='<%# getbool(Eval("PermissionAttachment")) %>' />
	              </ItemTemplate>
	              <HeaderStyle Width="9%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	          </asp:TemplateField>
	          <asp:TemplateField HeaderText="管理" ItemStyle-HorizontalAlign="Center">
	              <ItemTemplate>
	                   <asp:CheckBox ID="chkmang" runat="server" Checked='<%# getbool(Eval("PermissionManage")) %>' />
	              </ItemTemplate>
	              <HeaderStyle Width="9%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
	          </asp:TemplateField>
	      </Columns>
	</asp:GridView>
	
</table>

<asp:Button ID="Button1" runat="server" Text="<<返 回" class="C_input"/> 
<asp:Button ID="Button2" runat="server" Text="前 进>>" class="C_input"/>
        <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:Button ID="Button3" runat="server" Text="保 存" onclick="Button3_Click" class="C_input"/>
</form> 
</body>
</html>
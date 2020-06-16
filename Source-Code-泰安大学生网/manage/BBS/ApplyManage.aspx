<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_ApplyManage, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>论　　坛</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>&gt;&gt;<span>论坛管理</span> &gt;&gt;<span>论 坛</span>&gt;&gt;<span>论 坛 </span>
    </div>
    <div class="clearbox"></div>
    <div class="clearbox"></div>
    <div>
     <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>所有的论坛组</asp:ListItem>
        <asp:ListItem>主分类</asp:ListItem>
    </asp:DropDownList> 
    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="border" DataKeyNames="ForumID" PageSize="20" Width="100%" AllowSorting="true" onrowcommand="Egv_RowCommand" GridLines="None">
        <Columns>
            <asp:BoundField DataField="ForumID" HeaderText="ID"  ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="5%"></HeaderStyle><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>  
            <asp:BoundField DataField="ForumName" HeaderText="论坛" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="15%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
             <asp:BoundField DataField="TodayPosts" HeaderText="今日" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="8%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalThreads" HeaderText="主题" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="8%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalPosts" HeaderText="帖子" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle  Width="8%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Moderated" HeaderText="版主" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="15%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="是否启用">
                 <ItemTemplate><%# (int)Eval("IsActive") == 0 ? "<span style=\"color: #ff0033\">×</span>" : "√"%></ItemTemplate>
                 <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" /><HeaderStyle Width="7%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <HeaderStyle ForeColor="#1e860b" Width="25%" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ForumID")%>' CommandName="edit">编辑</asp:LinkButton>|
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("ForumID")%>' CommandName="sel">浏览</asp:LinkButton>|
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("ForumID")%>' CommandName="del" OnClientClick="if(!this.disabled) return confirm('确实要删除吗？');">删除</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
</div>
<br/>
<asp:Button ID="Button1" runat="server" Text="<<返   回" class="C_input"/>
<asp:Button ID="Button2" runat="server" Text="前   进>>" class="C_input"/>
</form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_AdminUser, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>浏览所有用户</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="r_navigation">
    
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>成员</span> &gt;&gt; <span>浏览所有用户</span>
    </div>
    <div class="clearbox"></div>
    <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" CssClass="border" DataKeyNames="UserID"  Width="100%" onrowcommand="Egv_RowCommand" GridLines="None" PageSize="3">
        <Columns>
            <asp:BoundField HeaderText="用户ID"　DataField="UserID" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="5%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="用户名"　DataField="UserName" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="10%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Email"　DataField="UserEmail" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="10%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="发帖数" DataField="TotalPosts" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="10%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="注册时间" DataField="UserRegisterTime" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="10%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="最后活动时间" DataField="UserActivityTime" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="15%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField> 
            <asp:TemplateField HeaderText="动作" ItemStyle-HorizontalAlign="Center" >
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" CommandName="SelAdmin" CommandArgument='<%#Eval("UserID") %>' runat="server">查看</asp:LinkButton>
                    |<asp:LinkButton ID="LnkModify" CommandName="ModifyAdmin" CommandArgument='<%#Eval("UserID") %>' runat="server">编辑</asp:LinkButton>
                    |<asp:LinkButton ID="LnkDelete"  runat="server" CommandName="DeleteAdmin" OnClientClick="if(!this.disabled) return confirm('确实要删除吗？');"
                        CommandArgument='<%#Eval("UserID") %>'>删除</asp:LinkButton>  
                  </ItemTemplate>
                  <HeaderStyle Width="10%" /><ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <%--<PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />--%>
    </asp:GridView>
    <div class="clearbox"></div> 
    <table>
    <tr class="tdbg">
         <td class="tdbgleft" colspan="6" align="center">共 
             <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  
             <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> 
             <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：
             <asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  
             <asp:Label ID="pagess" runat="server" Text="" />条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>页
         </td>
    </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Font-Size="9pt" Text="<<返回" class="C_input" /><asp:Button ID="Button2" runat="server" Font-Size="9pt" Text="前进>>" class="C_input"/>
    </form>
</body>
</html>

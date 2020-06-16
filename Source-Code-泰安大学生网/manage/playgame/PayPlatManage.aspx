<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.PayPlatManage, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>支付平台管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&gt;&gt;<span>系统管理</span> &gt;&gt;<span>支付平台管理</span>
	</div>
	<div class="clearbox"></div>
	<div>
        <asp:Label ID="Label1" runat="server" Text="支付接口："></asp:Label><asp:DropDownList
            ID="DDLPayPlat" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DDLPayPlat_SelectedIndexChanged">
        </asp:DropDownList>
    </div>
	<asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="PayPlatID" PageSize="20" OnRowDataBound="Egv_RowCreated"  
        OnRowCommand="Lnk_Click" Width="100%">
	    <Columns>
	        <asp:BoundField HeaderText="ID"　DataField="PayPlatID" >
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="名称"　DataField="PayPlatName" >
                <HeaderStyle Width="20%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="商户ID"　DataField="AccountID" >
                <HeaderStyle Width="10%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="手续费">
                <ItemTemplate>  
                    <%# GetRate(Eval("Rate", "{0}")) %>       
                </ItemTemplate>
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="默认">
                <ItemTemplate>  
                    <%# GetDefault(Eval("IsDefault", "{0}")) %>       
                </ItemTemplate>
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="启用">
                <ItemTemplate>  
                    <%# GetDisabled(Eval("IsDisabled", "{0}")) %>       
                </ItemTemplate>
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="用户组">
                <ItemTemplate>  
                    <%# GetGroupName(Eval("leadtoGroup", "{0}"))%>       
                </ItemTemplate>
                <HeaderStyle Width="15%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作" >
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("PayPlatID") %>'>修改</asp:LinkButton> | 
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="SetDef" CommandArgument='<%# Eval("PayPlatID") %>'>默认</asp:LinkButton> |
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Disabled" CommandArgument='<%# Eval("PayPlatID") %>'>禁用</asp:LinkButton> |
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="MovePre" CommandArgument='<%# Eval("PayPlatID") %>'>前移</asp:LinkButton> | 
                    <asp:LinkButton ID="LinkButton5" runat="server" CommandName="MoveNext" CommandArgument='<%# Eval("PayPlatID") %>'>后移</asp:LinkButton> |
                    <asp:LinkButton ID="LinkButton6" runat="server" CommandName="Delete" CommandArgument='<%# Eval("PayPlatID") %>' OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');return false;">删除</asp:LinkButton>
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
	<table Width="100%">
	    
	        <tr class="tdbg">
                <td height="22" colspan="9" align="center" class="tdbgleft">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条记录
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />条记录/页 转到第<asp:DropDownList ID="DropDownList1"
                        runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    页
                </td>
            </tr>
	    
	</table>
    </form>
</body>
</html>

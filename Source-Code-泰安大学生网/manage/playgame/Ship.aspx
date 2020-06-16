<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_Ship, App_Web_rliugfk2" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>游戏管理</span> &gt;&gt;
        <span>结算管理</span> &gt;&gt; <span>财务结算</span></div>
    <div class="clearbox">
    </div>
    <div>
        <asp:GridView ID="gvPay" runat="server" Width="100%" DataKeyNames="UserID" AutoGenerateColumns="False">
            <Columns>
            <asp:BoundField  DataField="UserID" HeaderText="编号"  ItemStyle-HorizontalAlign="Center"/>
                <asp:TemplateField HeaderText="商户名" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%# GetName(Convert.ToInt32(Eval("UserID")))%>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="已支付金额" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%# GetPay(Convert.ToInt32(Eval("UserID")), 0, 2)%>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="未支付金额" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%# GetPay(Convert.ToInt32(Eval("UserID")), 0, 3)%>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="已结算金额" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%# GetPay(Convert.ToInt32(Eval("UserID")),0, 4)%>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="可结算金额" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                    <%# GetPay(Convert.ToInt32(Eval("UserID")),Convert.ToDouble(Eval("Money")) ,5)%>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="javascript:if(!confirm('确定要执行结算操作吗？'))return false;">结算</asp:LinkButton> |
                        <a href='ShowPayList.aspx?uid=<%# Eval("UserID")%>'>详单</a> |
                        <a href='/manage/User/UserModify.aspx?UserID=<%# Eval("UserID")%>&type=x'>资料</a> |
                        <a href='PaymentList.aspx?uid=<%# Eval("UserID")%>'>订单列表</a>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
         <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
            <tr class="tdbg">
                <td height="22" colspan="10" align="center" class="tdbgleft">
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
    </div>
    </form>
</body>
</html>

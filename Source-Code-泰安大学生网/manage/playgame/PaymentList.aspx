<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_PaymentList, App_Web_rliugfk2" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>支付信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span>&gt;&gt; <span>游戏管理</span> &gt;&gt;
    <span>支付管理</span> &gt;&gt; <span>支付信息</span></div>
<div class="clearbox">
</div>
<div>
    <asp:GridView ID="gvPaymen" Width="100%" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField HeaderText="商户名" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%#GetGM(Eval("GMID").ToString())%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="游戏分区" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%#GetGame(Eval("GameID").ToString(), Eval("AreaID").ToString())%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="GameUser" HeaderText="玩家名" ItemStyle-HorizontalAlign="Center" />
            <asp:TemplateField HeaderText="充值金额" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%#Eval("Money")%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="PayTime" HeaderText="操作时间" ItemStyle-HorizontalAlign="Center" />
            <asp:TemplateField HeaderText="状态" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <%#GetStatus(Eval("Status").ToString(), Eval("IsHidden").ToString())%>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    总计金额：<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
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

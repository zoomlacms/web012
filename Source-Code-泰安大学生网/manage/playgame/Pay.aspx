<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_Pay, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script>
    function GetWin(id) {
        window.open('BankInfo.aspx?id=' + id,'','width=200,height=100,resizable=0,scrollbars=yes');
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>游戏管理</span> &gt;&gt;
        <span>结算管理</span> &gt;&gt; <span>商户支付</span></div>
    <div class="clearbox">
    </div>
    <div>
        <asp:GridView ID="gvPay" runat="server" DataKeyNames="PT_ID" Width="100%" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="PT_ID" HeaderStyle-Height="30px" HeaderText="ID" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                    <HeaderStyle Width="5%"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center" Height="40px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="userName" HeaderText="商户名" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                    <HeaderStyle Width="10%"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:TemplateField HeaderText="已支付金额" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%# Convert.ToDouble(Eval("almoney"))%>
                    </ItemTemplate>
                    <HeaderStyle Width="10%"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="未支付金额" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%# Convert.ToDouble(Eval("nonemoney"))%>
                    </ItemTemplate>
                    <HeaderStyle Width="10%"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="已结算金额" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%# Convert.ToDouble(Eval("almoney")) + Convert.ToDouble(Eval("nonemoney"))%>
                    </ItemTemplate>
                    <HeaderStyle Width="10%"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="支付" HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox1" class="l_input"  runat="server"></asp:TextBox> <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" MaximumValue='<%# Convert.ToDouble(Eval("nonemoney"))%>'
                            ControlToValidate="TextBox1" ErrorMessage="请输入正确的数值" MinimumValue="0" 
                            Type="Double" Display="Dynamic"></asp:RangeValidator>
                    </ItemTemplate>
                    <HeaderStyle Width="15%"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                    <a href="javascript:void{}" onclick='GetWin(<%#Eval("UserID") %>)'>银行资料</a> | 
                        <a href='/manage/User/Usreinfo.aspx?id=<%# Eval("UserID")%>&type=x'>商户资料</a> | <a
                            href='ShowPayList.aspx?uid=<%# Eval("UserID")%>'>结算详单</a> | <a href='PaymentList.aspx?uid=<%# Eval("UserID")%>'>
                                订单列表</a>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
            <tr>
                <td align="center">
                    <asp:Button ID="Button1" class="l_input" runat="server" Text="立即支付" OnClick="Button1_Click" />
                </td>
            </tr>
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

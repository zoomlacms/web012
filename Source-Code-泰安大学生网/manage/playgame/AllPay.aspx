<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_AllPay, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title></title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/calendar.js" language="javascript" type="text/javascript"></script>
<script>
function selectnum() {
    parent.document.getElementById("main_right").height = document.body.offsetHeight + 200;
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>游戏管理</span> &gt;&gt; <span>结算管理</span> &gt;&gt; <span>支付记录</span></div>
    <div class="clearbox">
    </div>
    <div>
    <table width="100%">
            <tr>
                <td>
                    <table width="100%">
                        <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right">
                                收款人：
                            </td>
                            <td>
                                <asp:TextBox ID="txtName" class="l_input"  runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td align="right">
                                开始时间：
                            </td>
                            <td>
                                <asp:TextBox ID="txtStartTime" class="l_input"  onclick="calendar();selectnum();" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td align="right">
                                结束时间：
                            </td>
                            <td>
                                <asp:TextBox ID="txtEndTime" class="l_input"  runat="server"  onclick="calendar();selectnum();" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button1" class="C_input"  runat="server" Text="立即查询" Width="100px" 
                                    onclick="Button1_Click" />
                            </td>
                        </tr>
            </table>
        </td> </tr>
        <tr>
            <td>
                <asp:GridView ID="gvPayList" runat="server" Width="100%" 
                    AutoGenerateColumns="False">
                    <Columns>
                    <asp:BoundField DataField="PL_ID" HeaderText="ID" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center"/>
<asp:BoundField DataField="BankUserName" HeaderText="收款人" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                    <asp:BoundField DataField="BankName" HeaderText="开户银行" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                    <asp:BoundField DataField="BankNumber" HeaderText="银行帐号" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                    
                    <asp:BoundField DataField="payMoney" HeaderText="支付金额" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                    <asp:BoundField DataField="payTime" HeaderText="支付时间"  HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>
                    </Columns>
                </asp:GridView>
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

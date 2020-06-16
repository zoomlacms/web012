<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_ShowPayList, App_Web_qybeg4s3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/calendar.js" language="javascript" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>商户管理</span> &gt;&gt; <span>结算记录</span></div>
    <div class="clearbox">
    </div>
    <div>
    <table width="100%">
        <tr>
            <td>
            <table width="100%">
            <tr>
            <td align="right">开始时间：</td>
            <td><asp:TextBox ID="txtStartTime" onclick="calendar()" runat="server" Width="100px"></asp:TextBox></td>
            <td align="right">结束时间：</td>
            <td><asp:TextBox ID="txtEndTime" runat="server" onclick="calendar()" Width="100px"></asp:TextBox></td>
            <td><asp:Button ID="Button1" runat="server" Text="立即查询" Width="100px" OnClick="Button1_Click" /></td>
            </tr>
            </table>
        </td> </tr>
        <tr>
            <td>
            <asp:GridView ID="gvPayList" runat="server" Width="100%" 
                AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField DataField="B_ID" HeaderText="ID" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="userName" HeaderText="商户名"  HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="BalCount" HeaderText="结算数"  HeaderStyle-Width="7%" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="BalMoney" HeaderText="结算金额" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="BalTime" HeaderText="结算时间"  HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="BalRemark" HeaderText="结算备注"  />
                
                </Columns>
            </asp:GridView>
                </td>
        </tr>
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
    </div>
    </form>
</body>
</html>

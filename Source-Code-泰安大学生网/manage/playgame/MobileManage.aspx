<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_MobileManage, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>编辑在线支付平台</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>游戏管理</span> &gt;&gt; <a href="PayPlatManage.aspx">手机支付平台管理</a>
        &gt;&gt; <span>
            <asp:Label ID="LblAction" runat="server" Text="支付平台管理"></asp:Label>&nbsp;&nbsp;<a
                href="AddMobile.aspx">[添加支付方式]</a></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;
        text-align: center;">
        <tr align="center">
            <td class="spacingtitle" colspan="6">
                <asp:Label ID="LblTitle" runat="server" Text="手机支付平台管理" />
            </td>
        </tr>
        <tr class="tdbgleft" style="height: 25px;">
            <td style="text-align: center; width: 5%">
                ID
            </td>
            <td style="text-align: center; width: 20%">
                通道接口URL
            </td>
            <td style="text-align: center; width: 20%">
                移动通道号码
            </td>
            <td style="text-align: center; width: 20%">
                联通通道号码
            </td>
            <td style="text-align: center; width: 20%">
                小灵通通道号码
            </td>
            <td style="text-align: center; width: 15%">
                相关操作
            </td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr class="tdbg" style="height: 25px;">
                    <td>
                        <%#Eval("MID") %>
                    </td>
                    <td>
                        <%#Eval("LinkUrl")%>
                    </td>
                    <td>
                        <%#Eval("Mact1")%>
                    </td>
                    <td>
                        <%#Eval("Mact2")%>
                    </td>
                    <td>
                        <%#Eval("Mact3")%>
                    </td>
                    <td>
                        <a href="AddMobile.aspx?mid=<%#Eval("MID") %>">修改</a>&nbsp;&nbsp;<a href="MobileManage.aspx?menu=del&mid=<%#Eval("Mid") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" >删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td colspan="6" style="height: 25px;">
                共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

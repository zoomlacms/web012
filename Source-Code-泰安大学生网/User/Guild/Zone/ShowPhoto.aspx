<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_ShowPhoto, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
                <table width="760px" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            
                            <asp:DataList ID="DataList1" runat="server" CellSpacing="5">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="103px" Width="77px" />
                                    <br />
                                    <asp:LinkButton ID="LinkButton1" runat="server">设为封面</asp:LinkButton>
                                    &nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton2" runat="server">修改相片</asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton3" runat="server">删除</asp:LinkButton>
                                </ItemTemplate>
                            </asp:DataList>
                            
                        </td>
                    </tr>
                    <tr>
                     <td align="center">
                        <li style="height: 30px; text-align: center">共<asp:Label ID="Allnum" runat="server"
                            Text=""></asp:Label>&nbsp;
                            <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
                            <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
                            <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
                            <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
                            页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize"
                                runat="server" Text=""></asp:Label>页
                            <asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList
                                ID="DropDownList1" runat="server" AutoPostBack="True">
                            </asp:DropDownList>页</li>
                    </td>
                    </tr>
                </table>
            </div>
    </form>
</body>
</html>
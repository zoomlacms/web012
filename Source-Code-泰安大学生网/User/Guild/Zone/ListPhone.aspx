<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_ListPhone, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>无标题页</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
var x_open_path = ""; //设置图标地址 
</script>
<script type="text/javascript" src="../../../JS/x_open.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div>
    <table style="width: 760px" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                    <td align="right">
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:DataList ID="dltPicList" Width="760px" runat="server" RepeatColumns="5"
                            RepeatDirection="Horizontal" onitemcommand="dltPicList_ItemCommand" 
                            onitemdatabound="dltPicList_ItemDataBound">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td align="center">
                                               <a href='ShowPhone.aspx?id=<%# Eval("ID") %>'>
                                                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%# Eval("PhotoUrl")%>' />
                                                </a>
                                                </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <asp:LinkButton ID="lbEdit" CommandName="edit" runat="server" CommandArgument='<%#Eval("ID") %>'>编辑这张图片</asp:LinkButton>
                                            <asp:LinkButton ID="lbDelete" CommandName="delete" runat="server" CommandArgument='<%#Eval("ID") %>'>删除此图片</asp:LinkButton>
                                            <br />
                                            <asp:LinkButton ID="lbCover" CommandName="PID" runat="server" CommandArgument='<%#Eval("ID") %>'>设为封面</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList></td>
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
                                ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>页</li>
                    </td>
                </tr>
            </table>
            
    </div>
    </form>
</body>
</html>


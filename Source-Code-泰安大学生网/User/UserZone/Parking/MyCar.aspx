<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Parking_MyCar, App_Web_jxmqyiiv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="stylesheet" href="../../css/subModal.css" type="text/css" rev="stylesheet" media="all" />
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
        <div>
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                <tr>
                    <td>
                        <asp:DataList ID="DataList1" Width="100%" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td>
                                            <img src='<%#ResolveUrl(DataBinder.Eval(Container.DataItem,"CarImage").ToString())%>' /></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <input id="RadioButton<%#DataBinder.Eval(Container.DataItem,"Pid").ToString()%>"
                                                type="radio" name="car" value="<%#DataBinder.Eval(Container.DataItem,"Pmid").ToString()%>" /><label
                                                    for="RadioButton<%#DataBinder.Eval(Container.DataItem,"Pid").ToString()%>"><%#DataBinder.Eval(Container.DataItem,"CarName") %></label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList></td>
                </tr>
                <tr>
                    <td align="center">
                        共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
                        <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
                        页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize"
                            runat="server" Text=""></asp:Label>页
                        <asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="Button1" runat="server" Text="确 定" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
</form>
</body>
</html>

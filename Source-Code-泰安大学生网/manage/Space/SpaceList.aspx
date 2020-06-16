<%@ page language="C#" autoeventwireup="true" inherits="manage_Space_SpaceList, App_Web_mvb0v5df" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>空间管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <a href="SpaceList.aspx">空间管理</a>
        &gt;&gt; <span>空间列表</span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td width="5%" align="center" class="title" colspan="2">
                    <span class="tdbgleft">空间ID</span>
                </td>
                <td width="20%" align="center" class="title">
                    <span class="tdbgleft">用户名</span>
                </td>
                <td width="20%" align="center" class="title">
                    <span class="tdbgleft">公会名称</span>
                </td>
                <td width="20%" align="center" class="title">
                    <span class="tdbgleft">加入时间</span>
                </td>
                <td width="15%" align="center" class="title">
                    <span class="tdbgleft">状态</span>
                </td>
                <td width="20%" align="center" class="title">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Carttable" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="center" colspan="2">
                        </td>
                        <td height="24" align="center">
                        </td>
                        <td height="24" align="center">
                        </td>
                        <td height="24" align="center">
                        </td>
                        <td height="24" align="center">
                        </td>
                        <td height="24" align="center">
                        </td>
                        <td align="center">
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td height="24" colspan="7" align="center" class="tdbgleft">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    个空间
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />个空间/页 转到第<asp:DropDownList ID="DropDownList1"
                        runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    页
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>

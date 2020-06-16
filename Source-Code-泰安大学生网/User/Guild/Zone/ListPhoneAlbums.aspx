<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_ListPhoneAlbums, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
	.style1
	{
		width: 9px;
	}
</style>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <table width="100%">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td style="width:150px;">
                        <img src='<%#GetUrl(Eval("CoverPID","{0}")) %>' width="120" height="100"/>
                        </td>
                        <td>
                            <%# Eval("AlbumsName") %><br />
                            更新于:<br />
                            创建于:<%# Eval("AlbumsTime") %><br />
                            <a href="AddPhone.aspx?id=<%# Eval("ID") %>">上传照片</a>  |  
                            <a href="UpdateAlbums.aspx?id=<%# Eval("ID") %>">编辑相册</a>  |
                            <a href="ListPhone.aspx?id=<%# Eval("ID") %>">查看相册</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
    <div>
        <asp:Panel ID="panelpage" runat="server">
            总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
            <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
<asp:Label ID="FirstPage"
                runat="server"></asp:Label>
            <asp:Label ID="RePage" runat="server"></asp:Label>
            <asp:Label ID="NextPage" runat="server"></asp:Label>
            <asp:Label ID="EndPage" runat="server"></asp:Label>
        </asp:Panel>
         
    </div>
    </form>
</body>
</html>
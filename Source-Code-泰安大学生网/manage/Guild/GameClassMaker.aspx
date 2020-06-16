<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_GameClassMaker, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>添加游戏厂商</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>

    <script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>

    <script src="/JS/Common.js" type="text/javascript"></script>

    <script src="/JS/RiQi.js" type="text/javascript"></script>
    <script>
        function GotoWirte(rows) { 
            var mainright = window.top.main_right;
            mainright.frames["main_right_" + parent.nowWindow].document.getElementById("G_Makers").value = rows.innerText;
            parent.Dialog.close();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="1">
        <tr>
            <td colspan="2" class="spacingtitle" align="center">
                选择游戏厂商
            </td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td ondblclick="GotoWirte(this)" align="center" style="cursor:hand">
                       <%#Eval("G_Makers")%>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td>
                共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        个信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" 
                OnTextChanged="txtPage_TextChanged" Width="30px"></asp:TextBox>条信息/页 转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页        
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

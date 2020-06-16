<%@ page language="C#" autoeventwireup="true" inherits="manage_Bull_AddStarterList, App_Web_tab2sdlr" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>添加配伍</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 30%;
            height: 23px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 30%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" cellspacing="1" cellpadding="0">
        <tr class="spacingtitle">
            <td align="center" colspan="4" style="height: 30px;">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr><tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr><tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr><tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td>
                <asp:DropDownList ID="DropDownList6" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td>
                <asp:DropDownList ID="DropDownList7" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td>
                <asp:DropDownList ID="DropDownList8" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="EBtnSubmit" runat="server" Text="添 加" class="C_input" />
                <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

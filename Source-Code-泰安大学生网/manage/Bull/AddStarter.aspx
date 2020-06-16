<%@ page language="C#" autoeventwireup="true" inherits="manage_Bull_AddStarter, App_Web_tab2sdlr" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>添加场景</title>

   <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
     <script type="text/javascript" src="../../js/Drag.js"></script>
    <script type="text/javascript" src="../../js/Dialog.js"></script>

    <script>
        function openwin() {
            var diag = new Dialog();
            diag.Width = 600;
            diag.Height = 300;
            diag.Title = "添加配伍";
            diag.URL = "AddStarterList.aspx";
            diag.show();

        }

    </script>
    <style type="text/css">
        .style1
        {
            width: 37px;
        }
        .style2
        {
            width: 239px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>斗牛场管理</span> &gt;&gt; <span><a href="Starter.aspx">训练食料加工坊</a></span>  [添加食料]</div>
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td align="center" colspan="4" style="height: 30px;">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 390px;">
                食料名称：</td>
            <td colspan="3">
                <asp:TextBox ID="StartName" runat="server" Width="336px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style1">
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
            <td class="style2">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style1">
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr><tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style1">
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr><tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style1">
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr><tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                选择配伍：
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList5" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style1">
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
            <td class="style2">
                <asp:DropDownList ID="DropDownList6" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style1">
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
            <td class="style2">
                <asp:DropDownList ID="DropDownList7" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style1">
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
            <td class="style2">
                <asp:DropDownList ID="DropDownList8" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style1">
                数量：
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="EBtnSubmit" runat="server" Text="保存" class="C_input" />
                <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" />
            </td>
        </tr>
    </table>
    <br />
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="manage_Bull_LandManage, App_Web_tab2sdlr" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>草地管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>斗牛场管理</span> &gt;&gt; <span><a href="RankMange.aspx">
            草地管理</a></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td align="center" colspan="2" style="height: 30px;">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 30%;">
                草地No.1需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No1" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 30%;">
                草地No.2需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No2" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.3需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No3" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.4需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No4" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.5需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No5" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.6需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No6" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.7需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No7" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.8需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No8" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.9需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No9" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.10需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No10" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.11需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No11" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.12需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No12" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.13需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No13" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.14需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No14" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.15需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No15" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.16需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No16" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.17需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No17" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                草地No.18需要等级数：
            </td>
            <td>
                <asp:TextBox ID="No18" runat="server" Width="100px" class="l_input" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="EBtnSubmit" runat="server" Text="保存" class="C_input" 
                    onclick="EBtnSubmit_Click" />
                <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" />
            </td>
        </tr>
    </table>
    <br />
    </form>
</body>
</html>

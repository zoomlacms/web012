<%@ page language="C#" autoeventwireup="true" inherits="manage_Space_SpaceConfig, App_Web_mvb0v5df" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>管理配置</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>空间管理</span> &gt;&gt;
        <span>管理配置</span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px" align="right">
                允许注册空间：
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">是</asp:ListItem>
                    <asp:ListItem>否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;" align="right">
                注册空间需要审核：
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">是</asp:ListItem>
                    <asp:ListItem>否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px" align="right">
                允许修改资料：
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">是</asp:ListItem>
                    <asp:ListItem>否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px" align="right">
                发布日志获得经验：
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="85px" class="l_input">1</asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;" align="right">
                发布日志获得金币：
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="86px" class="l_input">1</asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px" align="right">
                启用二级域名：
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">是</asp:ListItem>
                    <asp:ListItem>否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px" align="right">
                二级域名：
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="245px" class="l_input"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px" align="right">
                同一Email只能注册一个空间：
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">是</asp:ListItem>
                    <asp:ListItem>否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px" align="right">
                开启空间装扮：
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">是</asp:ListItem>
                    <asp:ListItem>否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;" align="right">
                空间默认编辑器：
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True">简单输入框</asp:ListItem>
                    <asp:ListItem>简单编辑器</asp:ListItem>
                    <asp:ListItem>富编辑器</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;" align="right">
                允许上传文件：
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">是</asp:ListItem>
                    <asp:ListItem>否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
    </table>
    <br />
    <input type="submit" name="Button1" value="保存设置" id="Button1" class="C_input"/><br />
    </form>
</body>
</html>

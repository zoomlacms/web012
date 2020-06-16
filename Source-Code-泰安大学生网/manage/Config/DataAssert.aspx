<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_DataAssert_, App_Web_lyzefjl3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>数据维护</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <span>后台管理</span>&gt;&gt;<span>系统配置</span> &gt;&gt;<span>网站参数配置</span>
</div>
<div class="clearbox">
</div>
    <div>
        <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
            <tr>
                <td class="spacingtitle" colspan="2" align="center">
                    数据维护
                </td>
            </tr>
        </table>
        <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 200px">
                    <strong>请选择数据库：</strong>
                </td>
                <td>
                    <asp:DropDownList ID="DatabaseList" runat="server" Width="200px"  class="l_input" AutoPostBack="True" OnSelectedIndexChanged="TableDownList_SelectedIndexChanged" />
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 200px;">
                    <strong>主表：</strong>
                </td>
                <td style="height: 22px">
                    <asp:DropDownList ID="DbTableDownList" runat="server" Width="200px" class="l_input" AutoPostBack="True" OnSelectedIndexChanged="DBTableDownList_SelectedIndexChanged"/>
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 200;">
                    <strong>输出字段：</strong>
                </td>
                <td>
                    <asp:ListBox ID="DbFieldDownList" runat="server" Height="220px" Width="200px" class="l_input" SelectionMode="Multiple" />
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 200;">
                    <strong>将被替换内容：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" class="l_input"></asp:TextBox>                    
                </td>
            </tr>
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 200;">
                  <strong> 替换后的内容：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" class="l_input"></asp:TextBox>                    
                </td>
            </tr>
             <tr class="tdbg">
                <td class="tdbgleft" style="width: 200;" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="批量替换" class="C_input"  onclick="Button1_Click"/>
                    <asp:Button ID="Button2" runat="server" Text="取消" class="C_input"  onclick="Button2_Click"/>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
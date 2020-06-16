<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_IntegratedSet, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>整合设置</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>设置</span> &gt;&gt; <span>整合设置</span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="Div0" class="tabtitle">
                    <a href="BasicSettings.aspx">普通配置</a>
                </td>
                <td id="Div1" class="tabtitle">
                    <a href="HomeShow.aspx">首页显示</a>
                </td>
                <td id="Div2" class="tabtitle">
                    <a href="Register.aspx">用户注册</a>
                </td>
                <td id="Div3" class="tabtitle">
                    <a href="ForumSettings.aspx">论坛设置</a>
                </td>
                <td id="Div4" class="tabtitle">
                    <a href="UploadSetting.aspx">上传设置</a>
                </td>
                <td id="Div5" class="tabtitle">
                    <a href="MailSettings.aspx ">邮件设置</a>
                </td>
                <td id="Div6" class="tabtitle">
                    <a href="FilterSet.aspx">过滤设置</a>
                </td>
                <td id="Div7" class="tabtitle">
                    <a href="Code.aspx">验证码</a>
                </td>
                <td id="Div8" class="tabtitle">
                    <a href="MoneyExperienc.aspx">金钱与经验</a>
                </td>
                <td id="Div9" class="titlemouseover">
                    <a href="IntegratedSet.aspx">整合设置</a>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>启用整合：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="0" Selected="True">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>安全密钥：</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" class="l_input"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>接口文件地址（请用“|”分隔） ：</strong>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" class="l_input"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table border="0" width="100%" align="center">
        <tr>
            <td align="left" height="20">
                <asp:Button ID="Button2" runat="server" Text="保存设置" class="C_input" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

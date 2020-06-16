<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_MoneyExperienc, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>金钱与经验</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>设置</span> &gt;&gt; <span>金钱与经验</span>
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
                <td id="Div8" class="titlemouseover">
                    <a href="MoneyExperienc.aspx">金钱与经验</a>
                </td>
                <td id="Div9" class="tabtitle" onclick="ShowTabs(9)">
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
                <strong><b>发主题帖</b>：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtHairTheme" runat="server" class="l_input">+2</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator3" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtHairTheme" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>回帖：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtReply" runat="server" class="l_input">+1</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtReply" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>加精华：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtAddedEssence" runat="server" class="l_input">+3</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtAddedEssence" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>主题帖被删除：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtThemeDel" runat="server" class="l_input">-2</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator4" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtThemeDel" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>回帖被删除：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtReplyDel" runat="server" class="l_input">-1</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator6" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtReplyDel" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>精华被取消：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtEssenceCancel" runat="server" class="l_input">-3</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator5" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtEssenceCancel" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
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

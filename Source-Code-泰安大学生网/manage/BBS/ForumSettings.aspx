<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_ForumSettings, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>论坛设置</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>设置</span> &gt;&gt; <span>论坛设置</span>
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
                <td id="Div3" class="titlemouseover">
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
                <td id="Div9" class="tabtitle">
                    <a href="IntegratedSet.aspx">整合设置</a>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px">
                <b>基本发帖设置</b>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>启用公开论坛的 RSS 订阅源：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="EnableRSS" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>启用主题状态跟踪：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="OpeningTheme" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>允许帖子含有标签：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="AllowTags" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>鼠标移过弹出帖子内容：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="MouseContent" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>默认查看帖子的模式：</b></strong>
            </td>
            <td>
                <asp:DropDownList ID="DefaultMode" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>简洁</asp:ListItem>
                    <asp:ListItem>完整</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong><b>默认RSS源主题数：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtDefaultThemeRSS" runat="server" Width="210px" class="l_input">20</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator3" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtDefaultThemeRSS" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong><b>主题/页码：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtThemePage" runat="server" Width="210px" class="l_input">20</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtThemePage" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong><b>帖子/页码：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtPostPage" runat="server" Width="210px" class="l_input">15</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtPostPage" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong><b>投票选项最少：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtMinOption" runat="server" Width="210px" class="l_input">2</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator4" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtMinOption" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong><b>投票选项最大：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtMaxOption" runat="server" Width="210px" class="l_input">20</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator5" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtMaxOption" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>显示正在浏览版块的用户：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="DisplayBrowsingUsers" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>显示正在浏览主题的用户：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="DisplayBrowsingTop" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px;">
                <strong><b>编辑帖子</b></strong>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong><b>显示修改原因：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="DisplayModification" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong><b>要求修改原因：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="ForReasons" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>发帖后多长时间内能编辑帖子（分钟）：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtTimeEdit" runat="server" Width="210px" class="l_input">0</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator6" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtTimeEdit" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px">
                <strong><b>水帖控制</b></strong>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>允许重复帖子：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="AllowRepeatPost" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>每次发帖间隔（秒）：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtIntervalTime" runat="server" Width="210px" class="l_input">10</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator7" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtIntervalTime" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>注册后多长时间才能发表帖子（分钟）：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtTimeRegister" runat="server" Width="210px" class="l_input">0</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator8" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtTimeRegister" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px">
                <strong><b>热门帖标准</b></strong>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong>热门帖子的回复数：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtReplyHot" runat="server" Width="210px" class="l_input">15</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator9" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtReplyHot" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong>热门帖子的浏览数：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtNumberHot" runat="server" Width="210px" class="l_input">200</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator10"
                    ValidationExpression="^[1-9]\d*|0$" ControlToValidate="TxtNumberHot" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong>热帖时限 (天)：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtReTieLimit" runat="server" Width="210px" class="l_input">3</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator11"
                    ValidationExpression="^[1-9]\d*|0$" ControlToValidate="TxtReTieLimit" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
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

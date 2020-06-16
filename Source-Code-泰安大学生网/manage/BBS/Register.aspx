<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_Register, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>用户注册</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>设置</span> &gt;&gt; <span>用户注册</span>
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
                <td id="Div2" class="titlemouseover">
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
                <b>新注册设置</b>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>允许登录：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="AllowLogin" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>允许被禁用帐号的用户登录：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="AllowUserLogin" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>允许新用户注册：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="NewUserRegistrat" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>新用户信任等级：</b></strong>
            </td>
            <td>
                <asp:DropDownList ID="NewUserLevel" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>信任用户</asp:ListItem>
                    <asp:ListItem>非信任用户</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong><b>用户名最小长度：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtUserNameMin" runat="server" Width="210px" class="l_input">3</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="rev_2" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtUserNameMin" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px; height: 23px;">
                <strong><b>用户名最大长度：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtUserNameMax" runat="server" Width="210px" class="l_input">15</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtUserNameMax" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>帐号激活方式：</b></strong>
            </td>
            <td>
                <asp:DropDownList ID="AccountActivated" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">自动</asp:ListItem>
                    <asp:ListItem Value="1">Email</asp:ListItem>
                    <asp:ListItem Value="2">仅邀请码</asp:ListItem>
                    <asp:ListItem Value="3">管理员审批</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>默认密码加密算法：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="DefaultPassword" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">MD5</asp:ListItem>
                    <asp:ListItem>SHA1 </asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px; height: 23px;">
                <strong><b>全局用户资料设置</b></strong>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px; height: 23px;">
                <strong><b>启用个性签名：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="EnableSignature" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>个性签名最大长度 （字节）：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtIndividualityMax" runat="server" Width="210px" class="l_input">256</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator15"
                    ValidationExpression="^[1-9]\d*|0$" ControlToValidate="TxtIndividualityMax" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>用户短信息的最大容量（条）：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtMaxCapacity" runat="server" Width="210px" class="l_input">100</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtMaxCapacity" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>允许显示用户性别：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="UsersGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>允许帖子中显示头像：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="DisplayPortraits" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>允许帖子中显示个性签名：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="DisplayCharacter" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>允许用户选择页面主题：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="UserSelectPage" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>浏览用户资料需要登录：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="BrowseUserData" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px">
                <strong><b>用户列表设置</b></strong>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>显示用户列表：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="UserList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>允许用户使用高级搜索选项：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="UsersSearch" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>每页显示的用户：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtPageShowUser" runat="server" Width="210px" class="l_input">20</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator3" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtPageShowUser" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px">
                <strong><b>全局用户头像设置</b></strong>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>启用头像：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="EnableHead" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>允许远端头像：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="AllowLike" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px; height: 68px;">
                <strong>头像尺寸：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtHeadSize" runat="server" Height="17px" Width="35px" class="l_input">150</asp:TextBox>X
                <asp:TextBox ID="TxtHeadSize1" runat="server" Height="17px" Width="32px" class="l_input">150</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator4" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtHeadSize" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator5" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtHeadSize1" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px">
                <strong><b>声望设置</b></strong>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>启用声望：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="EnablePopularity" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>默认声望：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtDefaultFame" runat="server" class="l_input">0</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator6" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtDefaultFame" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>显示的声望评价数：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtDisplayPrestige" runat="server" class="l_input">5</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator7" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtDisplayPrestige" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>最少发帖数：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtLeastPost" runat="server" class="l_input">50</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator8" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtLeastPost" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>最小声望值：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtMinvalue" runat="server" class="l_input">0</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator9" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtMinvalue" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>每日声望评价次数限制：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtDailyPrestige" runat="server" class="l_input">10</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator10"
                    ValidationExpression="^[1-9]\d*|0$" ControlToValidate="TxtDailyPrestige" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>用户声望范围：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtUsersRreputation" runat="server" class="l_input">20</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator11"
                    ValidationExpression="^[1-9]\d*|0$" ControlToValidate="TxtUsersRreputation" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>管理员（超级版主）声望力：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtAdministratorPrestige" runat="server" class="l_input">10</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator12"
                    ValidationExpression="^[1-9]\d*|0$" ControlToValidate="TxtAdministratorPrestige"
                    ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>进监狱的声望值：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtPrisonReputation" runat="server" class="l_input">-9</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator13"
                    ValidationExpression="^[1-9]\d*|0$" ControlToValidate="TxtPrisonReputation" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px">
                <strong><b>头衔设置</b></strong>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>允许用户自定义头衔：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="UsersDefine" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>用户自定义头衔的最大长度：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtUserMaxLength" runat="server" class="l_input">25</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator14"
                    ValidationExpression="^[1-9]\d*|0$" ControlToValidate="TxtUserMaxLength" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>自定义头衔中要屏蔽的词语：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtShieldWord" runat="server" class="l_input">admin|forum|moderator</asp:TextBox>
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

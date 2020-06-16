<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_AdminSetup, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>基本设置</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript">
var tID = 0;
var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7", "TabTitle8", "TabTitle9");
var arrTabs = new Array("Div0", "Div1", "Div2", "Div3", "Div4", "Div5", "Div6", "Div7", "Div8", "Div9");
function ShowTabs(ID) {
    location.href = 'BasicSettings.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&id=' + ID + '&type=' + ID;
}
function pload() {
    var ID = '<%=Request.QueryString["id"]%>';
    if (ID != tID) {
        document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
        document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
        tID = ID;
    }
    try {
             parent.document.getElementById("main_right").height = document.body.offsetHeight;
         } catch (Error)
         { }
}
function chechs() {}
</script>
</head>
<body onload="pload()">
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>设置</span> &gt;&gt; <span>基本设置</span>
    </div>
    <div class="clearbox"></div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="Div0" class="titlemouseover"><a href="BasicSettings.aspx">普通配置</a></td>
                <td id="Div1" class="tabtitle"><a href="HomeShow.aspx">首页显示</a></td>
                <td id="Div2" class="tabtitle"><a href="Register.aspx">用户注册</a></td>
                <td id="Div3" class="tabtitle"><a href="ForumSettings.aspx">论坛设置</a></td>
                <td id="Div4" class="tabtitle"><a href=" UploadSetting.aspx">上传设置</a></td>
                <td id="Div5" class="tabtitle"><a href="MailSettings.aspx ">邮件设置</a></td>
                <td id="Div6" class="tabtitle"><a href="FilterSet.aspx">过滤设置</a></td>
                <td id="Div7" class="tabtitle"><a href="Code.aspx">验证码</a></td>
                <td id="Div8" class="tabtitle"><a href=" MoneyExperienc.aspx">金钱与经验</a></td>
                <td id="Div9" class="tabtitle"><a href="IntegratedSet.aspx">整合设置</a></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><b title="BBS Forum Server">论坛名称：</b></td>
            <td><asp:TextBox ID="TextBox1" runat="server" Width="210px" class="l_input">BBS Forum Server</asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" title="http://localhost">
            <td class="tdbgleft" style="width: 200px"><strong>论坛网址：</strong></td>
            <td><asp:TextBox ID="TextBox2" runat="server" Width="210px" class="l_input">http://localhost</asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><strong><b>管理员电子邮件地址</b>：</strong></td>
            <td><asp:TextBox ID="TextBox3" runat="server" Width="210px" class="l_input">webmaster@localhost</asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;"><strong><b>公司/组织名称</b>：</strong></td>
            <td><asp:TextBox ID="TextBox4" runat="server" Width="210px" class="l_input">逐浪</asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px; height: 23px;"><strong><b>公司/组织网址</b>：</strong></td>
            <td><asp:TextBox ID="TextBox5" runat="server" Width="210px" class="l_input">http://www.bbs.com</asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><strong><b>META标签-描述信息</b>：</strong></td>
            <td><asp:TextBox ID="TextBox6" runat="server" Width="210px" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><strong><b>META标签-关键字</b>：</strong></td>
            <td><asp:TextBox ID="TextBox7" runat="server" Width="210px" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px; height: 23px;"><strong><b>统计用户在线时间（分钟）</b>：</strong></td>
            <td>
                <asp:TextBox ID="UserOnlineTime" runat="server" Width="210px" class="l_input">20</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator3" ValidationExpression="^[1-9]\d*|0$" ControlToValidate="UserOnlineTime" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><strong><b>脚本超时时间（秒）</b>：</strong></td>
            <td>
                <asp:TextBox ID="ScriptOverTime" runat="server" Width="210px" class="l_input">60</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ValidationExpression="^[1-9]\d*|0$"  ControlToValidate="ScriptOverTime" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><strong><b>风格设置</b>：</strong></td>
            <td>
                <asp:DropDownList ID="ThemeSet" runat="server">
                    <asp:ListItem>默认风格</asp:ListItem>
                    <asp:ListItem>灰石风格</asp:ListItem>
                    <asp:ListItem>清淡风格</asp:ListItem>
                    <asp:ListItem>淡蓝风格</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><strong><b>站点缓存名称</b>：</strong></td>
            <td><asp:TextBox ID="SiteCache" runat="server" Width="210px" class="l_input">BBS</asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><strong><b>缓存更新间隔（分钟）</b>：</strong></td>
            <td>
                <asp:TextBox ID="CacheUpdate" runat="server" Width="210px" class="l_input">5</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" ValidationExpression="^[1-9]\d*|0$"  ControlToValidate="CacheUpdate" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><strong><b>Cookies 保存路径</b>：</strong></td>
            <td>
                <asp:DropDownList ID="CookiesPath" runat="server">
                    <asp:ListItem>\</asp:ListItem>
                    <asp:ListItem>\</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><strong><b>Cookies 域名</b>：</strong></td>
            <td><asp:TextBox ID="CookiesDomain" runat="server" Width="210px" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><strong>论坛状态：</strong></td>
            <td>
                <asp:RadioButtonList ID="ForumState" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">关闭</asp:ListItem>
                    <asp:ListItem>打开</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px"><strong>论坛关闭的原因：</strong></td>
            <td title="论坛维护中，暂时无法访问！"><asp:TextBox ID="BBSClosed" runat="server" Width="210px" class="l_input">论坛维护中，暂时无法访问！</asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;"><strong>添加“No-cache”HTTP 头信息：</strong></td>
            <td>
                <asp:RadioButtonList ID="AddHttp" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">是</asp:ListItem>
                    <asp:ListItem>否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
    </table>
    <table border="0" width="100%" align="center">
        <tr>
            <td align="left" height="20"><asp:Button ID="Button2" runat="server" Text="保存设置" OnClick="Button2_Click" class="C_input" /></td>
        </tr>
    </table>
    </form>
</body>
</html>

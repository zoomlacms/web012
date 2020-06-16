<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_SearchUser, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>搜索用户</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script src="/JS/RiQi.js" type="text/javascript"></script>

    <script src="/JS/calendar.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>成员</span> &gt;&gt; <span>
            搜索用户</span>
    </div>
    <table width="100%" cellspacing="1" cellpadding="1">
        <tr>
            <td align="center">
                用户资料：<b><font color="red">1</font></b> 条
            </td>
        </tr>
    </table>
    <table width="100%" cellspacing="1" cellpadding="0" class="border" border="0">
        <tr class="spacingtitle">
            <td align="center">
                用户搜索
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td>
                <asp:TextBox ID="TxtSearch" runat="server" class="l_input"></asp:TextBox>
                <asp:Button ID="butSearch" runat="server" Text="搜  索 " PostBackUrl="~/manage/BBS/AdminUser.aspx?type=seach"
                    class="C_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td>
                <b>根据排序：</b>
                <asp:DropDownList ID="dropName" runat="server">
                    <asp:ListItem Value="0" Selected="True">-请选择-</asp:ListItem>
                    <asp:ListItem Value="1">用户名</asp:ListItem>
                    <asp:ListItem Value="2">电子邮件</asp:ListItem>
                    <asp:ListItem Value="3">帖子数</asp:ListItem>
                    <asp:ListItem Value="4">注册日期</asp:ListItem>
                    <asp:ListItem Value="5">最后活动日期</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="dropsort" runat="server">
                    <asp:ListItem Value="0" Selected="True">-请选择-</asp:ListItem>
                    <asp:ListItem Value="1">倒序</asp:ListItem>
                    <asp:ListItem Value="2">顺序</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg">
            <td class="spacingtitle">
                <b>日期过滤：</b>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td>
                注册时间：&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="dropbegintime" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dropbegintime_SelectedIndexChanged">
                    <asp:ListItem Value="0" Selected="True">--请选择--</asp:ListItem>
                    <asp:ListItem Value="1">在此之前</asp:ListItem>
                    <asp:ListItem Value="2">在此之时</asp:ListItem>
                    <asp:ListItem Value="3">在此之后</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False" onclick="calendar();parent.document.getElementById('main_right').height = document.body.offsetHeight+400;"></asp:TextBox>
                <br />
                最后活动时间：
                <asp:DropDownList ID="droplasttime" runat="server" OnSelectedIndexChanged="droplasttime_SelectedIndexChanged"
                    AutoPostBack="true">
                    <asp:ListItem Value="0" Selected="True">--请选择--</asp:ListItem>
                    <asp:ListItem Value="1">在此之前</asp:ListItem>
                    <asp:ListItem Value="2">在此之时</asp:ListItem>
                    <asp:ListItem Value="3">在此之后</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False" onclick="calendar();parent.document.getElementById('main_right').height = document.body.offsetHeight+400;"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg">
            <td>
                <b>过 滤：</b>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td>
                角色：
                <asp:DropDownList ID="droprank" runat="server">
                    <asp:ListItem>所有用户</asp:ListItem>
                    <asp:ListItem>管理员</asp:ListItem>
                    <asp:ListItem>超级版主</asp:ListItem>
                    <asp:ListItem>注册会员</asp:ListItem>
                </asp:DropDownList>
                搜索范围：
                <asp:DropDownList ID="dropusername" runat="server">
                    <asp:ListItem Value="0" Selected="True">用户名包含有</asp:ListItem>
                    <asp:ListItem Value="1">邮箱包含有</asp:ListItem>
                    <asp:ListItem Value="2">用户名或邮箱包含有</asp:ListItem>
                </asp:DropDownList>
                状态：
                <asp:DropDownList ID="dropstate" runat="server">
                    <asp:ListItem Value="0" Selected="True">所有状态</asp:ListItem>
                    <asp:ListItem Value="1">正等待审核</asp:ListItem>
                    <asp:ListItem Value="2">已通过审核</asp:ListItem>
                    <asp:ListItem Value="3">已禁用</asp:ListItem>
                    <asp:ListItem Value="4">未通过审核</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="spacingtitle"><td>  <b>快捷方式：</b></td></tr>
        <tr class="tdbg">
            <td>
                &nbsp;&nbsp;&nbsp; <a href="AdminUser.aspx?types=post">发帖排行</a><br />
                &nbsp;&nbsp;&nbsp; <a href="AdminUser.aspx?types=activity">过去 24 小时内活动的用户</a><br />
                &nbsp;&nbsp;&nbsp; <a href="AdminUser.aspx?types=register">过去 24 小时内注册的用户</a><br />
                &nbsp;&nbsp;&nbsp; <a href="AdminUser.aspx?types=state">等待审核的用户</a>
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <table cellspacing="0" cellpadding="1" width="100%" border="0">
        <tr>
            <td align="right">
                <asp:Button ID="Button1" runat="server" Text="<<返回" class="C_input" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="前进>>" class="C_input" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

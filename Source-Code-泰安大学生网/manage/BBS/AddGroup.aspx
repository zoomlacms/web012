<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_AddGroup, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>新建/编辑论坛组</title>
    
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="/js/Console.js"></script>
    <script type="text/javascript" src="/js/Drag.js"></script>
    <script type="text/javascript" src="/js/Dialog.js"></script>
    <script language="javascript">
        function Openwin() {
            var diag = new Dialog();
            diag.Modal = false;
            diag.Title = "浏览公会";
            diag.URL = "SelectGuild.aspx";
            diag.show();
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>论 坛</span> &gt;&gt; <span>论 坛 组</span> &gt;&gt; <span>
                <asp:Literal ID="LNav" runat="server" Text="新建/编辑论坛组"></asp:Literal></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td align="center" colspan="2" style="height: 30px;"><asp:Label ID="lblText" runat="server"></asp:Label></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" style="width: 390px;">
                <b>名称</b><br />论坛组名称
            </td>
            <td><asp:TextBox ID="TxtGroupName" runat="server" Width="336px" class="l_input" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" style="width: 390px;"><b>排序</b><br />从小到大排序设置，为“0”则隐藏此论坛组</td>
            <td>
                <asp:TextBox ID="TxtSortOrder" runat="server" Width="336px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 390px;"><b>论坛横排</b><br />设置论坛组下的所有论坛横排时每行版块数量，如果设置为 0，则按正常方式排列</td>
            <td><asp:TextBox ID="TxtForumColumns" runat="server" Width="336px" class="l_input" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 390px;"><b>论坛组版主</b><br />用于管理论坛组下的所有论坛。多版主添加请用“|”分隔，如：tudou|土豆</td>
            <td><asp:TextBox ID="TxtModerated" runat="server" Width="336px" class="l_input" /></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td style="width: 390px;">
        <b>所属公会</b><br />设置该论坛组的所属公会,输入该公会的名称
        </td>
        <td><asp:TextBox ID="txtGuildID" runat="server"  Width="336px" class="l_input"></asp:TextBox>&nbsp;<a href="javascript:void(0);" onclick="Openwin();">浏览公会</a></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" style="width: 390px;"><b>论坛组描述</b><br />简单描述一下此论坛组</td>
            <td><asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine" Height="75px" Width="335px" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" style="width: 390px;"><b>公会论坛组风格</b><br />论坛风格，如：默认风格|</td>
            <td><asp:TextBox ID="txtCss" runat="server" Width="336px" class="l_input" /></td>
        </tr>
        <%--<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" style="width: 390px;"><b>公会论坛组状态</b><br />论坛状态（关闭/打开）。</td>
            <td>
                <asp:RadioButtonList ID="rbtnState" runat="server" RepeatColumns="2">
                <asp:ListItem Value="0">关闭</asp:ListItem>
                <asp:ListItem Value="1">打开</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>--%>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="EBtnSubmit" runat="server" Text="保存" OnClick="EBtnSubmit_Click" class="C_input" />
                <asp:HiddenField ID="HdnGroupID" runat="server" />
                <asp:Button ID="Button1" runat="server" Text="返 回" OnClick="Button1_Click" class="C_input" />
            </td>
        </tr>
    </table><br />
    <asp:HiddenField ID="HiddenField1" runat="server" />
    </form>
</body>
</html>

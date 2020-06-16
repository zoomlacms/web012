<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_ViewSpaceLog, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>查看日志</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>&gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span><a href="SpaceLogManage.aspx">
            空间日志管理</a></span> &gt;&gt; 空间日志详情
    </div>
    <div class="clearbox">
    </div>
    <table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
        <tr>
            <td class="spacingtitle" colspan="2" style="height: 26px; text-align: center">
                空间日志详情
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>空间日志序号：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="LitLid" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>用户名：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="LitUserName" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>空间日志类型：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="LitLogType" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>日志标题：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="LitLTitle" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>日志内容：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="LitLcontent" runat="server"></asp:Literal>
            </td>
        </tr>
        </table>
         <div style="text-align:center; margin-top:5px;">
        <input id="Button1" type="button" value="返 回" onclick="javascript:window.location.href='SpaceLogManage.aspx'" class="C_input"/></div>                    
    </form>
</body>
</html>

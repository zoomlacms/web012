<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_ViewVote, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>查看投票详情</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>&gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span><a href='GHManage.aspx'>公会列表</a></span> &gt;&gt; <span><a href="VoteManage.aspx">
            投票管理</a></span> &gt;&gt; 查看投票详情
    </div>
    <table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
        <tr>
            <td class="spacingtitle" colspan="2" style="height: 26px; text-align: center">
                查看投票详情
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>投票序号：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="LitLid" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>公会名称：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="LitGName" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>投票名称：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="LitName" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>投票设置：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="Litvoption" runat="server"></asp:Literal>
            </td>
        </tr>
           <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>创建时间：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="LitCreateTime" runat="server"></asp:Literal>
            </td>
        </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>结束时间：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="LitExpiredTime" runat="server"></asp:Literal>
            </td>
        </tr>
        </table>
         <table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="spacingtitle" colspan="2" style="height: 26px; text-align: center">
                查看投票结果
            </td>
        </tr>
        <tr>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </tr>
        </table>
          <div style="text-align:center; margin-top:5px;">
              <asp:Button ID="btnBack" runat="server" Text="返 回" onclick="btnBack_Click" class="C_input"/>
        </div>   
    </form>
</body>
</html>

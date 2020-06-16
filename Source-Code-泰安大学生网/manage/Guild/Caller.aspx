<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_Caller, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>公会访客管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>游戏管理</span> &gt;&gt;<span><a href="GHManage.aspx">公会管理</a></span> &gt;&gt;
      <span>  公会访客管理</span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tbody>
            <tr class="gridtitle" align="center" style="height: 25px;">
                <td width="5%" style="height: 25px">
                    <strong>ID</strong>
                </td>
                <td width="10%" style="height: 25px">
                    <strong>标题</strong>
                </td>
                <td width="10%" style="height: 25px">
                    <strong>操作</strong>
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr>
                        <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td>
                                <strong>
                                    <%# Eval("Lid")%></strong>
                            </td>
                            <td>
                                <strong>
                                    <%# Eval("LogTitle")%></strong>
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("Lid") %>'
                                    OnClientClick="return confirm('确实要删除此公会访客信息吗？');">删除</asp:LinkButton>
                                 
                            </td>
                        </tr>
                </ItemTemplate>
            </asp:Repeater>
            </tbody>
            </table>
    </form>
</body>
</html>

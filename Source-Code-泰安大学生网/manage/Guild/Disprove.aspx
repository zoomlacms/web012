<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_Disprove, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>举报管理</title>
    
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
        <span>举报管理</span> 【<a href="DispTypeManage.aspx" style="color: Red">举报类型管理</a>】</div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tbody>
            <tr class="gridtitle" align="center" style="height: 26px;">
                <td width="5%">
                    <strong>ID</strong>
                </td>
                <td width="40%">
                    <strong>文章标题</strong>
                </td>
                <td width="20%">
                    <strong>举报类型</strong>
                </td>
                <td width="20%">
                    <strong>操作</strong>
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" style="height: 26px;" align="center" onmouseover="this.className='tdbgmouseover'"
                        onmouseout="this.className='tdbg'">
                        <td>
                            <strong>
                                <%# Eval("FeedbackId")%></strong>
                        </td>
                        <td>
                            <strong>
                                <%# Eval("ArticleTitle")%></strong>
                        </td>
                        <td>
                            <strong>
                                <%# Eval("FeedbackType")%></strong>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="View" CommandArgument='<%# Eval("FeedbackId") %>'>查看</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("FeedbackId") %>'>修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("FeedbackId") %>'
                                OnClientClick="return confirm('确实要删除此举报信息吗？');">删除</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr style="height: 26px;" align="center" class="tdbg">
                <td colspan="4">
                    <asp:Panel ID="panelpage" runat="server">
                        总共
                        <asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:
                        <asp:Label ID="CurrentPage" runat="server"></asp:Label>&nbsp; 共
                        <asp:Label ID="PageCount" runat="server"></asp:Label>页
                        <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
                        <asp:Label ID="FirstPage" runat="server"></asp:Label>
                        <asp:Label ID="RePage" runat="server"></asp:Label>
                        <asp:Label ID="NextPage" runat="server"></asp:Label>
                        <asp:Label ID="EndPage" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>

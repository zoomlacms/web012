<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_SpaceLogManage, App_Web_mvb0v5df" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>

<script src="/JS/calendar.js" type="text/javascript"></script>

<head runat="server">
    <title>公会管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
        <span>日志管理</span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
            <tr class="gridtitle" align="center" height="26px">
                <td width="10%">
                    选择
                </td>
                <td width="35%">
                    日志标题
                </td>
                <td width="10%">
                    日志类型
                </td>
                <td width="15%">
                    用户名
                </td>
                <td width="15%">
                    创建时间
                </td>
                <td width="15%">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr align="center" class="tdbg" style="height: 27px;">
                        <td>
                            <asp:CheckBox ID="itme" runat="server" />
                            <asp:Label ID="lblHide" runat="server" Text='<%#Eval("Lid") %>'></asp:Label>
                        </td>
                        <td align="left">
                            <%#Eval("LTitle")%>
                        </td>
                        <td>
                            <%#Eval("LogType")%>
                        </td>
                        <td>
                            <%# GetUserName(Eval("UserID","{0}"))%>
                        </td>
                        <td>
                            <%#Eval("Addtime")%>
                        </td>
                        <td>
                            &nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="view" CommandArgument='<%#Eval("Lid") %>'>查看</asp:LinkButton>&nbsp;
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="del" CommandArgument='<%#Eval("Lid") %>'
                                OnClientClick="return confirm('确实要删除此日志信息吗？');">删除</asp:LinkButton>&nbsp;
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr align="center" style="height: 38px;">
                <td colspan="6">
                    <asp:Panel ID="panelpage" runat="server">
                        总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                            runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                        <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;<asp:Label ID="FirstPage"
                            runat="server"></asp:Label>
                        <asp:Label ID="RePage" runat="server"></asp:Label>
                        <asp:Label ID="NextPage" runat="server"></asp:Label>
                        <asp:Label ID="EndPage" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <div class="clearbox">
        </div>
        <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged"
            AutoPostBack="true" />
        全选
        <asp:Button ID="Button1" runat="server" Text="批量删除" OnClick="Button1_Click" class="C_input" />&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_GHManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script src="/JS/calendar.js" type="text/javascript"></script>

<head runat="server">
<title>公会管理</title>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>  &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span><%=ghlink %> &gt;&gt; <span><%=ghname %>公会列表</span>&nbsp;&nbsp;&nbsp;
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        
            <tr class="gridtitle" align="center" height="26px">
            
                <td width="6%">
                    选择
                </td>
                <td width="15%">
                    公会名称
                </td>
                <td width="15%">
                    公会等级
                </td>
                <td width="15%">
                    公会会长
                </td>
                <td width="15%">
                    风格
                </td>
                <td width="10%">
                    状态
                </td>
                <td width="35%">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr align="center" class="tdbg" style="height:26px;" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
                        <td>
                            <asp:CheckBox ID="item" runat="server" /><asp:Label ID="LabelHiddenID" runat="server" Text='<%#Eval("Gid")%>'></asp:Label>
                        </td>
                        <td>
                            <a href='javascript:void(0)' onclick="window.open('/Guild/Default.aspx?ID=<%#Eval("Gid") %>')"><%#Eval("Gname")%></a>
                        </td>
                        <td>
                            <%#Eval("Glevel") %>
                        </td>
                        <td>
                            <%#GetUserName(Eval("GCreateUserID","{0}"))%>
                        </td>
                        <td>
                            <%#Eval("Skins") %>
                        </td>
                        <td>
                            <%# GetIsAuiter(Eval("GCheck", "{0}"))%>
                        </td>
                        <td>
                     <%--<asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("Gid") %>' CommandName="Edit">修改</asp:LinkButton>&nbsp;|&nbsp;--%>
                        <a href='GameRegisterManage.aspx?ID=<%#Eval("Gid") %>&pid=<%#ID %>'>签到管理</a>&nbsp;|&nbsp;<a href='VoteManage.aspx?ID=<%#Eval("Gid") %>'>会议室管理</a>&nbsp;|&nbsp;<a href='GHUserManage.aspx?ID=<%#Eval("Gid") %>'>成员管理</a>&nbsp;|&nbsp;<a href=''>论坛管理</a>&nbsp;|&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("Gid") %>' CommandName="Del" OnClientClick="return confirm('确实要删除此公会信息吗？');">删除</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr align="center" style="height: 38px;" class="tdbg">
                <td colspan="8">
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
            AutoPostBack="true" />全选
        <asp:Button ID="Button1" runat="server" Text="批量删除" OnClick="Button1_Click" OnClientClick="return confirm('确实要删除选中信息吗？');" style="width:100px;" class="C_input"/>&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="批量审核" OnClick="Button2_Click" style="width:100px;" class="C_input"/>
        
    </div>
    </form>
</body>
</html>

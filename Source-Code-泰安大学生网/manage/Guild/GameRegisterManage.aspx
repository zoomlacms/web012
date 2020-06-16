<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_GameRegisterManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>签到管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span><a href='GHManage.aspx?ID=<%=PID %>'>公会列表</a></span> &gt;&gt; <span>签到管理</span>&nbsp;
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
            <tr class="gridtitle" align="center" style="height:26px;">
                <td>
                    选择
                </td>
                <td style="width:15%">
                    公会
                </td>
                <td style="width:15%">
                    用户
                </td>
                <td style="width:15%">
                    签到IP
                </td>
                <td style="width:15%">
                    签到时间
                </td>
                <td style="width:15%">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr align="center" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="height:26px;" >
                        <td>
                            <asp:CheckBox ID="item" runat="server" />
                            <asp:Label ID="lblHide" runat="server" Text='<%#Eval("RegisterID") %>' ></asp:Label>
                        </td>
                        <td>
                            <%#gname%>
                        </td>
                        <td>
                            <%#GetUName(Eval("UID")+"")%>
                        </td>
                        <td>
                            <%#Eval("RegisterIP")%>
                        </td>
                        <td>
                            <%#Eval("RegisterTime")%>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton6" runat="server" CommandName="Del" CommandArgument='<%#Eval("RegisterID") %>'
                                OnClientClick="return confirm('确实要删除此签到信息吗？');">删除</asp:LinkButton>&nbsp;
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr align="center" style="height:26px;" class="tdbg">
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
        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox2_CheckedChanged" />
        全选
        <asp:Button ID="Button2" runat="server" Text="批量删除" OnClientClick="return confirm('确实要删除选中的信息吗？');"  style="width:100px;" OnClick="Button2_Click" class="C_input"/>&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>

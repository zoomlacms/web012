<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_GHUserManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>公会用户管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
            <span>公会成员管理</span>&nbsp; <span> 【<a href="BournManage.aspx" style="color: Red">境界信息管理</a>】</span>
            &nbsp;
            <span> 【<a href="MedalManager.aspx" style="color: Red">勋章信息管理</a>】</span>
        </div>
        <div class="clearbox">
        </div>

        <div class="clearbox">
        </div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
            <tr class="gridtitle" align="center" height="26px">
                <td width="5%">
                    选择
                </td>
                <td width="13%">
                    用户名
                </td>
                <td width="13%">
                    公会名称
                </td>
                <td width="13%">
                    职位
                </td>
                <td width="7%">
                    经验点
                </td>
                <td width="7%">
                    境界等级
                </td>
                <td width="10%">
                    金元
                </td>
                <td width="7%">
                    贡献度
                </td>
                <td width="15%">
                    加入时间
                </td>
                <td width="30%">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr align="center" class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="height: 27px;">
                        <td>
                            <asp:CheckBox ID="item" runat="server" />
                            <asp:Label ID="LabelHiddenID" runat="server" Text='<%#Eval("ID" )%>'></asp:Label>
                        </td>
                        <td>
                            <%# GetUserName(Eval("UID","{0}"))%>
                        </td>
                        <td>
                            <%# GetGName(Eval("GID","{0}")) %>
                        </td>
                        <td>
                            <%# GetJob(Eval("Job","{0}")) %>
                        </td>
                        <td>
                            <%#GetExp(Eval("UID","{0}"))%>
                        </td>
                        <td>
                            <%# Eval("Grade")%>
                        </td>
                        <td>
                            <%# GetAurum(Eval("UID", "{0}"))%>
                        </td>
                        <td>
                            <%#Eval("Dedicative") %>
                        </td>
                        <td>
                            <%# Eval("Addtime") %>
                        </td>
                        <td>
                          <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("ID") %>'
                                CommandName="edit">修改</asp:LinkButton>&nbsp;
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("ID") %>'
                                CommandName="del" OnClientClick="return confirm('确实要删除此公会信息吗？');">删除</asp:LinkButton>&nbsp;
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr align="center" style="height: 38px;">
                <td colspan="10" class="tdbg">
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
        <asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="cbAll_CheckedChanged"
            Text="全选" />
        <asp:Button ID="delSelect" runat="server" Text="批量删除"  OnClientClick="return confirm('确实要删除选中的信息吗？');"  style="width:100px;" OnClick="delSelect_Click" class="C_input"/>&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>

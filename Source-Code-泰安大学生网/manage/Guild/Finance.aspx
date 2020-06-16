<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_Finance, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>反馈管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span>反馈管理</span> [<a href="#">
            添加反馈</a>]
    </div>
    <div class="clearbox">
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
            <tr class="gridtitle" align="center" style="height: 30px;">
                <td width="5%">
                    选择
                </td>
                <td width="5%">
                    ID
                </td>
                <td width="10%">
                    公会名称
                </td>
                                <td width="10%">
                    空间名称
                </td>
                                <td width="10%">
                   用户名
                </td>
                <td width="10%">
                    添加时间
                </td>
                <td width="30%">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr align="center" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="height:30px;">
                        <td>
                            <asp:CheckBox ID="chkSel" runat="server" />
                            <asp:Label ID="LabelHiddenID" runat="server" Text='<%#Eval("FinanceId")%>' Visible="false"></asp:Label>
                        </td>
                        <td>
                            <%#Eval("FinanceId")%>
                        </td>
                        <td>
                            <%#Eval("Gid")%>
                        </td>
                        <td>
                            <%#Eval("Sid")%>
                        </td>
                            <td>
                            <%#Eval("Uid")%>
                        </td>
                            <td>
                            <%#Eval("CreateTime")%>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%#Eval("FinanceId") %>'>修改</asp:LinkButton>&nbsp;
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%#Eval("FinanceId") %>'
                                OnClientClick="return confirm('确实要删除此游戏分类信息吗？');">删除</asp:LinkButton>&nbsp;
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr align="center"  class="tdbg">
                <td colspan="7">
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
        <asp:CheckBox ID="CheckBoxGameClass" runat="server" OnCheckedChanged="CheckBoxGameClass_CheckedChanged"
            AutoPostBack="True" />
        全选
        <asp:Button ID="Button2" runat="server" Text="批量删除"  OnClientClick="return confirm('确实要删除选中的信息吗？');"  OnClick="btndelSelect_Click" class="C_input"/>&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>

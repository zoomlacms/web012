<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_MeetRecordManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title></title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span>会议记录</span> <a href="#">
                [添加会议记录]</a>
        </div>
        记录查找用户<asp:TextBox ID="TextBox1" runat="server" class="l_input"></asp:TextBox>
        <asp:Button ID="Button2"
            runat="server" Text="搜索" onclick="Button2_Click" class="C_input"/>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
            <tr class="gridtitle" align="center" height="26px">
                <td width="5%">
                    选择
                </td>

                <td width="10%">
                    公会名
                </td>
                <td width="10%">
                    用户名称
                </td>
                <td width="10%">
                    时间
                </td>
                <td width="20%">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr align="center" style="height:38px;" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
                        <td>
                            <asp:CheckBox ID="item" runat="server" />
                            <asp:Label ID="lblHide" runat="server" Text='<%#Eval("MRID") %>' ></asp:Label>
                        </td>

                        <td>
                            <%# GetGName(Eval("Gid","{0}"))%>
                        </td>
                        <td>
                            <%# GetUserName(Eval("UserID", "{0}"))%>
                        </td>
                        <td>
                            <%#Eval("MRtime")%>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%#Eval("MRID") %>'
                                OnClientClick="return confirm('确实要删除此会议信息吗？');">删除</asp:LinkButton>&nbsp;
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr align="center" style="height:38px;" >
                <td colspan="5">
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
        <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged"
            AutoPostBack="true" />
        全选
        <asp:Button ID="Button1" runat="server" Text="批量删除" OnClientClick="return confirm('确实要删除选中的信息吗？');"  OnClick="Button1_Click" class="C_input"/>&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>

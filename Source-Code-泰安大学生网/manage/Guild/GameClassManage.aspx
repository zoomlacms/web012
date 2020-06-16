<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_GameClassManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>游戏管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span><a href="GameClassManage.aspx">游戏管理</a></span>&nbsp;&nbsp;【<a href="AddGameClass.aspx" style="color:Red">添加游戏</a>】
    </div>
    <div class="clearbox">
    </div>
    <div class="border" style="height: 26px">
        &nbsp;通过游戏名称查找：<asp:TextBox ID="txtSearchGameClass" runat="server" class="l_input"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click" class="C_input"/>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
            <tr class="gridtitle" align="center" style="height: 26px;">
                <td width="5%">
                    选择
                </td>
                <td width="15%">
                    游戏名称
                </td>
                <td width="10%">
                    游戏机种
                </td>
                <td width="10%">
                    游戏视图
                </td>
                <td width="10%">
                    游戏厂商
                </td>
                <td width="10%">
                    游戏类别
                </td>
                <td width="10%">
                    发行地区
                </td>
                <td width="20%">
                    操作
                </td>
            </tr>
            
            <asp:Repeater ID="Repeater1" runat="server"  OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr align="center" class="tdbg" style="height:26px;"  align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"  width=10%>
                        <td>
                            <asp:CheckBox ID="chkSel" runat="server" />
                            <asp:Label ID="LabelHiddenID" runat="server" Text='<%#Eval("GCID")%>'></asp:Label>
                        </td>
                        <td>
                            <%#Eval("GClassName")%>
                        </td>
                        <td>
                            <%#Eval("G_Class")%>
                        </td>
                        <td>
                            <%#Eval("G_GameVideo")%>
                        </td>
                        <td>
                            <%#Eval("G_Makers")%>
                        </td>
                        <td>
                            <%#Eval("G_Categories")%>
                        </td>
                        <td>
                            <%#Eval("G_Issue")%>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%#Eval("GCID") %>'>修改</asp:LinkButton>&nbsp;
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%#Eval("GCID") %>'
                                OnClientClick="return confirm('确实要删除此游戏分类信息吗？');">删除</asp:LinkButton>&nbsp;
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr align="center" style="height: 26px;" class="tdbg">
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
        <asp:CheckBox ID="CheckBoxGameClass" runat="server" OnCheckedChanged="CheckBoxGameClass_CheckedChanged"
            AutoPostBack="True" />
        全选
        <asp:Button ID="Button2" runat="server" Text="批量删除" style="width:100px;" OnClientClick="return confirm('确实要删除选中的信息吗？');"  OnClick="Button2_Click" class="C_input"/>&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>

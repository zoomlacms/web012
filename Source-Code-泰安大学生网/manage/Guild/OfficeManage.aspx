<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_OfficeManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title></title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span>职位管理</span>&nbsp;【<a
            href="AddOffice.aspx" style="color:Red">添加职位</a>】
    </div>
    <div class="clearbox">
    </div>
    <div class="border" style="height: 26px">
        &nbsp;查找官职：<asp:TextBox ID="txtSearchClass" runat="server" class="l_input"></asp:TextBox>&nbsp;&nbsp;<asp:Button
            ID="Button1" runat="server" Text="查找" OnClick="Button1_Click" class="C_input"/>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
            <tr class="gridtitle" align="center" height="26px">
                <td width="10%">
                    选择
                </td>
                <td width="15%">
                    官职
                </td>
                <td width="15%">
                    级别
                </td>
                <td width="15%">
                    创建时间
                </td>
                <td width="30%">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr align="center" class="tdbg">
                        <td>
                            <asp:CheckBox ID="item" runat="server" />
                            <asp:Label ID="LabelHiddenID" runat="server" Text='<%#Eval("Oid")%>' ></asp:Label>
                        </td>

                        <td>
                            <%#Eval("OClass")%>
                        </td>               
                        <td>
                            <%#Eval("Olevel")%>
                        </td>
                        <td>
                            <%# GetGName(Eval("Gid","{0}")) %>
                        </td>
                        <td>
                            <%#Eval("CreateTime")%>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%#Eval("Oid") %>'>修改</asp:LinkButton>&nbsp;
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%#Eval("Oid") %>'
                                OnClientClick="return confirm('确实要删除此职位信息吗？');">删除</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr align="center" style="height:38px;" >
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
            AutoPostBack="true" />全选
        <asp:Button ID="Button2" runat="server" Text="批量删除" OnClientClick="return confirm('确实要删除选中的信息吗？');"  OnClick="Button2_Click" class="C_input"/>&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>

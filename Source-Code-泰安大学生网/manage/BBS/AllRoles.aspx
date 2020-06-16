<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_AllRoles, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>管理所有角色</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>成员</span> &gt;&gt; <span> 管理所有角色</span>
    </div>
    <div class="clearbox"></div>
    <div style='padding-top: 5px; padding-right: 5px; padding-left: 5px; padding-bottom: 5px; text-align: center;'><b>角色管理</b><br /> 创建/编辑角色，用来控制一个用户在制定版块的权限。<br /></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tr class="gridtitle" align="center" height="26px">
            <td colspan="2">角色名管理</td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <tr align="center" class="tdbg" style="height: 38px;">
                    <td align="left"><a href="ViewRol.aspx?RoleID=<%#Eval("RoleID") %>"><b><%#Eval("Name")%></b></a><br /><%#Eval("Description")%></td>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("RoleID") %>' CommandName="Edit" CausesValidation="false">编辑角色属性</asp:LinkButton>&nbsp;
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("RoleID") %>' CommandName="Del" CausesValidation="false">编辑版块权限</asp:LinkButton>&nbsp;
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <asp:TextBox ID="TextBox1" runat="server" class="l_input" Width="195px"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" PostBackUrl="AllRoles.aspx?menu=CreateRole" Text="创建" OnClick="Button3_Click" class="C_input" />
    <asp:Button ID="Button1" runat="server" Text="<<返 回" class="C_input" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="角色名不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </form>
</body>
</html>

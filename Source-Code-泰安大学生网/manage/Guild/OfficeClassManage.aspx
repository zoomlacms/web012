<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_OfficeClassManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
    <div class="r_navigation">
        
        <span>后台管理</span>&gt;&gt; <span>OIEM管理</span>&gt;&gt; <span>公会管理</span>&gt;&gt;
        <span>职位管理</span>&nbsp;【<a href="AddOfficeClass.aspx?type=add" style="color: Red">添加职位</a>】
    </div>
    <div class="clearbox">
    </div>
    <asp:GridView class="border" ID="GridView1" runat="server" DataKeyNames="ID" AutoGenerateColumns="False"
        Width="100%" GridLines="None">
        <Columns>
            <asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:CheckBox ID="item" runat="server" />
                </ItemTemplate>
                <HeaderStyle Width="5%" Height="26" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" BorderColor="White" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:BoundField DataField="ID" HeaderText="编号" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" BorderColor="White" BorderWidth="1px" />
            </asp:BoundField>
            <asp:BoundField DataField="CName" HeaderText="职务名称" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="15%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" BorderColor="White" BorderWidth="1px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" >
                <ItemTemplate>
                    <a href='AddOfficeClass.aspx?type=edit&ID=<%#Eval("ID") %>'>修改</a>&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('确实要删除此风格信息吗？');"
                        OnClick="LinkButton1_Click">删除</asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle Width="20%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" BorderColor="White" BorderWidth="1px" />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"
            Height="30px" Font-Overline="False" />
    </asp:GridView>
    <table>
        <tr>
            <td width="100%">
                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox2_CheckedChanged" />全选
                <asp:Button ID="Button1" runat="server" Text="批量删除" OnClientClick="return confirm('确实要删除选中的信息吗？');"  OnClick="Button1_Click" class="C_input" />
                总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                    runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;<asp:Label ID="FirstPage"
                    runat="server"></asp:Label>
                <asp:Label ID="RePage" runat="server"></asp:Label>
                <asp:Label ID="NextPage" runat="server"></asp:Label>
                <asp:Label ID="EndPage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
        </tr>
    </table>
    </form>
</body>
</html>

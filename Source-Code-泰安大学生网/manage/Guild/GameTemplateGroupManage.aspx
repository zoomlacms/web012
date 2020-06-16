<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_GameTemplateGroupManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<html>
<head runat="server">
<title>模板分类管理</title>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>  &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
        <span><a href='GameTemplateManage.aspx'>模板管理</a></span> &gt;&gt; <span>模板类型管理</span>&nbsp;&nbsp;【<a
            href="AddTemplateGroup.aspx?type=add" style="color: Red">添加模板分类</a>】
    </div>
    <div class="clearbox">
    </div>
    <div>
        <div>
            <asp:GridView ID="GridView1" CssClass="border" runat="server" height="26px" GridLines="None" AutoGenerateColumns="False" Width="100%" DataKeyNames="ID">
                <Columns>
                    <asp:TemplateField HeaderStyle-Width="5%" HeaderText="选择" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                        <HeaderStyle Width="5%" Height="26"/>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:ButtonField DataTextField="ID" HeaderStyle-Width="10%"  HeaderText="编号" ItemStyle-HorizontalAlign="Center" >
                    <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:ButtonField>
                    <asp:ButtonField DataTextField="Name" HeaderText="模板类型名称" ItemStyle-HorizontalAlign="Center" >
                    <HeaderStyle Width="10%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:ButtonField>
                    <asp:TemplateField HeaderText="操作"  HeaderStyle-Width="15%" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <a href="AddTemplateGroup.aspx?type=edit&ID=<%#Eval("ID") %>">修改</a>
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClientClick="return confirm('确实要删除此模板类型信息吗？');" OnClick="LinkButton3_Click">删除</asp:LinkButton>&nbsp;
                        </ItemTemplate>
                        <HeaderStyle Width="30%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <table width="100%">
                <tr align="center" >
                <td colspan="2" style="width:14%"> 
                <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged"
                AutoPostBack="true" />全选
            <asp:Button ID="Button1" runat="server" Text="批量删除" OnClientClick="return confirm('确实要删除选中的信息吗？');"  OnClick="Button1_Click" class="C_input"/></td>
                    <td >
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
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>

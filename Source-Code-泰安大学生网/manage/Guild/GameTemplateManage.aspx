<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_GameTemplateManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>模板管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>&gt;&gt; <span>OIEM管理</span>&gt;&gt; <span>公会管理</span>&gt;&gt;
        <span>模板管理</span>&nbsp;&nbsp;【<a href="GameTemplateGroupManage.aspx" style="color: Red">模板类型管理</a>】&nbsp;&nbsp;【<a
            href="AddTemplate.aspx?type=add" style="color: Red">添加模板</a>】
    </div>
    <div class="clearbox">
    </div>
    <div>
        <div>
            <asp:GridView class="border" ID="GridView1" runat="server" DataKeyNames="ID" Width="100%"
                GridLines="None" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="选择" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                        <HeaderStyle Width="5%" Height="26" />
                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="ID" HeaderText="编号" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                        <HeaderStyle Width="5%" Height="26" />
                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Title" HeaderText="模板名称" ItemStyle-HorizontalAlign="Center">
                        <HeaderStyle Width="15%" Height="26" />
                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="模板类型" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="10%">
                        <ItemTemplate>
                            <%#GetGroupName(Eval("GroupID")+"")%>
                        </ItemTemplate>
                        <HeaderStyle Width="15%" Height="26" />
                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="是否可用" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="7%">
                        <ItemTemplate>
                            <%#GetIsUse(Eval("IsUse") + "")%>
                        </ItemTemplate>
                        <HeaderStyle Width="10%" Height="26" />
                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="10%">
                        <ItemTemplate>
                            <a href='AddTemplate.aspx?type=edit&ID=<%#Eval("ID") %>'>修改</a> &nbsp;
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("ID") %>'
                                CommandName="Del" OnClientClick="return confirm('确实要删除此模板信息吗？');" OnClick="LinkButton3_Click">删除</asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle Width="10%"></HeaderStyle>
                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <div class="clearbox">
            </div>
            <table border="0" cellpadding="0" cellspacing="0" class="border" width="100%">
                <tr align="center" class="tdbg">
                    <td>
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
                AutoPostBack="true" />全选
            <asp:Button ID="Button1" runat="server" Text="批量删除" OnClientClick="return confirm('确实要删除选中的信息吗？');"  OnClick="Button1_Click" Style="width: 100px;"
                class="C_input" />
        </div>
    </div>
    </form>
</body>
</html>

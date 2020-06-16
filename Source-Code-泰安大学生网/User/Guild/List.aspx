<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_List, App_Web_fll2klj3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>浏览</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="s_bright">
        <div class="us_topinfo" style="margin-top: 10px;">
            搜索：<asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            &nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="查找" OnClick="Button1_Click" />
            &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server">公会排行</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">返回我的公会</asp:LinkButton>
        </div>
        <li style="width: 100%; float: left; line-height: 30px">
            <asp:Panel ID="Panel1" runat="server">
                <table width="100%" border="0">
                    <tr>
                        <td>
                            公会排名>>按月活跃排名 (数据每天早上更新一次)
                        </td>
                    </tr>
                    <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="Gid"
                        Width="100%" OnRowCommand="Egv_RowCommand" AllowSorting="True" OnSorting="Egv_Sorting">
                        <Columns>
                            <asp:BoundField HeaderText="排序" DataField="Gid" ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle Width="5%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="公会名称" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <a href="/Guild/MoveDefault.aspx?id=<%#Eval("gid")%>" target="_blank"><%#Eval("Gname")%></a>
                                </ItemTemplate>
                                <HeaderStyle Width="9%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="会长" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <a href="/User/Guild/GHUserInfo.aspx?id=<%#Eval("gid")%>" target="_blank"><%#GetName(Eval("GCreateUserID"))%></a>
                                </ItemTemplate>
                                <HeaderStyle Width="9%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="域名" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <a href="#"><%#Eval("FamilyName")%></a>
                                </ItemTemplate>
                                <HeaderStyle Width="15%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="积分" DataField="Devote" ItemStyle-HorizontalAlign="Center"
                                SortExpression="Devote">
                                <HeaderStyle Width="7%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="人数" DataField="RegUserNum" ItemStyle-HorizontalAlign="Center"
                                SortExpression="RegUserNum">
                                <HeaderStyle Width="7%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="活跃" ItemStyle-HorizontalAlign="Center" SortExpression="Gid">
                                <ItemTemplate>
                                    <%#GetCard(Eval("Gid")) %>
                                </ItemTemplate>
                                <HeaderStyle Width="7%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="加入公会" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" CommandName="SelAdmin" CommandArgument='<%#Eval("Gid") %>'
                                        runat="server">加入公会</asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="10%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="创建时间" ItemStyle-HorizontalAlign="Center" SortExpression="CreateTime">
                                <ItemTemplate>
                                    <%#Convert.ToDateTime(Eval("CreateTime")).ToShortDateString()%>
                                </ItemTemplate>
                                <HeaderStyle Width="12%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            当前没有相关记录！</EmptyDataTemplate>
                    </asp:GridView>
                </table>
            </asp:Panel>
        </li>
        <div style="text-align: center;float: left; width: 100%">
            <asp:Panel ID="panelpage" runat="server">
                总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                    runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
                <asp:Label ID="FirstPage" runat="server"></asp:Label>
                <asp:Label ID="RePage" runat="server"></asp:Label>
                <asp:Label ID="NextPage" runat="server"></asp:Label>
                <asp:Label ID="EndPage" runat="server"></asp:Label>
            </asp:Panel>
        </div>
    </div>
    </form>
</body>
</html>

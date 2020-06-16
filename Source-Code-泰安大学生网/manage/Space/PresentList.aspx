<%@ page language="C#" autoeventwireup="true" inherits="manage_Space_PresentList, App_Web_mvb0v5df" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>空间礼物</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; 空间管理 &gt;&gt; <span>空间礼物</span>&nbsp;&nbsp;【<a href="AddPresent.aspx" style="color:Red">添加礼物</a>】</div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <asp:GridView ID="gvPresent" Width="100%" runat="server"  DataKeyNames="ID" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="编号"  ItemStyle-HorizontalAlign="Center"/>
                        <asp:TemplateField HeaderText="礼物图片" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                        <img src='<%#Eval("PresentImg")%>' width="80px" />
                        </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="礼物类型" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                        <%#GetPresentType(Eval("PresentType").ToString())%>
                        </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:BoundField DataField="PresentName" HeaderText="礼物名称"  
                            ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="PresentWorth" HeaderText="礼物价值"  
                            ItemStyle-HorizontalAlign="Center">
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                        <a href ='AddPresent.aspx?ID=<%#Eval("ID") %>'>修改</a>
                            <asp:LinkButton ID="LinkButton1" runat="server" 
                                OnClientClick="return confirm('你确定要删除这件礼物吗？')" onclick="LinkButton1_Click">删除</asp:LinkButton>
                        </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
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
    </form>
</body>
</html>

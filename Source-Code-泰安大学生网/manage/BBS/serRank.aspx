<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_serRank, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>管理用户等级</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>成员</span> &gt;&gt; <span>管理用户等级</span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table border="0" width="100%" align="center">
            <tr>
                <td align="right">
                    &nbsp;<a href="UserRankAdd.aspx?type=add">[添加用户等级]</a></td>
            </tr>
        </table>
  
        <asp:Repeater ID="RoleList" runat="server" onitemdatabound="RoleList_ItemDataBound">
            <ItemTemplate>
                <table border="0" cellpadding="5" cellspacing="1" class="border" 
                
                
                width="100%" align="center">
                    <tr class="spacingtitle">
                        <td colspan="4" align="center">
                            <%#Eval("Name")%>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td width="100" align="center">
                            ID
                        </td>
                        <td>
                            用户等级
                        </td>
                        <td width="150">
                            最少发帖
                        </td>
                        <td width="150" align="center">
                            管理
                        </td>
                    </tr>
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="RoleList_ItemCommand" >
                        <ItemTemplate>
                            <tr class="tdbg">
                                <td align="center">
                                    <%#Eval("RankID")%>
                                </td>
                                <td>
                                    <%#Eval("RankName")%>
                                </td>
                                <td>
                                    <%#Eval("PostingCountMin")%>
                                </td>
                                <td align="center">
                                    <asp:LinkButton ID="linkButton1" runat="server" CommandName="edit" CommandArgument='<%#Eval("RankID") %>'>编辑</asp:LinkButton>
                                    |
                                    <asp:LinkButton ID="linkButton2" runat="server" CommandName="del" CommandArgument='<%#Eval("RankID") %>' OnClientClick="return confirm('确认删除吗?');">删除</asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    
                </table>
                <br />
            </ItemTemplate>
            
        </asp:Repeater>
        <br />
    </div>
    <asp:Button ID="Button1" runat="server" Text="<<返 回" class="C_input"/>
    <asp:Button ID="Button2" runat="server" Text=" 前 进>>" class="C_input"/>
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_TreeView, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>切换到树型模式</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>论坛</span> &gt;&gt; <span>论坛组</span></div>
    <div class="clearbox">
    </div>
    <table width="100%" align="center">
        <tr>
            <td align="right">
                <asp:Button ID="Button3" runat="server" OnClientClick="location.href='AddGroup.aspx?menu=add';return false;"
                    Text="新建论坛组" class="C_input" />
            </td>
        </tr>
    </table>
    
    <asp:Repeater runat="server" ID="GroupList"  OnItemCommand="GroupList_ItemCommand">
        <ItemTemplate>
            <table border="0" cellpadding="5" cellspacing="1" class="border" width="100%" align="center">
                <tr class="spacingtitle">
                    <td align="left" style="width:70%">
                        <%#Eval("GroupName")%>
                    </td>
                    <td align="right">
                        <input id="Button1" type="button" onclick="location.href='ForumAdd.aspx?menu=Group&GroupID=<%#Eval("GroupID") %>'" value="新建论坛" class="C_input" /><input id="Button5" type="button" onclick="location.href='AddGroup.aspx?menu=edit&GroupID=<%#Eval("GroupID") %>'" value="编辑论坛组" class="C_input" /><input id="Button6" type="button" onclick="if(confirm('确认删除吗?')==true){location.href='TreeView.aspx?menu=delete&GroupID=<%#Eval("GroupID") %>';}" value="删除论坛组" class="C_input" />
                    </td>
                </tr>
                <%#loadtree(Eval("GroupID").ToString()) %>
            </table>
            <br>
        </ItemTemplate>
    </asp:Repeater>
    <table border="0" width="100%" align="center">
        <tr>
            <td align="right">
                <asp:Button ID="Button4" runat="server" OnClientClick="location.href='ForumManage.aspx';return false;"
                    Text="切换到网格模式" class="C_input" />
            </td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Text="<<返 回" class="C_input" />
    <asp:Button ID="Button2" runat="server" Text=" 前 进 >>" class="C_input" />
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Page.PageModelManage, App_Web_gqatopqy" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>黄页模型</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span> &gt;&gt; 企业黄页 &gt;&gt; <a href="PageModelManage.aspx">黄页模型管理</a>
</div>
<div class="clearbox"></div>    
<table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
    <tbody>
        <tr class="gridtitle" align="center" style="height:25px;">
            <td width="5%" height="24">
                <strong>ID</strong></td>
            <td width="5%">
                <strong>图标</strong></td>
            <td width="10%">
                <strong>模型名称</strong></td>
            <td width="20%">
                <strong>模型描述</strong></td>
            <td width="10%">
                <strong>项目名称</strong></td>
            <td width="20%">
                <strong>表名</strong></td>                        
            <td width="30%">
                <strong>操作</strong></td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">                        
                    <td height="24">
                        <%# Eval("ModelID") %></td>
                    <td>
                        <img src="<%# GetIcon(DataBinder.Eval(Container, "DataItem.ItemIcon", "{0}"))%>" style="border-width:0px;" /></td>
                    <td>
                        <%# Eval("ModelName")%></td>
                    <td align="left">
                        <%# Eval("Description")%></td>
                    <td>
                        <%# Eval("ItemName")%></td>
                    <td align="left">
                        <%# Eval("TableName")%></td>                        
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ModelID") %>'>修改</asp:LinkButton> | 
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("ModelID") %>' OnClientClick="return confirm('确实要删除此模型吗？');">删除</asp:LinkButton> | 
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Field" CommandArgument='<%# Eval("ModelID") %>'>字段列表</asp:LinkButton>                            
                        </td>
                </tr>
            </ItemTemplate>
         </asp:Repeater>                        
    </tbody>
</table>

</form>
</body>
</html>

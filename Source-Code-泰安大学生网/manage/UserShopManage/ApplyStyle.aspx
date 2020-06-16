<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_ApplyStyle, App_Web_u03xyaip" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>会员组模型</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; 店铺管理 &gt;&gt; 店铺申请设置
        [<a href="ApplyStyleAdd.aspx">添加申请模型</a>]</div>
    <div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tbody>
            <tr class="gridtitle" align="center" style="height:25px;">
                <td width="5%" height="24">
                    <strong>ID</strong></td>                
                <td width="25%">
                    <strong>样式名称</strong></td>
                <td width="25%">
                    <strong>样式描述</strong></td>
                <td width="25%">
                    <strong>表名</strong></td>                        
                <td width="20%">
                    <strong>操作</strong></td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">                        
                        <td align="center" height="24">
                            <%# Eval("ModelID") %></td>                        
                        <td align="left">
                        <%# Eval("ModelName")%>
                            </td>
                        <td align="left">
                            <%# Eval("Description")%></td>                                               
                        <td align="left">
                            <%# Eval("TableName")%></td>                        
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ModelID") %>'>修改</asp:LinkButton> | 
                            <%#showdelbotton(DataBinder.Eval(Container,"DataItem.ModelID","{0}"))%>| 
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

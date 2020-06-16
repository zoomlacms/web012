<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.WebSite.Manage.User.UserModelManage, App_Web_wsjme5du" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员组模型</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
function getinfo(id){
    location.href = "UserModel.aspx?ModelID="+id+"";
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>用户管理</span> &gt;&gt; <span>用户管理</span> &gt;&gt;<span> 会员模型</span> &gt;&gt;
        【<a href="UserModel.aspx" style="color:Red">添加用户模型</a>】</div>
    <div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tbody>
            <tr class="gridtitle" align="center" style="height:25px;">
                <td width="5%" style="height: 25px">
                    <strong>ID</strong></td>                
                <td width="10%" style="height: 25px">
                    <strong>模型名称</strong></td>
                <td width="20%" style="height: 25px">
                    <strong>模型描述</strong></td>
                <td width="20%" style="height: 25px">
                    <strong>表名</strong></td>                        
                <td width="30%" style="height: 25px">
                    <strong>操作</strong></td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="<%# Eval("ModelID") %>" ondblclick="getinfo(this.id)">                        
                        <td>
                            <strong><%# Eval("ModelID") %></strong></td>                        
                        <td>
                            <strong><%# Eval("ModelName")%></strong></td>
                        <td align="left">
                            <strong><%# Eval("Description")%></strong></td>                                               
                        <td align="left">
                            <strong><%# Eval("TableName")%></strong></td>                        
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ModelID") %>'>修改</asp:LinkButton> | 
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("ModelID") %>' OnClientClick="return confirm('确实要删除此会员模型吗？');">删除</asp:LinkButton> |
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
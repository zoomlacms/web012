<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_FunctionModel, App_Web_wdyr0bpz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>功能模型</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
    function getinfo(id) {
        location.href = "AddEditFunModel.aspx?ModelID=" + id + "";
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<a href="FunctionModel.aspx">功能模型</a>&nbsp; <font color="red">[<a href="AddEditFunModel.aspx" style="color: Red">添加功能模型</a>]</font></div>
<div class="clearbox">
</div>    
    <table width="100%" border="0" cellpadding="1" cellspacing="2" class="border" align="center">
        <tbody>
            <tr class="gridtitle" align="center" style="height: 25px;">
                <td width="10%" height="20" align="center"> <strong>ID</strong></td>
                <td width="20%" align="center"><strong>模型名称</strong></td>
                <td width="20%" align="center"><strong>表名</strong></td>
                <td width="20%" align="center"><strong>模型描述</strong></td>
                <td width="25%" align="center"><strong>操作</strong></td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="<%# Eval("ModelID") %>" ondblclick="getinfo(this.id)">
                        <td>
                            <strong>
                                <%# Eval("ModelID") %></strong>
                        </td>
                        <td align="center">
                            <strong>
                                <%# Eval("ModelName")%></strong>
                        </td>
                        <td align="center" id="TableNames">
                           <strong>
                                <%# Eval("TableName")%></strong> 
                        </td>
                        <td align= "center">
                                <%# Eval("Description")%>
                        </td>
                        <td> 
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ModelID") %>'>修改</asp:LinkButton>
                            |
                             <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("ModelID") %>'>删除</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Field" CommandArgument='<%# Eval("ModelID") %>'>字段列表</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
             <tr class="tdbg">
            <td height="22" colspan="10" align="center" class="tdbgleft">
               <span style="text-align: center">
                   共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                            <asp:Label ID="Toppage" runat="server" Text="" />
                            <asp:Label ID="Nextpage" runat="server" Text="" />
                            <asp:Label ID="Downpage" runat="server" Text="" />
                            <asp:Label ID="Endpage" runat="server" Text="" />页次：
                            <asp:Label ID="Nowpage" runat="server" Text="" />/
                            <asp:Label ID="PageSize" runat="server" Text="" />页
                            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" 
                        class="l_input" Width="16px"  Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
                            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"  ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                     </span>
            </td>
        </tr>
        </tbody>
    </table>
    </form>
</body>
</html>

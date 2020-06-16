﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_AddCRM_CustomerList, App_Web_1ghag21i" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>客户管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" language="javascript">
        function getinfo(id) {
            location.href = 'ViewCustomer.aspx?FieldName=Person_Add&id=' + id;
        }
        function CheckAll(spanChk)//CheckBox全选
        {
            var oItem = spanChk.children;
            var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
            xState = theBox.checked;
            elm = theBox.form.elements;
            for (i = 0; i < elm.length; i++)
                if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
                if (elm[i].checked != xState)
                    elm[i].click();
            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span>&nbsp;&gt;&gt;&nbsp;<span><asp:Literal ID="liTitle" runat="server"></asp:Literal></span>&nbsp;&gt;&gt;&nbsp;<span><a href="CustomerList.aspx?usertype=0">客户管理</a></span>&nbsp;&nbsp;[<a href="CustomerManage.aspx?FieldName=Person_Add">添加客户</a>]
        </div>
        
    <div class="clearbox">
    </div>
        <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td align="center" colspan="7" class="title" width="100%">
                    客 户 列 表</td>
            </tr>
            <tr class="tdbg">
                <td align="center" class="tdbgleft" style="height: 24px; width: 5%; font-weight: bold">
                    ID
                </td>
                <td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
                    客户名称
                </td>
                <td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">
                    客户类别
                </td>
                <td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
                    客户编号
                </td>
                 <td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">
                    客户组别
                </td>
                <td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
                    客户来源
                </td>
                <td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" ondblclick="getinfo(<%#Eval("Flow")%>);">
                        <td align="center" style="height: 24px;">
                           <%#Eval("Flow")%>
                        </td>
                         <td align="center" style="height: 24px; cursor:pointer">
                           <a href="ViewCustomer.aspx?FieldName=Person_Add&id=<%#Eval("Flow") %>"><%#Eval("P_name")%></a>
                        </td>
                        <td align="center" style="height: 24px;">
                           <%#Eval("Client_Type","{0}")=="1"?"企业":"个人"%>
                        </td>
                        <td align="center" style="height: 24px;">
                            <%#Eval("Code")%>
                        </td>
                        <td align="center" style="height: 24px;">
                           <%#Eval("Client_Group")%>
                        </td>
                        <td align="center" style="height: 24px;">
                            <%#Eval("Client_Source")%>
                        </td>
                        <td align="center" style="height: 24px;">
                           <a href="CustomerManage.aspx?FieldName=Person_Add&menu=edit&id=<%#Eval("Flow") %>">修改</a>　<a href="?menu=delete&id=<%#Eval("Flow") %>" onclick="return confirm('你确定要将所有选择删除吗？');">删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td align="center" class="tdbg" style="height: 24px;" colspan="7">
                   共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                </td>
            </tr>
        </tbody>
    </table>
    
    
   </form>
</body>
</html>

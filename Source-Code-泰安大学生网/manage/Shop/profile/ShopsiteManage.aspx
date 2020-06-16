<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_ShopsiteManage, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>购物商城管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script language="javascript" type="text/javascript" src="../../../JS/SelectCheckBox.js"></script>
</head>
<body>
    
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>商城管理</span> 
        <a href="AddShopsite.aspx?menu=add">[新增入驻商城]</a>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr class="tdbg" width="70%" align="left">
        <td>
            商城名称：<asp:TextBox ID="txtName" runat="server" class="l_input"></asp:TextBox>
            商城Url：<asp:TextBox ID="txtUrl" runat="server" class="l_input"></asp:TextBox>
            <asp:Button ID="btnSea" runat="server" Text="搜索" class="C_input" onclick="btnSea_Click" /></td>
      </tr>
    </table>
    <div class="clearbox"></div>
    <div class="divbox" id="nocontent" runat="server" style="display: none">
        暂无入驻商城信息</div>
    <br />
    <div>
        <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" class="border"
            Width="100%" RowStyle-CssClass='tdbg' onrowcommand="gvCard_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                       <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("ID") %>' /> <asp:CheckBox ID="chkSel" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="商城名称" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                    <asp:Label ID="lblNo" runat="server" Text='<%#Eval("sName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="地址" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <a href="###" onclick='javascript:window.open("<%#Eval("Url") %>")' target="_blank" ><%#Eval("Url") %></a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="商城简称" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate><%# Eval("name")%></ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="联盟主" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate><%# GetAlli(Eval("aid", "{0}"))%></ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField  HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                    <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Upd" CommandArgument='<%#Eval("ID") %>'>修改</asp:LinkButton>
                    <asp:LinkButton ID="btnDel" runat="server" CommandName="Del" CommandArgument='<%#Eval("ID") %>' OnClientClick="return confirm('确认删除!')">删除</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>             
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr class="tdbg">
            <td>
                <div class="tdbg">
                    <span>
                        <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged"
                            Text="全选" />
                        <asp:Button ID="BtnDelete" runat="server" class="C_input" OnClick="BtnDelete_Click"
                            OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}"
                            Text="批量删除选定内容" Width="134px" />
                    </span>  <span style="text-align: center">
                    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                            <asp:Label ID="Toppage" runat="server" Text="" />
                            <asp:Label ID="Nextpage" runat="server" Text="" />
                            <asp:Label ID="Downpage" runat="server" Text="" />
                            <asp:Label ID="Endpage" runat="server" Text="" />页次：
                            <asp:Label ID="Nowpage" runat="server" Text="" />/
                            <asp:Label ID="PageSize" runat="server" Text="" />页
                            <asp:Label ID="pagess" runat="server" Text="" />
                            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                                Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                                ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                     </span>
                </div>
            </td>
        </tr>
    </table>
    </form>
    
</body>
</html>

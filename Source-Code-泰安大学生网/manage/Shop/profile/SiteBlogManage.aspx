<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_SiteBlogManage, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>博客内容推广管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">

<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>返利管理</span> &gt;&gt;<span><a href="sitepicManage.aspx">博客内容推广管理</a></span> 
[<a href="SiteBolgAdv.aspx?menu=add">添加博客内容推广</a>]
</div>      
<div class="clearbox">
</div>
<asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False"  class="border"  Width="100%"  RowStyle-CssClass='tdbg'  onrowcommand="gvCard_RowCommand">
    <Columns>
        <asp:TemplateField HeaderText="广告标题" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
            <asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id") %>' />
            <asp:Label ID="lblname" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            
        <asp:TemplateField HeaderText="链接地址" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
                <asp:HyperLink ID="lblUrl" runat="server" Text='<%#Eval("Url") %>' NavigateUrl='<%#Eval("Url") %>' Target="_blank"></asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>

          <asp:TemplateField HeaderText="推广商家" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
                <asp:Label ID="lblType" runat="server" Text='<%# GetShop(Eval("ShopId","{0}")) %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="最高返利" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
                <asp:Label ID="lblRabat" runat="server" Text='<%#Eval("Rebate") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            
        <asp:TemplateField HeaderText="添加时间" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
                <asp:Label ID="lbladdtime" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"AddTime","{0:yyyy-MM-dd}") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
                <asp:LinkButton ID="upd" runat="server" CommandName="upd" CommandArgument='<%#Eval("id") %>'>修改</asp:LinkButton>
                <asp:LinkButton ID="del" runat="server" CommandName="del" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('确认删除?')">删除</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

<div class="tdbg" align="center">
    <span style="text-align: center">
    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />页次：
    <asp:Label ID="Nowpage" runat="server" Text="" />/
    <asp:Label ID="PageSize" runat="server" Text="" />页
    <asp:Label ID="pagess" runat="server" Text="" />
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="True" class="l_input" Width="16px"
        Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
    页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
        ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
    </span>
</div>
</form>
</body>
</html>

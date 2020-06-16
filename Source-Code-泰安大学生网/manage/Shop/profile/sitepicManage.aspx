<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_sitepicManage, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>分站图片广告管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">

<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>返利管理</span> &gt;&gt;<span><a href="sitepicManage.aspx">分站图片广告管理</a></span> 
[<a href="SitePicAdv.aspx?menu=add">添加图片广告</a>]
</div>      
<div class="clearbox">
</div>
<asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" 
    class="border"  Width="100%"  RowStyle-CssClass='tdbg' 
    onrowcommand="gvCard_RowCommand">
    <Columns>
        <asp:TemplateField HeaderText="广告名称" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
            <asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id") %>' />
            <asp:Label ID="lblname" runat="server" Text='<%#Eval("advName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            
        <asp:TemplateField HeaderText="图片路径" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
                <asp:Label ID="lblpic" runat="server" Text='<%#Eval("AdvPic")%>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            
        <asp:TemplateField HeaderText="图片标题" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
                <asp:Label ID="lblpicTitle" runat="server" Text='<%#Eval("picTitle")%>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            
        <asp:TemplateField HeaderText="链接地址" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
                <asp:Label ID="lblUrl" runat="server" Text='<%#Eval("Url") %>' ></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            
        <asp:TemplateField HeaderText="版位类型" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
                <asp:Label ID="lblType" runat="server" Text='<%#getzonetypename(Eval("ZoneType","{0}")) %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
            
        <asp:TemplateField HeaderText="版位尺寸" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
                 <%#Eval("ZoneWidth")%>
                    x
                 <%#Eval("ZoneHeight")%>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
            <ItemTemplate>
                <asp:LinkButton ID="upd" runat="server" CommandName="upd" CommandArgument='<%#Eval("id") %>'>修改</asp:LinkButton>
                <asp:LinkButton ID="del" runat="server" CommandName="del" CommandArgument='<%#Eval("id") %>'  OnClientClick="return confirm('确认删除?')">删除</asp:LinkButton>
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

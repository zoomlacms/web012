<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_OrderManage, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>订单管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script language="javascript" type="text/javascript" src="../../../JS/calendar.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>订单管理</span> 
</div>      
<div class="clearbox">
</div>
 <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top:10px;text-align:left;">
  <tr class="tdbg">
    <td>订单日期：<asp:TextBox ID="txtorderdata" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>至
    <asp:TextBox ID="txtorderdata2" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>
   订单反馈日期：<asp:TextBox ID="txtapplydata" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>至
   <asp:TextBox ID="txtappdata" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>
   <br />订单编号：<asp:TextBox ID="txtOrderno" runat="server" class="l_input"></asp:TextBox>
    <asp:Button ID="btnName" runat="server" Text="搜索" class="C_input" onclick="btnName_Click" /> 
    <asp:Button ID="Button1" runat="server" Text="清空" class="C_input" onclick="Button1_Click"/></td>
  </tr>
</table>
<div class="divbox" id="nocontent" runat="server" style="display: none">
    暂无订单信息</div>
<br />
<div class="clearbox">
</div>
<div>
<div align="right"><input ID="btnS" type="button" class="C_input" OnClick='location.href="CashBackOrderSearch.aspx"' value="读取领克特订单数据">
&nbsp;<input ID="Button2" type="button" class="C_input" OnClick='location.href="WeiyiOrderSearch.aspx"' value="读取唯一订单数据">
&nbsp;<input ID="Button3" type="button" class="C_input" OnClick='location.href="YiqifaOrderSearch.aspx"' value="读取亿起发订单数据"></div>
    <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" class="border"
        Width="100%" RowStyle-CssClass='tdbg' onrowcommand="gvCard_RowCommand" 
        onrowdatabound="gvCard_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="订单编号" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                <asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id") %>' />
                <asp:Label ID="lblNo" runat="server" Text='<%#Eval("OrderNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="用户ID" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblUser" runat="server" Text='<%#Eval("UserId") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
               <asp:TemplateField HeaderText="联盟主" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblUnion" runat="server" Text='<%#Eval("UnionId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
             <asp:TemplateField HeaderText="购物商城" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblShopsite" runat="server" Text='<%#GetShopsite(Eval("Shopsite","{0}")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="商品单价" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                   <asp:Label ID="MerPrice" runat="server" Text='<%#DataBinder.Eval(Container, "DataItem.MerPrice", "{0:N2}")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="商品数量" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                   <asp:Label ID="MerNum" runat="server" Text='<%#Eval("MerNum")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
             <asp:TemplateField HeaderText="商品总价" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                   <asp:Label ID="MerSumPrice" runat="server" Text='<%#DataBinder.Eval(Container, "DataItem.MerSumPrice", "{0:N2}")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
             <asp:TemplateField HeaderText="订单日期" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="orderData" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OrderData","{0:yyyy-MM-dd}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="订单反馈日期" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="ApliyData" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OrderFbackData","{0:yyyy-MM-dd}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="订单状态" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblAudit" runat="server" ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr class="tdbg">
        <td>
            <div class="tdbg">
             <span style="text-align: center"> 
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

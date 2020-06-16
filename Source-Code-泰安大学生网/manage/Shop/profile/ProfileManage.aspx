<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_ProfileManage, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>返利管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/calendar.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a href="ProfileManage.aspx">返利管理</a></span> 
</div>      
<div class="clearbox">
</div>
    <div class="divbox" id="nocontent" runat="server" style="display: none">
    暂无返利信息</div>
 <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top:10px;text-align:left;">
  <tr class="tdbg">
    <td>订单日期：<asp:TextBox ID="txtorderdata" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>至
    <asp:TextBox ID="txtorderdata2" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>
   订单反馈日期：<asp:TextBox ID="txtapplydata" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>至
   <asp:TextBox ID="txtappdata" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>
   <br />订单编号：<asp:TextBox ID="txtOrderno" runat="server" class="l_input"></asp:TextBox> 
   用户名：<asp:TextBox ID="txtUserId" runat="server" class="l_input"></asp:TextBox>
   所属联盟:<asp:DropDownList ID="ddalli" runat="server"></asp:DropDownList>
    <asp:Button ID="btnName" runat="server" Text="搜索" class="C_input" onclick="btnName_Click" /> 
    <asp:Button ID="Button1" runat="server" Text="清空" class="C_input" onclick="Button1_Click"/></td>
  </tr>
</table>
<div class="clearbox"></div>
<div>
    <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" class="border"
        Width="100%" OnRowCommand="gvCard_RowCommand"  OnRowDataBound="gvCard_RowDataBound" RowStyle-CssClass='tdbg'>
        <Columns>
            <asp:TemplateField HeaderText="订单编号" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                <asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id") %>' />
                <asp:Label ID="lblNo" runat="server" Text='<%#Eval("OrderNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="订单金额" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblMoney" runat="server" Text='<%#DataBinder.Eval(Container, "DataItem.OrderMoney", "{0:N2}")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="所属用户" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblUser" runat="server" ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
               <asp:TemplateField HeaderText="联盟主" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblUnion" runat="server" Text='<%#Eval("UnionId") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
             <asp:TemplateField HeaderText="购物商城" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblShopsite" runat="server" Text='<%#GetShopsite(Eval("Shopsite","{0}")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
              <asp:TemplateField HeaderText="总返利" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                   <asp:Label ID="fMoney" runat="server" Text='<%#DataBinder.Eval(Container, "DataItem.Commision", "{0:N2}")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="用户返利" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                   <asp:Label ID="ProfileMoney" runat="server" Text='<%#DataBinder.Eval(Container, "DataItem.ProfileMoney", "{0:N2}")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
             <asp:TemplateField HeaderText="上级返利" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="pre" runat="server" Text='<%#DataBinder.Eval(Container, "DataItem.parentUser", "{0:N2}")%>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
             <asp:TemplateField HeaderText="上上级返利" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="ppre" runat="server" Text='<%#DataBinder.Eval(Container, "DataItem.parentPUser", "{0:N2}")%>' ></asp:Label>
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

<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_RedEnvlopManage, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>用户红包管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../../JS/calendar.js"></script>
<script language="javascript" type="text/javascript" src="../../../JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>用户红包管理</span> 
    </div>
    <div class="clearbox">
    </div>
    <div>用户ID：<asp:TextBox ID="txtUserid" runat="server" class="l_input"></asp:TextBox>
         申请日期：<asp:TextBox ID="txtData" runat="server" class="l_input" onclick="calendar();"></asp:TextBox>
         <asp:Image ID="Image1" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif"
                             ToolTip="鼠标点击左边输入框出现时间选择框" />
          到   <asp:TextBox ID="txtEnddata" runat="server" class="l_input" onclick="calendar();"></asp:TextBox>
         <asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif"
                             ToolTip="鼠标点击左边输入框出现时间选择框" />              
         <asp:Button ID="btnClick" runat="server" class="C_input" Text="搜索" onclick="btnClick_Click"/></div>
    <div class="clearbox"></div>
    <div class="divbox" id="nocontent" runat="server" style="display: none">
        暂无用户红包信息</div>
    <br />
    <div>
        <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" class="border"
            Width="100%" RowStyle-CssClass='tdbg' onrowcommand="gvCard_RowCommand" 
            onrowdatabound="gvCard_RowDataBound">
            <Columns>
                
                <asp:TemplateField HeaderText="申请时间" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                      <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("ID") %>' /> 
                    <asp:Label ID="lblOrderData" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OrderData","{0:yyyy-MM-dd}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="红包" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:Label ID="lblRedEnv" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="用户名" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:Label ID="lblUser" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="手续费" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:Label ID="lblFee" runat="server" Text='<%#DataBinder.Eval(Container, "DataItem.DeducFee", "{0:N2}")%>' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="开户行" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="13%">
                    <ItemTemplate>
                        <asp:Label ID="lblBank" runat="server"  Text='<%#Eval("BankOfDeposit") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="开户帐号" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="14%">
                    <ItemTemplate>
                        <asp:Label ID="lblAccount" runat="server"  Text='<%#Eval("Account") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="开户名" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:Label ID="lblAccName" runat="server"  Text='<%#Eval("NameOfDeposit") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="会员身份证" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:Label ID="lblCardID" runat="server"  Text='<%#Eval("CardID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="会员名" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:Label ID="lblTrueName" runat="server"  Text='<%#Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="支付时间" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:Label ID="lblPayData" runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="负责人" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:Label ID="lblRemark" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
               <asp:TemplateField  HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                    <asp:LinkButton ID="btnadmin" runat="server" CommandName="admin" CommandArgument='<%#Eval("ID") %>'>确认负责人</asp:LinkButton>
                    <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Upd" CommandArgument='<%#Eval("ID") %>'>支付</asp:LinkButton>
                    <asp:LinkButton ID="btnBeture" runat="server" CommandName="beture" CommandArgument='<%#Eval("ID") %>'>确认支付</asp:LinkButton>
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

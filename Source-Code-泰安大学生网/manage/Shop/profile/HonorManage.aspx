<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_HonorManage, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>兑现管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>返利管理</span> &gt;&gt; <span>兑现管理</span> 
    </div>
     <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top:10px;text-align:left;">
      <tr class="tdbg">
        <td>
        <asp:Button ID="btnName" runat="server" Text="查询未支付数据" class="C_input" onclick="btnName_Click" /> 
        <asp:Button ID="btnS" runat="server" Text="查询支付数据" class="C_input" 
                onclick="btnS_Click"/>
       <%-- <asp:Button ID="Button1" runat="server" Text="清空" class="C_input" onclick="Button1_Click"/>--%></td>
      </tr>
    </table>
    <div class="clearbox">
    </div>
    <div class="divbox" id="nocontent" runat="server" style="display: none">
        暂无兑现信息</div>
    <br />
    <div class="clearbox">
    </div>
    <div>
        <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" class="border"
            Width="100%" RowStyle-CssClass="tdbg" OnRowCommand="gvCard_RowCommand"   OnRowDataBound="gvCard_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="申请时间" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                    <asp:HiddenField  ID="hfId" runat="server" Value='<%#Eval("id") %>' />
                    <asp:Label ID="lblOrderData" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"OrderData","{0:yyyy-MM-dd}") %>' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="用户名" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:Label ID="lblUserid" runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="类型" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" >
                    <ItemTemplate>
                        <asp:Label ID="lble" runat="server" Text='<%# GetType(Eval("type","{0}"))%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
              
                <asp:TemplateField HeaderText="兑现金额" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate><%# DataBinder.Eval(Container, "DataItem.HonorMoney", "{0:N2}") %></ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="手续费" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" >
                    <ItemTemplate>
                        <asp:Label ID="lblFee" runat="server" Text='<%#DataBinder.Eval(Container, "DataItem.Fee", "{0:N2}")%>'></asp:Label>
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
                
                 <asp:TemplateField HeaderText="开户名" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" >
                    <ItemTemplate>
                        <asp:Label ID="lblAccName" runat="server"  Text='<%#Eval("NameOfDeposit") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                 <asp:TemplateField HeaderText="会员身份证" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:Label ID="lblCardID" runat="server"  Text='<%#Eval("CardID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="会员姓名" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="8%">
                    <ItemTemplate>
                        <asp:Label ID="lblTrueName" runat="server"  Text='<%#Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="负责人" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" >
                    <ItemTemplate>
                        <asp:Label ID="lblAdmin" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField  HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                    <asp:LinkButton ID="btnAdmin" runat="server" CommandName="admin" CommandArgument='<%#Eval("ID") %>'>确认负责人</asp:LinkButton>
                    <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Upd" CommandArgument='<%#Eval("ID") %>'>支付</asp:LinkButton>
                    <asp:LinkButton ID="btnAudit" runat="server" CommandName="pay" CommandArgument='<%#Eval("ID") %>'>确认支付</asp:LinkButton>
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
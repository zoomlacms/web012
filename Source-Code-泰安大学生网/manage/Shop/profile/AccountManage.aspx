<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_AccountManage, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>用户收款信息管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="../../../JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>返利管理</span>&gt;&gt;<span>用户收款信息管理</span> 
</div>
<div class="clearbox">
</div>
<div>用户名:<asp:TextBox ID="txtUsername" runat="server" class="l_input"></asp:TextBox>
    开户行:<asp:TextBox ID="txtBank" runat="server" class="l_input"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server"  Text="搜索" class="C_input" 
        onclick="btnSearch_Click" /></div>
<div class="clearbox"></div>
    <div class="divbox" id="nocontent" runat="server" style="display: none">暂无用户收款信息</div>
<br />
<div>
<table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
    <tr class="tdbg">
        <td align="center" class="title" width="5%">选择</td>
        <td align="center" class="title" width="20%">开户行及支行全称</td>
        <td align="center" class="title" width="10%">所属用户</td>
        <td align="center" class="title" width="10%">开户人真实姓名</td>
        <td align="center" class="title" width="10%">开户帐号</td>
        <td align="center" class="title" width="10%">您的真实姓名</td>
        <td align="center" class="title" width="10%">您的身份证号码</td>
        <td align="center" class="title" width="13%">是否绑定真实姓名</td>
        <td align="center" class="title" width="12%">操作</td>
    </tr>
    <asp:Repeater ID="repter" runat="server" onitemcommand="repter_ItemCommand" 
        onitemdatabound="repter_ItemDataBound">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="center"><asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("ID") %>' /> <asp:CheckBox ID="chkSel" runat="server" /></td>
                <td align="center"><asp:Label ID="lblName" runat="server" Text='<%#Eval("BankOfDeposit") %>' ></asp:Label></td>
                <td align="center"><asp:Label ID="lblUserid" runat="server" Text='<%#GetUser(Eval("Userid","{0}")) %>' ></asp:Label></td>
                <td align="center"><asp:Label ID="lblTreName" runat="server" Text='<%#Eval("NameOfDeposit") %>'></asp:Label></td>
                <td align="center"><asp:Label ID="Account" runat="server" Text='<%#Eval("Account") %>' ></asp:Label></td>
                <td align="center"><asp:Label ID="Name" runat="server" Text='<%#Eval("Name") %>'></asp:Label></td>
                <td align="center"><asp:Label ID="CardID" runat="server" Text='<%#Eval("CardID") %>'></asp:Label></td>
                <td align="center"><asp:Label ID="lblState" runat="server" Text='<%# GetLock(Eval("Lock","{0}")) %>' ></asp:Label></td>
                <td align="center"> <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Upd" CommandArgument='<%#Eval("ID") %>'>修改</asp:LinkButton>
                <asp:LinkButton ID="btnAudit" runat="server" CommandName="bind" CommandArgument='<%#Eval("ID") %>'>取消绑定</asp:LinkButton>
                <asp:LinkButton ID="btnDel" runat="server" CommandName="Del" CommandArgument='<%#Eval("ID") %>' OnClientClick="return confirm('确定删除？')">删除</asp:LinkButton></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
        <td colspan="9">
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
</div>
</form>
</body>
</html>

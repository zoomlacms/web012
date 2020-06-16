<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_Advmanage, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>广告管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span>&gt;&gt;<a href ="ForumManage.aspx">
        <span>论坛管理</span></a>  &gt;&gt; <span>广告管理</span> &gt;&gt; <span>自定义广告</span>&gt;&gt;【<a href="AdvContent.aspx" style="color:Red">添加广告</a>】
    </div>
    <div class="clearbox"></div> 
    <div class="r_navigation"><span style="margin-left:30px">自定义广告</span>   &gt;&gt;<span>设置</span> &gt;&gt;<span>管理</span></div>
    <div class="clearbox"></div>
    <div style="font-size:16px; color:Green; font-weight:bold; line-height:30px; float:left;  width:100px; text-align:center">自定义广告</div>
    <div style="float:right">
            <asp:DropDownList ID="DDLDate" runat="server">
                <asp:ListItem Value="0">起始时间</asp:ListItem>
                <asp:ListItem Value="1">全部</asp:ListItem>
                <asp:ListItem Value="2">一天</asp:ListItem>
                <asp:ListItem Value="3">一周</asp:ListItem>
                <asp:ListItem Value="4">一个月</asp:ListItem>
                <asp:ListItem Value="5">三个月</asp:ListItem>
                <asp:ListItem Value="6">半年</asp:ListItem>
                <asp:ListItem Value="7">一年</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DDLType" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="DDLO" runat="server">
                <asp:ListItem Value="0">排序方式</asp:ListItem>
                <asp:ListItem Value="1">添加时间</asp:ListItem>
                <asp:ListItem Value="2">广告类型</asp:ListItem>
                <asp:ListItem Value="3">显示顺序</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="BtnSearch" runat="server" Text="开始搜索" class="C_input" onclick="Button1_Click" />
        </div>
    <div class="clearbox"></div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AdsID" Width="100%" AllowPaging="True" PageSize="5" CssClass="border" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound">
         <Columns>
            <asp:TemplateField HeaderText="选择">
                <ItemTemplate><asp:CheckBox ID="chkSel" runat="server" /></ItemTemplate><ItemStyle Width="5%" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="序号">
                <ItemTemplate><%#Eval("AdsID") %></ItemTemplate><ItemStyle  Width="5%" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="可用">
                <ItemTemplate><%#GetBool(Eval("IsUse")+"")%></ItemTemplate><ItemStyle  Width="5%" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="标题">
                <ItemTemplate><%#Eval("Title") %></ItemTemplate><ItemStyle  Width="8%" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="类型">
                <HeaderStyle Width="13%" /><ItemTemplate><%#GetAdvType(Eval("TypeID","{0}"))%></ItemTemplate><ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="样式">
                <HeaderStyle Width="11%" /><ItemTemplate><%#GetAdvStyle(Eval("StyleID", "{0}"))%></ItemTemplate><ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="起始时间">
                <HeaderStyle Width="14%" /><ItemTemplate><%#Eval("BeginTime")%></ItemTemplate><ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="终止时间">
                <HeaderStyle Width="14%" /><ItemTemplate><%#Eval("EndTime")%></ItemTemplate><ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="投放范围">
                <HeaderStyle Width="10%" /><ItemTemplate><%#Eval("RunningRangeIDs")%></ItemTemplate><ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <HeaderStyle Width="16%" /><ItemStyle  HorizontalAlign="Center" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Add" CommandArgument='<%#Eval("AdsID") %>' >添加</asp:LinkButton>|
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%#Eval("AdsID") %>' >修改</asp:LinkButton>|
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%#Eval("AdsID") %>' OnClientClick="javascript:return confirm('您确定要删除吗？')">删除</asp:LinkButton>|
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="View" CommandArgument='<%#Eval("AdsID") %>'>查看</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
         <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
         <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
         <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
         <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
         <PagerSettings FirstPageText="" LastPageText="" Mode="NextPrevious" NextPageText="" PreviousPageText="" Visible="False" />
    </asp:GridView>
        <div style="text-align: center" class="tdbg">
        <span style="text-align: center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />/
            <asp:Label ID="PageSize" runat="server" Text="" />页
            <asp:Label ID="pagess" runat="server" Text="" />
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox>
            条数据/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </span>
    </div>
    <div>
        <div style="float:left">
            <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" Text="全选"  OnCheckedChanged="cbAll_CheckedChanged" />
            <asp:Button ID="BtnPause" runat="server" Text="批量删除" OnClick="BtnPause_Click"  OnClientClick="return confirm('你确定要删除吗？')" class="C_input" />
        </div>
    </div>
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_LinkFriend, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>友情链接</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script language="javascript" type="text/javascript">
    
    function CheckAll(spanChk)//CheckBox全选
	{
        var oItem = spanChk.children;
        var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
        xState=theBox.checked;
        elm=theBox.form.elements;
        for(i=0;i<elm.length;i++)
        if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
        {
            if(elm[i].checked!=xState)
            elm[i].click();
        }
	}
    </script>
    <style type="text/css">
        .style1
        {
            height: 19px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>设置</span> &gt;&gt; <span>友情链接</span>
        </div>
        <div style="font-size:16px; color:Green; font-weight:bold; line-height:30px"></div>
        <table id="tips" style="width:100%; line-height:20px">
            <tr style="width:100%"><th align="left">技巧提示</th></tr>
            <tr>
                <td class="style1">
                    <ul style=" list-style-type:disc; margin-left:20px">
                        <li>如果您不想在首页显示友情链接，可以在“<a href="HomeShow.aspx">首页显示</a>”中关闭。</li>
                        <li>未填写文字说明的项目将以紧凑型显示。</li>
                    </ul>
                </td>
            </tr>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="LinkID" Width="100%" AllowPaging="True" PageSize="5"  
            CssClass="border" OnRowDataBound="GridView1_RowDataBound" >
            <Columns>
                <asp:TemplateField HeaderText="选择">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSel" runat="server" Visible='<%#GetIsUse(Eval("LinkID") + "")%>'/>
                    </ItemTemplate>
                    <ItemStyle  Width="5%" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="显示顺序">
                    <ItemTemplate>
                      <asp:HiddenField ID="hidField" runat="server" Value='<%# Eval("LinkID") %>'/>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("SortOrder") %>' 
                            Width="25px"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox5"
                ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0" Font-Overline="False" Display="Dynamic"></asp:RangeValidator>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" Width="10%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="论坛名称">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                </ItemTemplate>
                <ItemStyle  Width="10%" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="论坛URL">
                 <HeaderStyle Width="10%" />
                <ItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("URL") %>' 
                        Width="200px"></asp:TextBox>
                </ItemTemplate>
                <ItemStyle  HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="文字说明">
                 <HeaderStyle Width="20%" />
                <ItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Intro") %>' 
                        Width="300px"></asp:TextBox>
                </ItemTemplate>
                <ItemStyle  HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="logo地址(可选)">
                <HeaderStyle Width="10%" />
                <ItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Logo") %>'></asp:TextBox>
                </ItemTemplate>
                <ItemStyle  HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
             <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
             <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
             <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
             <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
             <PagerSettings FirstPageText="" LastPageText="" Mode="NextPrevious" 
                NextPageText="" PreviousPageText="" Visible="False" />
        </asp:GridView>
        </table>
        <div style="text-align: center" class="tdbg">
        <span style="text-align: center">共
                  <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />/
            <asp:Label ID="PageSize" runat="server" Text="" />页
            <asp:Label ID="pagess" runat="server" Text="" />
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input"
                Width="22px" Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox>
            条数据/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </span>
    </div>
            <table>
                <tr>
                    <td>
                        <asp:CheckBox ID="Checkall" runat="server" onclick="javascript:CheckAll(this);" Text="全选" />
                        <asp:Button ID="btnDeleteAll" runat="server" style="width:110px;"  OnClientClick="return confirm('你确定删除吗？')" Text="批量删除" OnClick="btnDeleteAll_Click" class="C_input" />
                        <asp:Button ID="commit" runat="server" style="width:110px;" Text="提交" 
                        class="C_input" onclick="commit_Click" />
                        <asp:Button ID="BtnAdd" runat="server" style="width:110px" Text="新增" 
                            class="C_input" onclick="BtnAdd_Click"/>
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>

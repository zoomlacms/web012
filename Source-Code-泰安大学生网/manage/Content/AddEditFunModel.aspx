<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_AddEditFunModel, App_Web_wdyr0bpz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>功能模型编辑</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
   <div class="r_navigation">
	 <span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<a href="FunctionModel.aspx">功能模型</a>&gt;&gt;<span><asp:Literal ID="LNav" runat="server" Text="添加功能模型"></asp:Literal></span>
	</div>
    <div class="clearbox"></div>    
    <table class="border" width="100%" cellpadding="2" cellspacing="1">
        <tr>
            <td class="spacingtitle" colspan="2" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="添加功能模型"></asp:Literal></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width:200px">
                <strong>内容模型名称：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtModelName" class="l_input" runat="server" Width="156" MaxLength="200" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtModelName">内容模型名称不能为空</asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>创建的数据表名：</strong>
            </td>
            <td>
                <asp:Label ID="LblTablePrefix" runat="server" Text="ZL_C_" />
                <asp:TextBox ID="TxtTableName"  class="l_input" runat="server" Width="120" MaxLength="50" /><font color="red">*</font>
                <asp:RegularExpressionValidator ID="ValeTableName" runat="server" ControlToValidate="TxtTableName"
                    ErrorMessage="只允许输入字母、下划线" ValidationExpression="^[A-Za-z_]+$" SetFocusOnError="true"
                    Display="Dynamic" />
            </td>
        </tr>        
                <tr class="tdbg">
            <td class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <strong>项目名称：</strong><br />
                例如：产品、新闻、信息 等等</td>
            <td>
                <asp:TextBox ID="ItemName" class="l_input" runat="server" Width="155px"></asp:TextBox><span style="color: #ff0000"></span></td>
        </tr>    
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>模型描述：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtDescription" class="l_input" runat="server" TextMode="MultiLine" Width="365px" Height="43px" />
            </td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft">
                <strong>是否多条记录：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="RBLMultiFlag" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">一个用户只能输入一条此模型信息</asp:ListItem>
                    <asp:ListItem Value="1">一个用户可以输入多条此模型信息</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:HiddenField ID="HdnModelId" runat="server" />
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button" class="C_input" id="Cancel" value="取消" onclick="location.href='FunctionModel.aspx'" />                
            </td>
        </tr>
    </table> 
</form>
</body>
</html>
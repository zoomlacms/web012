<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_AddTemplateGroup, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
  
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<title>添加模板分类</title>

</head>
<body>
    <form id="form1" runat="server">
    
        <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span><a href='GameTemplateManage.aspx'>模板管理</a></span> &gt;&gt; <span><a href='GameTemplateGroupManage.aspx'>模板类型管理</a></span> &gt;&gt; <span><asp:Label ID="lbldaohang"
            runat="server" Text="添加模板分类"></asp:Label></span>
    </div>
 <div class="r_navigation">
            <table width="100%" border="0" cellpadding="0" cellspacing="1">
                <tr>
                    <td colspan="2" class="spacingtitle" align="center">
                       <asp:Label ID="lblhead" runat="server" Text=" 添加模板分类"></asp:Label>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        模板分类名称：
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" Width="200px" runat="server" 
                            class="l_input"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入模板分类" 
                            ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="height: 21px" colspan="4" align="center">
                        <asp:Button ID="btnSave" runat="server" Text="保  存" Width="60px" 
                            onclick="btnSave_Click" class="C_input" />
                        &nbsp;&nbsp;
                        <input type="button" onclick="javascript:location.href='GameTemplateGroupManage.aspx'" value="返 回" class="C_input"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

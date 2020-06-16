<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_EditOffice, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>更新职位</title>

         <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span>  &gt;&gt; <span><a href="">职位管理</a></span>&gt;&gt; <span>更新职位</span>
        </div>
       <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="6" class="spacingtitle">
                <span>编辑职位信息</span>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right">
                <strong>职位名称:</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:TextBox ID="txtOClass" runat="server" class="l_input"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入职位名称" 
                            ControlToValidate="txtOClass"></asp:RequiredFieldValidator>
            </td>           
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right">
                <strong>用户名:</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:TextBox ID="txtOUserID" runat="server" ReadOnly="true" class="l_input"></asp:TextBox>
            </td>           
        </tr>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right">
                <strong>级别:</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:TextBox ID="txtOlevel" runat="server" class="l_input"></asp:TextBox>
            </td>           
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right">
                <strong>公会名称:</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:TextBox ID="txtGName" runat="server" ReadOnly="true" class="l_input"></asp:TextBox>
            </td>           
        </tr>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right">
                <strong>权限:</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:TextBox ID="txtPermissions" runat="server" class="l_input"></asp:TextBox>
            </td>           
        </tr>
         <tr class="tdbg">
                <td style="height: 21px" colspan="4" align="center">
                    <asp:Button ID="btnEdit" runat="server" Text="修改" Width="60px" 
                        onclick="btnEdit_Click" class="C_input"/>
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="取　消" Width="53px"  OnClientClick="location.href='OfficeManage.aspx';return false;" class="C_input"/>
                </td>
            </tr>
    
   
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_EditMeadal, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>更新勋章</title>

     <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <div class="r_navigation">
        
        <span>后台管理</span>  &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
         <span><a href="MedalManager.aspx">勋章管理</a>  </span> &gt;&gt; <span>更新勋章信息</span>
         

    </div>
    
    <div class="r_navigation">
            <table width="100%" border="0" cellpadding="0" cellspacing="1" align="center">
                <tr>
                    <td colspan="2" class="spacingtitle" align="center">
                       更新勋章信息
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td  align="right">
                        勋章名称：
                    </td>
                    <td >
                        <asp:TextBox ID="txtMedalName" runat="server" class="l_input"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入勋章名称" 
                            ControlToValidate="txtMedalName" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td  align="right">
                        勋章图片地址：
                    </td>
                    <td >
                     <asp:TextBox ID="Clearimg" runat="server" Width="300px" />
                          <iframe id="bigimgs" src="../Common/onupload.aspx?menu=Clearimg" width="100%" height="30px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>  
                          <asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请输入勋章图片地址" 
                            ControlToValidate="Clearimg" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td align="center" colspan="2">
              <asp:Button ID="Button2" runat="server" Text="修改"   CssClass="C_input" 
                        onclick="Button2_Click" />
              &nbsp;&nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="取消"  Width="60px" OnClientClick="location.href='MedalManager.aspx';return false;" class="C_input"/>
            </td>
            </tr>
            </table>
            </div>
    </form>
</body>
</html>

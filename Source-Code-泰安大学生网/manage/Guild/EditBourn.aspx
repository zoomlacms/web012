<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_EditBourn, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>更新境界</title>

      <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="r_navigation">
        
        <span>后台管理</span>  &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
         <span><a href="BournManage.aspx">境界管理</a>  </span> &gt;&gt; <span>更新境界信息</span>

    </div>
    <br />
     <div>
        <div class="r_navigation">
            <table width="100%" border="0" cellpadding="0" cellspacing="1">
                <tr>
                    <td colspan="2" class="spacingtitle" align="center">
                       更新境界信息
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        境界名称：
                    </td>
                    <td>
                        <asp:TextBox ID="txtBournNamee" runat="server" class="l_input"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入类型名称" 
                            ControlToValidate="txtBournNamee" ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        境界点数：
                    </td>
                    <td>
                        <asp:TextBox ID="txtCount" runat="server" class="l_input" MaxLength="9999"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请输入境界点数" 
                            ControlToValidate="txtCount" ></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ErrorMessage="*请正确填写数字" Type="Integer" Display="Dynamic"
                            MaximumValue="99999" MinimumValue="1" ControlToValidate="txtCount"></asp:RangeValidator>
                          
                    </td>
                </tr>
                 <tr class="tdbg">
                    <td style="height: 21px" colspan="4" align="center">
                        <asp:Button ID="btnSave" runat="server" Text="保存" Width="60px" OnClick="btnSave_Click" class="C_input"/>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="取消"  Width="60px" OnClientClick="location.href='OfficeClassManage.aspx';return false;" class="C_input"/>
                    </td>
                </tr>
                </table>
                </div>
                </div>
    </form>
</body>
</html>

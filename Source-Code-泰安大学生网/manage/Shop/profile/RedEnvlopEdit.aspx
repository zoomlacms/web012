<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_RedEnvlopEdit, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>修改红包信息</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a href="RedEnvlopManage.aspx">红包管理</a></span> 
        &gt;&gt;<span>编辑红包</span></div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
        <tr>
            <td class="spacingtitle" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="修改红包"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg">
            <td valign="top" style="margin-top: 0px; margin-left: 0px;">
                <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft"><strong>兑现金额:</strong></td>
                        <td><asp:Label ID="lblMoney" runat="server"></asp:Label></td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft"><strong>红包：</strong></td>
                        <td>
                            <asp:TextBox ID="txtRedEnv" runat="server" class="l_input"></asp:TextBox>&nbsp;元
                            <font color="red">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtRedEnv" ErrorMessage="红包不能为空!"></asp:RequiredFieldValidator>
                            </font>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft"><strong>扣除手续费:</strong></td>
                        <td>
                            <asp:TextBox ID="txtFee" runat="server"  class="l_input"></asp:TextBox>
                        </td>
                    </tr>
                   
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft"><strong>备注：</strong></td>
                        <td>
                            <asp:TextBox ID="txtRemark" runat="server" class="l_input" TextMode="MultiLine" 
                                Height="107px" Width="289px"></asp:TextBox>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
        <tr>
            <td align="left" style="height: 59px">
                &nbsp; &nbsp;
                <asp:Button ID="EBtnSubmit" class="C_input" Text="修改" runat="server" 
                    onclick="EBtnSubmit_Click" />
                <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='RedEnvlopManage.aspx'"
                    id="Button2" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

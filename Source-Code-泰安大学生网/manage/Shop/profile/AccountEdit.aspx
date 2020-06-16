<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_AccountEdit, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>编辑用户收款信息</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a href="AccountManage.aspx">用户收款信息管理</a></span> 
        &gt;&gt;<span>编辑用户收款信息</span></div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
        <tr>
            <td class="spacingtitle" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="修改用户收款信息"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg">
            <td valign="top" style="margin-top: 0px; margin-left: 0px;">
                <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft"><strong>开户行及支行全称：</strong></td>
                        <td> <asp:TextBox ID="txtP" runat="server"  class="l_input"></asp:TextBox></td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft"><strong>开户人真实姓名:</strong></td>
                        <td>
                            <asp:TextBox ID="txtPName" runat="server"  class="l_input"></asp:TextBox>
                        </td>
                    </tr>
                     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft"><strong>开户帐号:</strong></td>
                        <td>
                            <asp:TextBox ID="txtAccount" runat="server"  class="l_input"></asp:TextBox>
                        </td>
                    </tr>
                     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft"><strong>您的真实姓名:</strong></td>
                        <td>
                            <asp:TextBox ID="txtTrName" runat="server"  class="l_input"></asp:TextBox>
                             <asp:Button ID="Button1" class="C_input" Text="绑定真实姓名" runat="server"   onclick="Button1_Click"  />
                             <asp:HiddenField ID="hfval" runat="server" />
                        </td>
                    </tr>
                   
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft"><strong>您的身份证号码：</strong></td>
                        <td>
                            <asp:TextBox ID="txtCardID" runat="server" class="l_input"></asp:TextBox>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
        <tr>
            <td align="left" style="height: 59px">
                &nbsp; &nbsp;
                <asp:Button ID="EBtnSubmit" class="C_input" Text="修改" runat="server"  onclick="EBtnSubmit_Click" />
                <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='AccountManage.aspx'" id="Button2" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

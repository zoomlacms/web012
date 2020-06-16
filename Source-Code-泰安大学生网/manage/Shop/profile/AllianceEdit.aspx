<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_AllianceEdit, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
    function check() {
        var pass = document.getElementById("txtPass").value;
        var password = document.getElementById("txtPassword").value;
        var val = document.getElementById("val").value;
        if (val == "0") {
            if (pass.length == 0) {
                alert("请输入帐号密码!");
                return false;
            }
            if (password.length == 0) {
                alert("请输入确认密码!");
                return false;
            }
            if (pass != password) {
                alert("两次密码不一致!");
                return false;
            }
        }
        return true;
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span><a href="ShopsiteManage.aspx">商家管理</a></span> &gt;&gt;
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</div>
<div class="clearbox">
</div>
<asp:HiddenField ID="val" runat="server" />
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr align="center">
        <td colspan="3" class="spacingtitle">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
        width="100%">
        <td class="tdbgleft" width="20%"><strong>联盟名称：</strong> </td>
        <td>
            <asp:TextBox ID="txtName" runat="server" class="l_input"></asp:TextBox>
            <font color="red">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="txtName" ErrorMessage="联盟名称不能为空!"></asp:RequiredFieldValidator>
            </font>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
        width="100%">
        <td class="tdbgleft"><strong>联盟帐号：</strong></td>
        <td>
            <asp:TextBox ID="txtAccount" runat="server" class="l_input"></asp:TextBox>
            <font color="red">*<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ControlToValidate="txtAccount" ErrorMessage="联盟帐号不能为空!"></asp:RequiredFieldValidator>(您在联盟的帐号)
            </font>
        </td>
    </tr>
    <tbody id="old" runat="server">
       <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
        width="100%">
        <td class="tdbgleft"> <strong>原帐号密码：</strong></td>
        <td>
            <asp:TextBox ID="txtOldpass" runat="server" class="l_input" TextMode="Password"></asp:TextBox>（不修改以下所有密码请留空）
        </td>
    </tr>
    </tbody>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
        width="100%">
        <td class="tdbgleft"> <strong>帐号密码：</strong></td>
        <td>
            <asp:TextBox ID="txtPass" runat="server" class="l_input" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
        width="100%">
        <td class="tdbgleft"> <strong>确认密码：</strong></td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" class="l_input" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
        width="100%">
        <td class="tdbgleft"><strong>网站编号：</strong></td>
        <td>
            <asp:TextBox ID="txtwid" runat="server" class="l_input"></asp:TextBox>（即该网站在联盟主的编号）
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtwid"
                ErrorMessage="网站编号不能为空!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbgbottom">
        <td colspan="2">
            &nbsp;
            <asp:Button ID="EBtnSubmit" class="C_input" Text="编辑联盟" runat="server" OnClick="EBtnSubmit_Click" OnClientClick="return check();" />
            &nbsp;
            <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='AllianceManage.aspx'"
                id="Button2" />
        </td>
    </tr>
</table>
</form>
</body>
</html>
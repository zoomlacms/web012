<%@ page language="C#" autoeventwireup="true" inherits="User_EditAccount, App_Web_sxbic0ln" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>修改密码保护资料</title>
<link rel="stylesheet" type="text/css" href="skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="skin/user_user.css" />
<style>
.box1 { font-size: 14px; font-weight: bold; color: #CC0000; margin-bottom: 10px; }
.rok { background-color: #FDFFCE; padding: 10px; border: 1px solid #FFBA43; margin-right: 10px; margin-left: 10px; margin-top: 20px; margin-bottom: 30px; }
.r1 { float: left; width: 25px; }
.r2 { float: left; width: 660px; }
.clearfix { clear: both; display: block; }
</style>
</head>
<body>
<form id="form1" runat="server">
    <table  width="850" height="264" border="0" align="center" cellpadding="7" cellspacing="0">
        <tr>
            <td colspan="2">
                <strong><font color="#325AA2">填写您目前的提示问题和答案</font></strong>
            </td>
        </tr>
        <tr>
            <td width="143" align="right">
                现在使用的提示问题1：
            </td>
            <td width="339">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                现在使用的答案1：
            </td>
            <td>
                <input name="answer1" runat="server" type="text" class="inputregbtm" id="answer1" size="20" maxlength="30">
                &nbsp; 
            </td>
        </tr>
        <tr>
            <td width="143" align="right">
                现在使用的提示问题2：
            </td>
            <td width="339">
               
                <asp:Label runat="server" ID="Label2" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                现在使用的答案2：
            </td>
            <td>
                <input runat="server" name="answer2" type="text" class="inputregbtm" id="answer2" size="20" maxlength="30">
                &nbsp; 
            </td>
        </tr>
        <tr>
            <td width="143" align="right">
                现在使用的提示问题3：
            </td>
            <td width="339">
               <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                现在使用的答案3：
            </td>
            <td>
                <input runat="server" name="answer3" type="text" class="inputregbtm" id="answer3" size="20" maxlength="30">
                &nbsp; 
            </td>
        </tr>
        <tr>
            <td height="45" align="right">
                &nbsp;
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="确认,进入下一步" onclick="Button1_Click"></asp:Button>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
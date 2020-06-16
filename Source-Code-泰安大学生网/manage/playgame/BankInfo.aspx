<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_BankInfo, App_Web_rliugfk2" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>银行信息</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
    <tr>
    <td  class="spacingtitle" colspan="2" align="center" >银行信息</td>
    </tr>
    <tr>
    <td>开户人：</td>
    <td id="tdName" runat ="server"></td>
    </tr>
    <tr>
    <td>开户银行：</td>
    <td id="tdBank" runat ="server"></td>
    </tr>
    <tr>
    <td>银行帐号</td>
    <td id="tdNumber" runat ="server"></td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>

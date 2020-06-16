<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_AddLogCategory, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../../Skin/User_Main.css" />
<link rel="stylesheet" type="text/css" href="../../Skin/user_user.css" />
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css"type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />    
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <li style="width: 83%; line-height: 30px">
                    <asp:TextBox ID="txtLogCategory" runat="server" class="l_input" />
                </li>
        <li style="width: 100%; float: left; line-height: 30px; text-align: left">
                    <asp:Button ID="BtnSubmit" runat="server" Text="添加" OnClick="BtnSubmit_Click" class="C_input" />
                    &nbsp;&nbsp;
                    <asp:Button ID="BtnCancle" runat="server" Text="取消" OnClick="BtnCancle_Click" ValidationGroup="BtnCancel" class="C_input" />
                </li>
    </div>
    </form>
</body>
</html>

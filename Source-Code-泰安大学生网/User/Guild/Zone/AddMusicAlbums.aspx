<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_AddMusicAlbums, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
        <asp:Label ID="Label1" runat="server" Text="专辑名:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtMusic" runat="server" Width="200" CssClass="l_input"></asp:TextBox>
    
        <asp:Button ID="Button1" runat="server" Text="添加" Width="62px"  class="C_input"  onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Common.MultiDropList, App_Web_33xyjpeu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>多级选项</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/MasterPage.css" type="text/css" rel="stylesheet" />
</head>
<body class="tdbg">
<form id="form1" runat="server">
    &nbsp;<asp:DropDownList ID="DDLGrade1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DDL_Grade1ChangeIndex">
    </asp:DropDownList>&nbsp;&nbsp;
    <asp:DropDownList ID="DDLGrade2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DDL_Grade2ChangeIndex">
    </asp:DropDownList>&nbsp;&nbsp;
    <asp:DropDownList ID="DDLGrade3" runat="server" Visible="false" AutoPostBack="true" OnSelectedIndexChanged="DDLGrade3_SelectedIndexChanged">
    </asp:DropDownList><asp:HiddenField ID="HdnCateID" runat="server" /><asp:HiddenField ID="HdnField" runat="server" />
</form>
</body>
</html>

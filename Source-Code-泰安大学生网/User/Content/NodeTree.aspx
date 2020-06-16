﻿<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Content.NodeTree, App_Web_3e54r2y4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head runat="server">
<title>栏目导航</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
	body, td, th
	{
		font-size: 9pt;
	}
  </style>
</head>
<script>
    function gotourl(url) {
        try {
            parent.MDIOpen(url); void (0);
        } catch (Error) {
        parent.frames["I2"].location = "../../" + url; void (0);
        }
    }
</script>

<body>
    <form id="form1" runat="server">
    <asp:TreeView ID="tvNav" runat="server" ExpandDepth="0" ShowLines="True" EnableViewState="False"
        NodeIndent="10">
        <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
        <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
        <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
        <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
    </asp:TreeView>
    </form>
</body>
</html>

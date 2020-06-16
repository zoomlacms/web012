<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.indexSearch, App_Web_r0nboqti" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html runat="server">
<head id="Head1">
<title>搜索结果</title>
<link rel="stylesheet" type="text/css" href="../user/skin/user_user.css" />
<script language="javascript">
    function setEmpty(obj) {
        if (obj.value == "请输入关键字") {
            obj.value = "";
        }
    }
    function settxt(obj) {
        if (obj.value == "") {
            obj.value = "请输入关键字";
        }
    }
</script>
</head>
<body runat="server">
<form runat="server" id="myform">
<div id="Div1" runat="server" style="float: left;">
     <div style="display:none">
        <asp:DropDownList ID="DDLNode" runat="server" Width="100px">
        </asp:DropDownList></div>
<table><tr><td>
        <asp:TextBox ID="TxtKeyword" runat="server" onclick="setEmpty(this)" onblur="settxt(this)"
            Text="请输入关键字" style=" border:1px solid #9B9B9B"></asp:TextBox></td><td>
        <asp:Button ID="btnSearch" runat="server" Text="" Width="75px" OnClick="btnSearch_Click" style="height:22px;background:url(/Template/taian/style/images/kuai.jpg) no-repeat ;border:0"/></td>
		</tr></table>


    </div>
</form>
</body>
</html>
<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.CreateHtml, App_Web_x0s3sxna" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>发布操作</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script>function SetPr(val,curr){
 document.getElementById('tp').style.width = val;document.getElementById('tn').innerText=val;
}
function SetTotal(val) {
document.getElementById('total').innerText = val;
}
</script>
</head>
<body>
<form id="form1" runat="server">
 <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span><a href="ContentManage.aspx">内容管理</a></span> &gt;&gt; 
        <span><a href="CreateHtmlContent.aspx">生成发布</a></span>
    </div>
    <div class="clearbox">
    </div>
<div align='center'>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <center><img ID="Img1"  runat="server" src="/App_Themes/AdminDefaultTheme/Images/loading_.gif" ></center>
                    <br /> <br />
                    <asp:Timer ID="Timer1" runat="server" Interval="10" OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:TextBox ID="TextBox1" runat="server" Height="301px" TextMode="MultiLine"   Width="712px"></asp:TextBox>
                </img>
            </ContentTemplate>
        </asp:UpdatePanel>
   <%-- <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />--%>
</div>
</form>
</body>
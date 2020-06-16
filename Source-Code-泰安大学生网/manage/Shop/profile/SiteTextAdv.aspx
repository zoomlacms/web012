<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_SiteTextAdv, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>分站文字广告</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div>
    <div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>返利管理</span> &gt;&gt; <span><a href="SiteTextAdvManage.aspx"
        title="分站文字广告管理">分站文字广告管理</a></span> &gt;&gt;<span>编辑文字广告</span>
</div>
<div class="clearbox">
</div>
<table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
   <td class="spacingtitle" colspan="2" style="text-align: center">
       <strong><asp:Label ID="Label1" runat="server" Text="添加文字广告"></asp:Label></strong> </td>
</tr>
<tr valign="middle" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="right" style="width: 25%;" class="tdbgleft" ><strong>广告标题：</strong></td>
    <td class="tdbg"><asp:TextBox ID="txtTitle" runat="server" CssClass="l_input"></asp:TextBox>
      * <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="广告标题不能为空!"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="right" class="tdbgleft"><strong>链接地址：</strong></td>
    <td><asp:TextBox ID="txturl" runat="server" CssClass="l_input"></asp:TextBox>
     * <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txturl" ErrorMessage="链接地址不能为空!"></asp:RequiredFieldValidator></td>
</tr>
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="right" class="tdbgleft"><strong>链接目标：</strong></td>
    <td>
        <asp:RadioButtonList ID="rdtarget" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Value="0" Selected="True">新窗口</asp:ListItem>
        <asp:ListItem Value="1">原窗口</asp:ListItem>
        </asp:RadioButtonList>
    </td>
</tr>
</table>
<div align="center">
    <asp:Button ID="EBtnAdZone" runat="server" OnClick="EBtnAdZone_Click" Text="保存" class="C_input"/> &nbsp;&nbsp; &nbsp;
    <input id="Cancel"  name="Cancel" onclick="GoBack();" style="cursor: hand" type="button" value="取消" class="C_input" />        
    <asp:HiddenField ID="hdid" runat="server" />   
</div>
</div>
<script>
function GoBack() {
    window.location.href = "SiteTextAdvManage.aspx";
}
</script>
</form>
</body>
</html>

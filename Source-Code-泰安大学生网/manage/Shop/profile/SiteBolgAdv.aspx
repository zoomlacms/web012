<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_SiteBolgAdv, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>博客内容推广</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div>
    <div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>返利管理</span> &gt;&gt; <span><a href="SiteBlogManage.aspx"
        title="分站博客内容推广">分站博客内容推广</a></span> &gt;&gt;<span>编辑博客内容推广</span>
</div>
<div class="clearbox">
</div>
<table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
   <td class="spacingtitle" colspan="2" style="text-align: center">
       <strong><asp:Label ID="Label1" runat="server" Text="添加博客内容推广"></asp:Label></strong> </td>
</tr>
<tr valign="middle" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="right" style="width: 20%;" class="tdbgleft" ><strong>推广标题：</strong></td>
    <td class="tdbg"><asp:TextBox ID="txtTitle" runat="server" CssClass="l_input"></asp:TextBox>
      * <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="推广标题不能为空!"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr valign="middle" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="right" style="width: 20%;" class="tdbgleft" ><strong>推广商家：</strong></td>
    <td class="tdbg"><asp:DropDownList ID="ddlShop" runat="server"></asp:DropDownList></td>
</tr>
<tr valign="middle" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="right" style="width: 20%;" class="tdbgleft" ><strong>最高返利：</strong></td>
    <td class="tdbg"><asp:TextBox ID="txtrebate" runat="server" CssClass="l_input"></asp:TextBox>
      * <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrebate" ErrorMessage="最高返利不能为空!"></asp:RequiredFieldValidator>
   </td>
</tr>
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="right" class="tdbgleft"><strong>链接地址：</strong></td>
    <td><asp:TextBox ID="txturl" runat="server" CssClass="l_input"></asp:TextBox>
     * <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txturl" ErrorMessage="链接地址不能为空!"></asp:RequiredFieldValidator></td>
</tr>
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="right" class="tdbgleft" valign="top"><strong>推广内容：</strong></td>
    <td>
      <textarea cols="80" rows="200" id="content" style="width:500px; height:500px;" name="infoeditor" runat="server"></textarea>
        <script id="Script2" type="text/javascript">
            //<![CDATA[
            CKEDITOR.replace('content',
        {
            skin: 'v2',
            enterMode: 2,
            shiftEnterMode: 2,
            toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
        });
            //]]>
        </script>
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

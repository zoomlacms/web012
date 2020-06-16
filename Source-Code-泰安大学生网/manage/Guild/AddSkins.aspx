<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_AddSkins, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<head id="Head1" runat="server">
<title>添加模板</title>

<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
     
<script type="text/javascript"> 
<!--
    function killErrors() {
        return true;
    }
    window.onerror = killErrors;
 -->

</script>


<style type="text/css">
    .style1
    {
        background: #e0f7e5;
        /*line-height: 120%;*/    
        padding: 2px;
        width: 19%;
    }
</style>


</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
        <span><a href="SkinsManage.aspx">风格管理</a></span> &gt;&gt; <span>
            <asp:Label ID="lbldaohang" runat="server" Text="添加风格"></asp:Label></span></div>
               <div class="clearbox">
    </div>
    <div class="r_navigation">
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr>
                <td colspan="2" class="spacingtitle" align="center">
                    <asp:Label ID="lblhead" runat="server" Text="添加风格"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="right">
                    风格标题：
                </td>
                <td>
                    <asp:TextBox ID="txtSName" runat="server" Width="30%" class="l_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入风格标题"
                        ControlToValidate="txtSName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="right">
                    风格类型：
                </td>
                <td>
                    <asp:DropDownList ID="GroupName" runat="server" DataTextField="GName" 
                        DataValueField="GSID" onselectedindexchanged="GroupName_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="1">背景图片</asp:ListItem>
                    <asp:ListItem Value="2">鼠标样式</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="right">
                    风格状态：
                </td>
                <td>
                    <asp:RadioButtonList ID="rbState" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1" Selected="True">可用</asp:ListItem>
                        <asp:ListItem Value="0">不可用</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right">
                   显示图片：
                </td>
                   <td class="tdbgleft" align="left">
                   <asp:TextBox ID="txtUpload" runat="server" Width="314px" class="l_input"></asp:TextBox>  <br />
                      <iframe id="Iframe1" src="../Common/ThumbnailUpload.aspx?CID=Upload&ftype=1" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
                   </td>
                </tr>      
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="mouseid"  runat="server" visible="false">
                <td class="tdbgleft" align="right">
                   鼠标样式：
                </td>
                   <td class="tdbgleft" align="left">
                   <asp:TextBox ID="txtMouse" runat="server" Width="314px" class="l_input"></asp:TextBox>  <br />
                      <iframe id="Iframe2" src="../Common/ThumbnailUpload.aspx?CID=Mouse&ftype=1" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
                   </td>
                </tr>      
            <tr class="tdbg">
                <td style="height: 21px" colspan="4" align="center">
                    <asp:Button ID="btnSave" runat="server" Text="保 存" Width="60px" OnClick="btnSave_Click"
                        class="C_input" />
                    &nbsp;&nbsp;
                    <input type="button" onclick="javascript:location.href='SkinsManage.aspx'" value="返 回"
                        class="C_input" />
                </td>
            </tr>
        </table>
    </div>
    </form>
    <script id="headscript" type="text/javascript">
        //<![CDATA[
        var editor;
        function changeEnter() {
            if (editor)
                editor.destroy(true);
            editor = CKEDITOR.replace('txtContent',
{
    skin: 'v2',
    enterMode: 2,
    shiftEnterMode: 2,
    toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
        }
        window.onload = changeEnter();
        //]]>
    </script>
</body>
</html>

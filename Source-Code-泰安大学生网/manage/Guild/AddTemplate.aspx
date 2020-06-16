<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_AddTemplate, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<head runat="server">
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

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
        <span><a href='GameTemplateManage.aspx'>模板管理</a></span> &gt;&gt; <span>
            <asp:Label ID="lbldaohang" runat="server" Text="添加模板"></asp:Label>
    </div>
    <div class="r_navigation">
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr>
                <td colspan="2" class="spacingtitle" align="center">
                    <asp:Label ID="lblhead" runat="server" Text="添加模板"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right">
                    模板名称：
                </td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="314px" class="l_input"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入模板标题" ControlToValidate="txtTitle"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right">
                    模板类型：
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Name" DataValueField="ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right">
                    样式文件路径：
                </td>
                <td>
                    <asp:TextBox ID="txtUp" runat="server" Width="314px" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right">
                    缩略图：
                </td>
                <td class="tdbgleft" align="left">
                    <asp:TextBox ID="txtUpload" runat="server" Width="314px" class="l_input"></asp:TextBox>
                    <br />
                    <iframe id="Iframe1" src="../Common/ThumbnailUpload.aspx?CID=Upload&ftype=1" marginheight="0"
                        marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right">
                    模板状态：
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="0">不可用</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">可用</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right">
                    内容：
                </td>
                <td>
                    <asp:TextBox ID="txtcontent" runat="server" Width="300px" TextMode="MultiLine" Height="420px"
                        class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg">
                <td style="height: 21px" colspan="4" align="center">
                    <asp:Button ID="btnSave" runat="server" Text="保  存" Width="60px" OnClick="btnSave_Click"
                        class="C_input" />
                    &nbsp;&nbsp;
                    <input type="button" onclick="javascript:location.href='GameTemplateManage.aspx'"
                        value="返 回" class="C_input" />
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
                editor = CKEDITOR.replace('txtcontent',
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

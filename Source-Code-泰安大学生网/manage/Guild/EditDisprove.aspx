<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_EditDisprove, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>编辑举报管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
    <script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
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
      
         <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span><a href="GHManage.aspx">公会管理</a></span> &gt;&gt; <span><a href="Feedback.aspx" title="举报管理">举报管理</a></span> &gt;&gt;<span> 编辑举报信息<span>
    </div>
   <div class="clearbox">
    </div>
    <table>
    </table>
       <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="6" class="spacingtitle">
                <span>编辑举报信息</span>
            </td>
        </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right">
                <strong>举报类型:</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:DropDownList ID="DrType" runat="server">
                </asp:DropDownList>
            </td>           
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" align="right">
                <strong>备注说明:</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:TextBox ID="txtText" runat="server"  TextMode="MultiLine" Width="400" Height="280px " class="l_input"></asp:TextBox>
            </td>           
        </tr>
         
           <tr class="tdbg">
                <td colspan="4" align="center">
                    <asp:Button ID="btnDisprove" runat="server" Text="更新举报信息" Width="100px"  
                        TabIndex="12" class="C_input" onclick="btnDisprove_Click" />
                    &nbsp;&nbsp;
                   <asp:Button ID="btnCancel" runat="server" Text="取　消" Width="100px"   OnClientClick="location.href='Disprove.aspx';return false;" class="C_input"/>
                </td>
            </tr>
  </table>
    </form>
    
        <script id="headscript" type="text/javascript">
            //<![CDATA[
            var editor;
            function changeEnter() {
                if (editor)
                    editor.destroy(true);
                editor = CKEDITOR.replace('txtText',
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

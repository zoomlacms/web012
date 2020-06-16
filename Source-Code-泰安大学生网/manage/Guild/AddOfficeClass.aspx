<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_AddOfficeClass, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>添加职位</title>

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
        
        <span>后台管理</span>  &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span><a href="OfficeClassManage.aspx">职位管理</a>  </span> &gt;&gt; <span>
            <asp:Label ID="Label1" runat="server" Text="添加职位"></asp:Label></span>
    </div>
     <div class="clearbox">
    </div>
    <div>
        <div class="r_navigation">
            <table width="100%" border="0" cellpadding="0" cellspacing="1">
                <tr>
                    <td colspan="2" class="spacingtitle" align="center">
                        <asp:Label ID="Label2" runat="server" Text="添加职位"></asp:Label>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right" style="width:300px">
                        职位名称：
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="259px" class="l_input" 
                            Height="18px"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入职位名称" 
                            ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right" style="width:300px">
                        职位等级：
                    </td>
                    <td>
                        <asp:DropDownList ID="OfficeNum" runat="server">
                            <asp:ListItem Value="1">一级</asp:ListItem>
                            <asp:ListItem Value="2">二级</asp:ListItem>
                            <asp:ListItem Value="3">三级</asp:ListItem>
                            <asp:ListItem Value="4">四级</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right" style="width:300px">
                        职位权限：
                    </td>
                    <td>
                        <asp:CheckBoxList ID="Permissions" runat="server" RepeatColumns="7">
                            <asp:ListItem Value="1">前台登录</asp:ListItem>
                            <asp:ListItem Value="1">发布内容</asp:ListItem>
                            <asp:ListItem Value="1">参加会议</asp:ListItem>
                            <asp:ListItem Value="1">参与投票</asp:ListItem>
                            <asp:ListItem Value="1">进入论坛</asp:ListItem>
                            <asp:ListItem Value="1">管理论坛</asp:ListItem>
                            <asp:ListItem Value="1">管理公会</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right" style="width:300px">
                        管理权限：
                    </td>
                    <td>
                        <asp:CheckBoxList ID="ManageInfo" runat="server" RepeatColumns="7">
                            <asp:ListItem Value="1">审核成员</asp:ListItem>
                            <asp:ListItem Value="1">公会信息</asp:ListItem>
                            <asp:ListItem Value="1">入会条件</asp:ListItem>
                            <asp:ListItem Value="1">主打游戏</asp:ListItem>
                            <asp:ListItem Value="1">欢迎词</asp:ListItem>
                            <asp:ListItem Value="1">公告管理</asp:ListItem>
                            <asp:ListItem Value="1">栏目管理</asp:ListItem>
                            
                            <asp:ListItem Value="1">模板修改</asp:ListItem>
                            <asp:ListItem Value="1">通栏管理</asp:ListItem>
                            <asp:ListItem Value="1">级别管理</asp:ListItem>
                            <asp:ListItem Value="1">个性设置</asp:ListItem>
                            <asp:ListItem Value="1">投票管理</asp:ListItem>
                            <asp:ListItem Value="1">友情链接</asp:ListItem>
                            <asp:ListItem Value="1">下载管理</asp:ListItem>
                            <asp:ListItem Value="1">音乐管理</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        职位备注：
                    </td>
                    <td>
                        <asp:TextBox ID="txtBackup" runat="server" TextMode="MultiLine" Height="171px" 
                            Width="768px" class="l_input"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="height: 21px" colspan="4" align="center">
                        <asp:Button ID="btnSave" runat="server" Text="保  存" Width="60px" OnClick="btnSave_Click" class="C_input"/>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="返  回" Width="60px" OnClientClick="location.href='OfficeClassManage.aspx';return false;" class="C_input"/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
    <script id="headscript" type="text/javascript">
            //<![CDATA[
            var editor;
            function changeEnter() {
                if (editor)
                    editor.destroy(true);
                editor = CKEDITOR.replace('txtBackup',
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

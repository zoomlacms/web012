<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_UploadSetting, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>上传设置</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script src="../Common/Common.js" type="text/javascript"></script>

    <script src="/JS/RiQi.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>设置</span> &gt;&gt; <span>论坛设置</span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="Div0" class="tabtitle">
                    <a href="BasicSettings.aspx">普通配置</a>
                </td>
                <td id="Div1" class="tabtitle">
                    <a href="HomeShow.aspx">首页显示</a>
                </td>
                <td id="Div2" class="tabtitle">
                    <a href="Register.aspx">用户注册</a>
                </td>
                <td id="Div3" class="tabtitle">
                    <a href="ForumSettings.aspx">论坛设置</a>
                </td>
                <td id="Div4" class="titlemouseover">
                    <a href="UploadSetting.aspx">上传设置</a>
                </td>
                <td id="Div5" class="tabtitle">
                    <a href="MailSettings.aspx ">邮件设置</a>
                </td>
                <td id="Div6" class="tabtitle">
                    <a href="FilterSet.aspx">过滤设置</a>
                </td>
                <td id="Div7" class="tabtitle">
                    <a href="Code.aspx">验证码</a>
                </td>
                <td id="Div8" class="tabtitle">
                    <a href="MoneyExperienc.aspx">金钱与经验</a>
                </td>
                <td id="Div9" class="tabtitle">
                    <a href="IntegratedSet.aspx">整合设置</a>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px">
                <b>上传组件选择</b>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>选择上传组件：</strong>
            </td>
            <td>
                <asp:DropDownList ID="ChooseUpload" runat="server">
                    <asp:ListItem>关闭</asp:ListItem>
                    <asp:ListItem>ADODB.Stream</asp:ListItem>
                    <asp:ListItem>AspUpload</asp:ListItem>
                    <asp:ListItem>SoftArtisans.FileUp</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>附件保存模式：</strong>
            </td>
            <td>
                <asp:DropDownList ID="AnnexSaveMode" runat="server">
                    <asp:ListItem Selected="True">数据库</asp:ListItem>
                    <asp:ListItem>硬盘</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>允许单个头像文件的大小 (KB)：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtHeadFileSize" runat="server" class="l_input">100</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator7" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TxtHeadFileSize" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong>允许单个帖子附件的大小 (KB)：</strong>
            </td>
            <td>
                <asp:TextBox ID="TetSizeSingle" runat="server" class="l_input">200</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TetSizeSingle" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>设置用户上传文件夹的最大容量 (KB)：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TetSetMaxUpload" runat="server" class="l_input">10240</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator2" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TetSetMaxUpload" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong><b>允许上传的附件类型（请用“|”分隔）：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TetUploadiAttachmentTypes" runat="server" Width="210px" class="l_input">gif|jpg|png|bmp|swf|txt|mid|doc|xls|zip|rar</asp:TextBox>
            </td>
        </tr>
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px; height: 23px;">
                <strong><b>水印组件选择</b></strong>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px; height: 23px;">
                <strong><b>水印图片组件：</b></strong>
            </td>
            <td>
                <asp:DropDownList ID="WatermarkImageComponents" runat="server">
                    <asp:ListItem>关闭</asp:ListItem>
                    <asp:ListItem>AspJpeg</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px; height: 23px;">
                <strong><b>水印效果：</b></strong>
            </td>
            <td>
                <asp:DropDownList ID="WatermarkEffect" runat="server">
                    <asp:ListItem Selected="True">水印文字</asp:ListItem>
                    <asp:ListItem>水印图片</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>水印水平位置：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="WatermarkLevelPosition" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">左</asp:ListItem>
                    <asp:ListItem>中</asp:ListItem>
                    <asp:ListItem>右</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>水印垂直位置：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="WatermarkVerticalPosition" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">上</asp:ListItem>
                    <asp:ListItem>中</asp:ListItem>
                    <asp:ListItem>下</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px">
                <strong><b>水印文字</b></strong>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>水印文字：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TxtWatermarkText" runat="server" class="l_input">BBSXP</asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>水印文字字体：</b></strong>
            </td>
            <td>
                <asp:DropDownList ID="WatermarkTextFont" runat="server">
                    <asp:ListItem Selected="True">宋体</asp:ListItem>
                    <asp:ListItem>黑体</asp:ListItem>
                    <asp:ListItem>Arial</asp:ListItem>
                    <asp:ListItem>Arial Black</asp:ListItem>
                    <asp:ListItem>Times New Roman</asp:ListItem>
                    <asp:ListItem>Garamond</asp:ListItem>
                    <asp:ListItem>Lucida Handwriting</asp:ListItem>
                    <asp:ListItem>Verdana</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>水印文字大小：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="TetWatermarkTextSize" runat="server" Width="30px" class="l_input">25</asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator5" ValidationExpression="^[1-9]\d*|0$"
                    ControlToValidate="TetWatermarkTextSize" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>水印文字颜色：</b></strong>
            </td>
            <td>
                <asp:TextBox ID="Titlecolor" runat="server" Text='' Width="10%" class="l_input"></asp:TextBox>

                <script language="JavaScript" type="text/javascript">
                    var color;
                    function SelectColor(t, clientId) {
                        var url = "../Common/SelectColor.aspx?d=f&t=6";
                        var old_color = (document.getElementById(clientId).value.indexOf('#') == 0) ? '&' + document.getElementById(clientId).value.substr(1) : '&' + document.getElementById(clientId).value;
                        if (document.all) {
                            color = showModalDialog(url + old_color, '', "dialogWidth:18.5em; dialogHeight:16.0em; status:0");
                            if (color != null) {
                                document.getElementById(clientId).value = color;
                            } else {
                                document.getElementById(clientId).focus();
                            }
                        } else {
                            color = window.open(url + '&' + clientId, "hbcmsPop", "top=200,left=200,scrollbars=yes,dialog=yes,modal=no,width=300,height=260,resizable=yes");
                        }
                    }
                </script>

                &nbsp;<img onclick="SelectColor(this,'Titlecolor');" src="/App_Themes/AdminDefaultTheme/images/selectclolor.gif"
                    align="absmiddle" style="border-width: 0px; cursor: pointer" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <strong><b>水印文字是否粗体：</b></strong>
            </td>
            <td>
                <asp:RadioButtonList ID="WatermarkTextBold" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">是</asp:ListItem>
                    <asp:ListItem>否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="spacingtitle">
            <td class="spacingtitle" style="width: 200px">
                <strong><b>水印图片</b></strong>
            </td>
            <td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong>水印图片的相对路径：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtWatermarkImagePath" runat="server" class="l_input" Width="210px">Images/Watermark.gif</asp:TextBox>
            </td>
        </tr>
    </table>
    <table border="0" width="100%" align="center">
        <tr>
            <td align="left" height="20">
                <asp:Button ID="Button2" runat="server" Text="保存设置" OnClick="Button2_Click" class="C_input" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

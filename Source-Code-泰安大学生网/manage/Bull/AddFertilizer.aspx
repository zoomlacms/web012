<%@ page language="C#" autoeventwireup="true" inherits="manage_Bull_AddFertilizer, App_Web_tab2sdlr" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>肥料管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>斗牛场管理</span> &gt;&gt; <span><a href="FertilizerManage.aspx">
            管理肥料</a></span></div>
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border" align="right">
        <tr class="spacingtitle">
            <td align="center" colspan="2" style="height: 30px;">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 30%">
                肥料名称：
            </td>
            <td>
                <asp:TextBox ID="FertilizerName" runat="server" Width="336px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%">
                一次减少生长过程时间：
            </td>
            <td>
                <asp:TextBox ID="Reduction" runat="server" Width="56px" class="l_input" />小时
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="top" style="width: 30%">
                缩略图地址：
            </td>
            <td>
                <asp:TextBox ID="SmallImg" runat="server" Width="336px" class="l_input" />
                <iframe id="Iframe1" style="top: 2px; height: 35px" src="../shop/fileupload.aspx?menu=SmallImg"
                    width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">
                </iframe>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="top" style="width: 30%">
                Swf地址：
            </td>
            <td>
                <asp:TextBox ID="ShowSwf" runat="server" Width="336px" class="l_input" />
                <iframe id="Iframe2" style="top: 2px; height: 35px" src="../shop/fileupload.aspx?menu=ShowSwf"
                    width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">
                </iframe>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="top" style="width: 30%">
                零售价格：
            </td>
            <td>
                <asp:TextBox ID="Price" runat="server" Width="57px" class="l_input" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="EBtnSubmit" runat="server" Text="保存" class="C_input" OnClick="EBtnSubmit_Click" />
                <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" />
            </td>
        </tr>
    </table>
    <br />
    </form>
</body>
</html>

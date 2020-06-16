<%@ page language="C#" autoeventwireup="true" inherits="manage_Bull_AddGrass, App_Web_tab2sdlr" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>草场管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 30%;
            height: 23px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 30%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>斗牛场管理</span> &gt;&gt; <span><a href="GrassManage.aspx">
            管理草</a></span> &gt;&gt; 添加草
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td align="center" colspan="2" style="height: 30px;">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                草名称：
            </td>
            <td>
                <asp:TextBox ID="GrassName" runat="server" Width="205px" class="l_input" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="GrassName"
                    ErrorMessage="草名称不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                种子价格：
            </td>
            <td>
                <asp:TextBox ID="Buy" runat="server" Width="117px" class="l_input" />
                &nbsp;(单价)<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="Buy" ErrorMessage="种子价格不能为空！" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="style1">
                产量/收获次数（季）：
            </td>
            <td class="style2">
                <asp:TextBox ID="Fruit" runat="server" Width="117px" class="l_input" Text="0" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Fruit"
                    ErrorMessage="产量不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="style1">
                收获季（次）数：
            </td>
            <td class="style2">
                <asp:DropDownList ID="Season" runat="server">
                    <asp:ListItem>请选择</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Season"
                    ErrorMessage="收获季（次）数不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%">
                出售价格：
            </td>
            <td>
                <asp:TextBox ID="Ask" runat="server" Width="117px" class="l_input" Text="0" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Ask"
                    ErrorMessage="出售价格不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%">
                保留数量：
            </td>
            <td>
                <asp:TextBox ID="Harvest" runat="server" Width="117px" class="l_input" Text="0" />
                棵 (被偷最低保留数量)<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ControlToValidate="Harvest" ErrorMessage="保留数量不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%">
                单季收获获得经验值：
            </td>
            <td>
                <asp:TextBox ID="Experience" runat="server" Width="117px" class="l_input" Text="0" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Experience"
                    ErrorMessage="单季收获获得经验值不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%">
                经验/小时：
            </td>
            <td>
                <asp:TextBox ID="HouseExperience" runat="server" Width="117px" class="l_input" Text="0" />
                (每小时获得经验)<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                    ControlToValidate="HouseExperience" ErrorMessage="经验不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%">
                种植级别：
            </td>
            <td>
                <asp:TextBox ID="Rank" runat="server" Width="117px" class="l_input" Text="0" />
                (种植需要达到等级)<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                    ControlToValidate="Rank" ErrorMessage="种植级别不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="style3">
                发芽时间：
            </td>
            <td>
                <asp:TextBox ID="sprout" runat="server" Text="0" Width="105px" class="l_input">0</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="sprout"
                    ErrorMessage="发芽时间不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="style3">
                发芽图：
            </td>
            <td>
                <asp:TextBox ID="GrassImg" runat="server" Width="336px" class="l_input" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="GrassImg"
                    ErrorMessage="草小图不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <iframe id="Iframe1" style="top: 2px; height: 35px" src="../shop/fileupload.aspx?menu=GrassImg"
                    width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">
                </iframe>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="style3">
                大叶子时间：
            </td>
            <td>
                <asp:TextBox ID="leaf" runat="server" Text="0" Width="105px" class="l_input">0</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="leaf"
                    ErrorMessage="大叶子时间不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%">
                大叶图：
            </td>
            <td>
                <asp:TextBox ID="GrassBigImg" runat="server" Width="336px" class="l_input" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="GrassBigImg"
                    ErrorMessage="草大图不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <iframe id="bigimgs" style="top: 2px; height: 35px" src="../shop/fileupload.aspx?menu=GrassBigImg"
                    width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">
                </iframe>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="style3">
                成熟时间：
            </td>
            <td>
                <asp:TextBox ID="txt_mature" runat="server" Text="0" Width="105px" class="l_input">0</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txt_mature"
                    ErrorMessage="成熟时间不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="style3">
                成熟图：
            </td>
            <td>
                <asp:TextBox ID="shu" runat="server" Width="336px" class="l_input" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="GrassImg"
                    ErrorMessage="草小图不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <iframe id="Iframe3" style="top: 2px; height: 35px" src="../shop/fileupload.aspx?menu=shu"
                    width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">
                </iframe>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="style3">
                说明/备注：
            </td>
            <td>
                <asp:TextBox ID="GrassInfo" runat="server" Height="100px" Width="336px" class="l_input" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="EBtnSubmit" runat="server" Text="添 加" class="C_input" OnClick="EBtnSubmit_Click" />
                <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List"
                    ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
    </table>
    <br />
    </form>
</body>
</html>

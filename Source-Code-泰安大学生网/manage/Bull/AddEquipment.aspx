<%@ page language="C#" autoeventwireup="true" inherits="manage_Bull_AddEquipment, App_Web_tab2sdlr" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>添加装备</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>斗牛场管理</span> &gt;&gt; <span><a href="DamageManage.aspx">
            装备管理</a></span> &gt;&gt; <a href="AddDamage.aspx">[添加装备]</a></div>
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td align="center" colspan="2" style="height: 30px;">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 390px;">
                装备名称：
            </td>
            <td>
                <asp:TextBox ID="TxtGroupName" runat="server" Width="336px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="display:none">
            <td valign="top" align="right" style="width: 390px;">
                选择类型：
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>常规装备</asp:ListItem>
                    <asp:ListItem>装备套装</asp:ListItem>
                    
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 390px;">
                装备分类：
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>初阶普装</asp:ListItem>
                    <asp:ListItem>中阶普装</asp:ListItem>
                    <asp:ListItem>高阶普装</asp:ListItem>
                    <asp:ListItem>高攻套</asp:ListItem>
                    <asp:ListItem>高防套</asp:ListItem>
                    <asp:ListItem>高准套</asp:ListItem>
                    <asp:ListItem>高躲套</asp:ListItem>
                    <asp:ListItem>幸运牛尾</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                增加攻击：
            </td>
            <td>
                <asp:TextBox ID="TxtForumColumns" runat="server" Width="155px" class="l_input" />
            &nbsp;点</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                增加防御：
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="155px" class="l_input" />
            &nbsp;点</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                增加速度：
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="155px" class="l_input" />
            &nbsp;点</td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                增加躲闪：
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="155px" class="l_input" />
            &nbsp;点</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                增加幸运：
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="155px" class="l_input" />
            &nbsp;点</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                增加悟性：
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="155px" class="l_input" />
            &nbsp;点</td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="top" style="width: 390px;">
                金币购买：
            </td>
            <td>
                <asp:TextBox ID="TxtForumColumns1" runat="server" Width="76px" 
                    class="l_input" />
            &nbsp;金元</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="top" style="width: 390px;">
                久乐币购买：
            </td>
            <td>
                <asp:TextBox ID="TxtForumColumns2" runat="server" Width="75px" 
                    class="l_input" />
            &nbsp;久乐币</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="top" style="width: 390px;">
                当前状态：
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="0">停用</asp:ListItem>
                    <asp:ListItem Selected="True" Value="1">启用</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="top" style="width: 390px;">
                拥有数量：
            </td>
            <td>
                <asp:TextBox ID="TxtForumColumns3" runat="server" Width="155px" class="l_input" />
            &nbsp;套</td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="top" style="width: 390px;">
                装备图片(显示物品箱)：
            </td>
            <td>
                <asp:TextBox ID="EquipmentImg" runat="server" Width="336px" class="l_input" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="EquipmentImg"
                    ErrorMessage="装备图片不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <iframe id="Iframe1" style="top: 2px; height: 35px" src="../shop/fileupload.aspx?menu=EquipmentImg"
                    width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">
                </iframe>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="top" style="width: 390px;">
                装备小图(显示与牛身上)：
            </td>
            <td>
                <asp:TextBox ID="EquipmentxsImg" runat="server" Width="336px" class="l_input" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EquipmentxsImg"
                    ErrorMessage="装备小图不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <iframe id="Iframe2" style="top: 2px; height: 35px" src="../shop/fileupload.aspx?menu=EquipmentImg"
                    width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">
                </iframe>
            </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="top" style="width: 390px;">
                装备说明：
            </td>
            <td>
                <asp:TextBox ID="TxtModerated4" runat="server" Width="471px" class="l_input" Height="74px"
                    TextMode="MultiLine" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="EBtnSubmit" runat="server" Text="保存" class="C_input" />
            </td>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" />
            </td>
        </tr>
    </table>
    <br />
    </form>
</body>
</html>

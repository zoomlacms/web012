<%@ page language="C#" autoeventwireup="true" inherits="manage_Bull_GrassConfig, App_Web_tab2sdlr" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>系统设置</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>斗牛场管理</span> &gt;&gt; <span><a href="BullManage.aspx">
            系统设置</a></span></div>
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="center" colspan="2" class="spacingtitle">
                草场天气设置
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                晴天：
            </td>
            <td>
                <asp:TextBox ID="sun1" runat="server" Width="42px" class="l_input" />
                &nbsp;% 几率造成
                <asp:TextBox ID="sun2" runat="server" Width="54px" class="l_input" />
                &nbsp;块地干旱，<asp:TextBox ID="sun3" runat="server" Width="47px" class="l_input" />
                &nbsp;小时内不浇水植物将会干死
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                &nbsp;
            </td>
            <td>
                好友相互之间浇水可获得
                <asp:TextBox ID="sun4" runat="server" Width="42px" class="l_input" />
                &nbsp;点经验
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                阴天：
            </td>
            <td>
                <asp:TextBox ID="Cloudy1" runat="server" Width="40px" class="l_input" />
                &nbsp;% 几率出现蝗虫，每人每天只能发
                <asp:TextBox ID="Cloudy2" runat="server" Width="40px" class="l_input" />
                &nbsp;只蝗虫，蝗虫血量
                <asp:TextBox ID="Cloudy3" runat="server" Width="40px" class="l_input" />
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                &nbsp;
            </td>
            <td>
                <asp:TextBox ID="Cloudy4" runat="server" Width="40px" class="l_input" />
                &nbsp;小时不消灭将导致此地的减产，每小时
                <asp:TextBox ID="Cloudy5" runat="server" Width="40px" class="l_input" />
                &nbsp;%，蝗虫将在
                <asp:TextBox ID="Cloudy6" runat="server" Width="40px" class="l_input" />
                &nbsp;小时内吃掉这块地的农作物
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                &nbsp;
            </td>
            <td>
                杀死蝗虫可以得到
                <asp:TextBox ID="Cloudy7" runat="server" Width="40px" class="l_input" />
                &nbsp;点经验值，
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="top" style="width: 390px;">
                雨天：
            </td>
            <td>
                <asp:TextBox ID="Rain1" runat="server" Width="40px" class="l_input" />
                &nbsp;% 几率出现土拨鼠，每小时减产
                <asp:TextBox ID="Rain2" runat="server" Width="40px" class="l_input" />
                &nbsp;%，土拨鼠血量
                <asp:TextBox ID="Rain3" runat="server" Width="40px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                &nbsp;
            </td>
            <td>
                每次喷洒药物可获得
                <asp:TextBox ID="Rain4" runat="server" Width="40px" class="l_input" />
                &nbsp;点经验，杀死土拨鼠可获得
                <asp:TextBox ID="Rain5" runat="server" Width="40px" class="l_input" />
                &nbsp;点经验
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="center" colspan="2" class="spacingtitle">
                其他设置
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                杂草：
            </td>
            <td>
                每天
                <asp:TextBox ID="Grass1" runat="server" Width="40px" class="l_input" />&nbsp;小时内随即出现
                <asp:TextBox ID="Grass2" runat="server" Width="40px" class="l_input" />&nbsp;棵，
                成熟后依然带有杂草，将减产&nbsp;<asp:TextBox ID="Grass3" runat="server" Width="40px" class="l_input" />&nbsp;%
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
            </td>
            <td>
                拔去杂草将可以得到经验，每棵得到&nbsp;<asp:TextBox ID="Grass4" runat="server" Width="40px" class="l_input" />&nbsp;点经验值
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="center" colspan="2" class="spacingtitle">
                牛棚设置
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
                设置：
            </td>
            <td>
                一个牧场只能养殖&nbsp;<asp:TextBox ID="Bull1" runat="server" Width="40px" class="l_input" />&nbsp;头牛
            </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
            </td>
            <td>
                草场达到<asp:TextBox ID="Bull4" runat="server" Width="39px" class="l_input" />
                级时开通牛棚奖励黄牛&nbsp;<asp:TextBox ID="Bull5" runat="server" Width="40px" class="l_input" />&nbsp;头
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
            医棚：</td>
            <td>
                医棚每滴血恢复需要&nbsp;<asp:TextBox ID="Bull6" runat="server" Width="39px" class="l_input" />&nbsp;小时
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="center" colspan="2" class="spacingtitle">
                挖宝地配置
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
            设置：</td>
            <td>
                黄牛挖宝时间为&nbsp;<asp:TextBox ID="Treasure1" runat="server" Width="39px" class="l_input" />&nbsp;小时,水牛挖宝时间为&nbsp;<asp:TextBox ID="Treasure2" runat="server" Width="39px" class="l_input" />&nbsp;小时.挖宝奖励:&nbsp;<asp:TextBox ID="Treasure3" runat="server" Width="39px" class="l_input" />&nbsp;钱币
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 390px;">
            </td>
            <td>
                黄牛可挖宝&nbsp;<asp:TextBox ID="Bull2" runat="server" Width="40px" class="l_input" />&nbsp;次及累死，
                水牛可挖宝&nbsp;<asp:TextBox ID="Bull3" runat="server" Width="40px" class="l_input" />
                &nbsp;次及累死
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="EBtnSubmit" runat="server" Text="保存" class="C_input" 
                    onclick="EBtnSubmit_Click" />
                <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" />
            </td>
        </tr>
    </table>
    <br />
    </form>
</body>
</html>

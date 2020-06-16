<%@ page language="C#" autoeventwireup="true" inherits="manage_Bull_PetsManage, App_Web_tab2sdlr" enableEventValidation="false" viewStateEncryptionMode="Never" %>


<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>宠物管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>斗牛场管理</span> &gt;&gt; <span><a href="BullManage.aspx">宠物管理</a></span> </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td align="center" style="height: 30px;">
                <asp:Label ID="lblText" Text="宠物管理" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" class="spacingtitle">
                 家狗</td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" class="style1">
                需要推荐 <asp:TextBox ID="dog1" runat="server" Width="70px" class="l_input" />&nbsp;位好友加入此游戏才能获得，抓贼几率 
                <asp:TextBox ID="dog1s" runat="server" Width="70px" class="l_input" />&nbsp;%，逃跑的过程中，当前草的价值的 
                <asp:TextBox ID="dog1g" runat="server" Width="55px" class="l_input" />&nbsp;% 的金币给予本地的主人</td>
        </tr>
        
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" class="spacingtitle">
                 德国牧羊犬</td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" class="style1">
                需要推荐 <asp:TextBox ID="dog2" runat="server" Width="70px" class="l_input" />&nbsp;位好友加入此游戏才能获得，抓贼几率 <asp:TextBox ID="dog2s" runat="server" Width="70px" class="l_input" />&nbsp;%，逃跑的过程中，当前草的价值的 
                <asp:TextBox ID="dog2g" runat="server" Width="55px" class="l_input" />&nbsp;% 的金币给予本地的主人</td>
        </tr>
        
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" class="spacingtitle">
                 苏格兰牧羊犬</td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" class="style1">
                需要推荐 <asp:TextBox ID="dog3" runat="server" Width="70px" class="l_input" />&nbsp;位好友加入此游戏才能获得，抓贼几率 <asp:TextBox ID="dog3s" runat="server" Width="70px" class="l_input" />&nbsp;%，逃跑的过程中，当前草的价值的 
                <asp:TextBox ID="dog3g" runat="server" Width="55px" class="l_input" />&nbsp;% 的金币给予本地的主人</td>
        </tr>
        
        
        
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" class="spacingtitle">
                 边境牧羊犬</td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" class="style1">
                需要推荐 <asp:TextBox ID="dog4" runat="server" Width="70px" class="l_input" />&nbsp;位好友加入此游戏才能获得，抓贼几率 <asp:TextBox ID="dog4s" runat="server" Width="70px" class="l_input" />&nbsp;%，逃跑的过程中，当前草的价值的 
                <asp:TextBox ID="dog4g" runat="server" Width="55px" class="l_input" />&nbsp;% 的金币给予本地的主人</td>
        </tr>
        
        
        
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" class="spacingtitle">
                 藏獒</td>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" class="style1">
                需要推荐 <asp:TextBox ID="dog5" runat="server" Width="70px" class="l_input" />&nbsp;位好友加入此游戏才能获得，抓贼几率 <asp:TextBox ID="dog5s" runat="server" Width="70px" class="l_input" />&nbsp;%，逃跑的过程中，当前草的价值的 
                <asp:TextBox ID="dog5g" runat="server" Width="55px" class="l_input" />&nbsp;% 的金币给予本地的主人</td>
        </tr>
        
       
        <tr>
            <td align="center" class="style1">
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

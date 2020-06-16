<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_GameConfig, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>参数管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.style1
{
    background: #e0f7e5;
    padding: 2px;
    width: 20%;
    height:89px;
    text-align:right;
}
.style2
{
    background: #e0f7e5;
    padding: 2px;
    width: 20%;
    height: 84px;
    text-align: right;
}
.style3
{
    background: #f6fdf6;
/*line-height: 120%;*/    padding: 2px;
    height: 84px;
}
.style4
{
    background: #e0f7e5;
    padding: 2px;
    width: 20%;
    height: 55px;
    text-align: right;
}
.style5
{
    background: #f6fdf6;
/*line-height: 120%;*/    padding: 2px;
    height: 55px;
}
.style6
{
    background: #e0f7e5;
    padding: 2px;
    width: 20%;
    height: 48px;
    text-align: right;
}
.style7
{
    background: #f6fdf6;
/*line-height: 120%;*/    padding: 2px;
    height: 48px;
}
.style8
{
    height: 61px;
}
.style9
{
    background: #f6fdf6;
/*line-height: 120%;*/    padding: 2px;
    height: 89px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="r_navigation">
            <div class="r_n_pic" align="right">
            </div>
             <span>后台管理</span> &gt;&gt; <span><a href="GameManage.aspx" >游戏管理</a></span> &gt;&gt; 参数设置
        </div>
         <div class="clearbox">
    </div>
          <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
         <tr>
         <td class="spacingtitle" colspan="2" align="center">
             <asp:Label ID="Label1" runat="server"></asp:Label></td>
    </tr>
    
    <tr>
         <td class="style6">开启掉单：</td>
    
         <td class="style7"> 
             <asp:RadioButtonList ID="isopen" runat="server" 
                 RepeatDirection="Horizontal">
                 <asp:ListItem Value="open">开启</asp:ListItem>
                 <asp:ListItem Selected="True" Value="close">关闭</asp:ListItem>
             </asp:RadioButtonList>
         </td>
    </tr>
    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
         <td class="style4"> 掉单比率上限(按交易比率计算)：</td>
    
         <td class="style5">
             <asp:TextBox ID="ratio" class="l_input"  runat="server" Width="71px"></asp:TextBox>
&nbsp;%</td>
    </tr>
    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
         <td class="style2"> 掉单执行间隔设置：</td>
    
         <td class="style3">每间隔 
             <asp:TextBox ID="doff" class="l_input"  runat="server" Width="67px"></asp:TextBox>
             <asp:DropDownList ID="unit" runat="server">
                 <asp:ListItem Value="day">天</asp:ListItem>
                 <asp:ListItem Value="hour">小时</asp:ListItem>
                 <asp:ListItem Value="minute">分</asp:ListItem>
                 <asp:ListItem Value="sec">秒</asp:ListItem>
             </asp:DropDownList>
&nbsp;执行掉单&nbsp;<br />
             <br />
             间隔时间内交易总额大于 <asp:TextBox ID="money" class="l_input" runat="server" Width="68px"></asp:TextBox>
             &nbsp;元 时开始掉单 （设置为 0 时此选项为不启用本选项，此项针对交易量少的商户）</td>
    </tr>
    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
         <td class="style1">掉单频率控制：</td>
    
         <td class="style9">
             每商户 <asp:TextBox ID="distance" class="l_input" runat="server" Width="92px"></asp:TextBox>
             <asp:DropDownList ID="type" runat="server">
                 <asp:ListItem Value="day">天</asp:ListItem>
                 <asp:ListItem Value="hour">小时</asp:ListItem>
                 <asp:ListItem Value="minute">分</asp:ListItem>
                 <asp:ListItem Value="sec">秒</asp:ListItem>
             </asp:DropDownList>
             &nbsp;内掉单
             <asp:TextBox ID="degree" class="l_input"  runat="server" Width="71px"></asp:TextBox>
&nbsp;次<br />
             <br />
                          </td>
    </tr>
    <tr>
         <td colspan="2" align="center" class="style8">
             <asp:Button ID="submit" class="C_input"  runat="server" Text=" 提 交 " onclick="submit_Click" />&nbsp&nbsp
            <asp:Button ID="cancle" class="C_input"  runat="server" Text=" 取 消 " /></td>
    
    </tr>
    </table>
<div class="clearbox">
    </div>
     <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
         <tr>
         <td class="tdbg" colspan="2" align="left">　<b><font color=green>说明：</font></b>本设置为全局参数，当分区设置了规则后，掉单规则将以分区的规则为主；若分区没有设置规则，将<b>继承</b>此丢单规则。<br />
            <hr style="height:1px; color:Lime" />
&nbsp;掉 单 比 率：为掉单的数量与交易成功(不包含丢单部分)的比率，例如：100次非掉单交易中丢失2次，那么掉单交易比率为 2%。<br />
             掉单执行间隔：每次掉单的时间间隔，例如：设置的掉单间隔为2小时，如果上一次掉单的时间为前一小时，那么要等待1小时后才能掉单。<br />
             &nbsp;掉 单 频 率：控制每商户指定天数内掉单的次数，每间隔时间内交易额为保证商户设定间隔时间内的收入。<br />
             </td>
    </tr>
    </table>
    </form>
</body>
</html>
   

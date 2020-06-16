<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_clearOrder, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <title></title>



<script language="javascript" type="text/javascript" src="../../JS/Calendar.js">
</script>

</head>
<body >
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; 订单<span>管理</span> &gt;&gt;订单清空</div>
    <div class="tdbgleft" >
        <table width="100%" style="height:600px;margin: 0 auto" border="0" cellpadding="2" cellspacing="1" class="border" >
            <tr align="center" class="tdbg" style="height:20px" >
                <td colspan="2"  class="title" >
               删除订单
                </td>
            </tr>
            <tr style="height:70px" class="border">
            
                <td align="right"  style=" width:100px"  >删除 ：</td>
                <td align="center">
                <asp:RadioButtonList ID="radio" runat="server" RepeatDirection="Horizontal" 
                    onselectedindexchanged="radio_SelectedIndexChanged" AutoPostBack="True"  >
                <asp:ListItem Text="一周前所有订单" Value="0" />
                <asp:ListItem Text="两周前所有订单" Value="1" />
                <asp:ListItem Text="一月前所有订单" Value="2" Selected="True"/>
                    </asp:RadioButtonList>
                   
                    <asp:Label ID="dateTime" runat="server" Text="Label"></asp:Label>
                   &nbsp;&nbsp;
                    <asp:Button ID="deleteBT" class="C_input"  runat="server" Text="执行删除" 
                        onclick="deleteBT_Click"  />                    
                </td>
            </tr>
            <tr style=" height:300px"><td></td></tr>
        </table>
    </div>
    </form>
</body>
</html>
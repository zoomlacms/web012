<%@ page language="C#" responseencoding="GBK" autoeventwireup="true" inherits="PostBack, App_Web_zfj3n4az" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">
    <title>支付成功！</title>
    <link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
    <link href="../User/css/commentary.css" rel="stylesheet" type="text/css" />
    <link href="../User/css/default1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style=" width:500px; height:500px; margin:0 auto;">
        <br />
        <table width="100%" style="background-color: #CCCCCC;">
        <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        </tr>
        <tr>
        <td colspan="2" style=" text-align:center;"><span style=" font-size:18px; font-weight:bolder; color:Green;">恭喜您，支付成功，请耐心等待卖家发货！</span></td>
        </tr>
        <tr>
        <td colspan="2" style=" font-weight:bold; padding-left:10px;">确认款项</td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        </tr>
        <tr>
        <td style=" width:250px; text-align:right; padding-right:10px; height:25px;">支付平台：</td>
        <td>盛付通</td>
        </tr>
        <tr>
        <td style=" width:250px; text-align:right; padding-right:10px; height:25px;">订单号：</td>
        <td>
            <asp:Label ID="ddh" runat="server"></asp:Label></td>
        </tr>
        <tr>
        <td style=" width:250px; text-align:right; padding-right:10px; height:25px;">订单金额：</td>
        <td>
            <asp:Label ID="ddje" runat="server"></asp:Label></td>
        </tr>
        <tr>
        <td style=" width:250px; text-align:right; padding-right:10px; height:25px;">实际支付金额：</td>
        <td>
            <asp:Label ID="sjzfje" runat="server"></asp:Label></td>
        </tr>
        <tr>
        <td style=" width:250px; text-align:right; padding-right:10px; height:25px;">
            <input id="Bt1" type="button" value="关闭窗口" onclick="window.close();" /></td>
        <td>
            <input id="Bt2" type="button" value="返回首页" onclick="location.href='/';" /></td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>



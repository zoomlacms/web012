<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.PayOnline.Orderpay, App_Web_zfj3n4az" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>选择支付平台</title>
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
function createImage(a, b) {
    var array = b.split(",");
    for (var i = 0; i < (array.length - 1); i++) {
        var image = document.createElement("image");
        image.width = "50";
        image.height = "50";
        image.display = "block";
        var id = array[i];
        image.src = a + id + ".jpg";
        var obj = document.getElementById("td" + id).parentNode;
        obj.style.height = "40px";
        obj.style.lineHeight = "40px";
        obj.appendChild(image);
    }
}
</script>
<style type="text/css">
#DDLPayPlat tr td { padding:.5em; margin:.3em }
li{border:1px solid #AAAAAA;   }
#DDLPayPlat img{width:130px; height:42px;}
</style>
</head>
<body>
<form id="form1" runat="server">
<div style="margin: 0 auto; width: 500px; height: auto;">
在线支付操作(选择支付平台)<br />
<br />
<ul  style="list-style: none;background-color:White;">
    <li style="text-align: center; height: 20px; font-weight: bold;">平台选择 </li>
    <li>
        <table class="border" align="center" cellspacing="1">
            <tr class="tdbg">
                <td style="text-align: center;">
                    <table width="500px" cellspacing="1" cellpadding="2" >
                        <tr>
                            <td colspan="2" style="text-align:center;vertical-align:top;line-height:50px;">
                                <asp:RadioButtonList ID="DDLPayPlat" 
                                    style="text-align:center;width:100%;vertical-align:middle;line-height:50px;height:50px;" runat="server" 
                                    RepeatDirection="Horizontal" ondatabinding="DDLPayPlat_DataBinding" >
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td style="width: 30%; text-align: right;">订单号码：
                            </td>
                            <td style="text-align: left;">
                                <asp:Label ID="OrderCode" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td style="text-align: right;">支付金额：
                            </td>
                            <td style="text-align: left;">
                                <asp:Label ID="TxtvMoney" runat="server" Text="0"></asp:Label>
                                <asp:HiddenField ID="nfdmy" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </li>
    <li style="text-align: center; height: 30px;line-height:30px; vertical-align:middle;">
     <asp:Button ID="BtnSubmit" runat="server" Text=" 下一步 " OnClick="BtnSubmit_Click" />
    </li>
</ul>
</div>
</form>
</body>
</html>
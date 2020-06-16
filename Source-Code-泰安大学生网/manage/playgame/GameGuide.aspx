<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_GameGuide, App_Web_rliugfk2" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>游戏管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
   function Switch(obj) {
        obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
        var nextDiv;
        if (obj.nextSibling) {
            if (obj.nextSibling.nodeName == "DIV") {
                nextDiv = obj.nextSibling;
            }
            else {
                if (obj.nextSibling.nextSibling) {
                    if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                        nextDiv = obj.nextSibling.nextSibling;
                    }
                }
            }
            
            if (nextDiv) {
                nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
                if (nextDiv.style.display != "") {
                    parent.document.getElementById("left").height = document.body.scrollHeight;
                }
                else {
                    parent.document.getElementById("left").height = document.body.scrollHeight + 20;
                }
            }
        }
    }

    function OpenLink(lefturl, righturl) {
        if (lefturl != "") {
            parent.frames["left"].location = lefturl;
        }
        try {
            parent.MDIOpen(righturl); return false;
        } catch (Error) {
            parent.frames["main_right"].location = righturl;
        }
    }

    function gotourl(url) {
        try {
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
            parent.frames["main_right"].location = "../" + url; void (0);
        }
    }
</script>
</head>
<body id="Guidebody" style="margin: 0px; margin-top: 1px;">
<form id="formGuide" runat="server">
    <div id="Div1">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">游戏管理
                </div>
            </li>
            <li id="Guide_main1">
                <div id="Guide_box1">
                    <div class="guidecollapse" onclick="Switch(this)">游戏管理</div>
                    <div class="guide" id="a1">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/GameConfig.aspx');">参数设置</a> </li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/GameManage.aspx');">游戏管理</a> </li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/AddGame.aspx');">游戏配置添加</a> </li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/AreaManage.aspx');">分区管理</a> </li>
                        </ul>
                    </div>
                </div>
            </li>
            <li id="Li2">
                <div id="Div3">
                    <div class="guidecollapse" onclick="Switch(this)">
                        通道管理
                    </div>
                    <div class="guide" id="a2">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/PayPlatManage.aspx');">通道管理</a></li>
                             <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/MobileManage.aspx');">手机支付方式</a></li>   
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/AddPayPlat.aspx');">添加通道</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/PaymentList.aspx');">支付记录</a></li>
                        </ul>
                    </div>
                </div>
            </li>
            <li id="Guide_main2">
                <div id="Guide_box2">
                    <div class="guidecollapse" onclick="Switch(this)">
                        结算管理
                    </div>
                    <div class="guide" id="a3">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/Ship.aspx');">财务结算</a> </li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/ShowPayList.aspx');">结算记录</a> </li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/Pay.aspx');">商户支付</a> </li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/AllPay.aspx');">支付记录</a> </li>
                        </ul>
                    </div>
                </div>
            </li>
            <li id="Li1">
                <div id="Div2">
                    <div class="guidecollapse" onclick="Switch(this)">
                        订单管理
                    </div>
                    <div class="guide" id="a4">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/Payment.aspx');" >全部订单记录</a><a href="Payment.aspx" target="_blank" >新窗口打开</a> </li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/Payments.aspx?set=success');" >所有成功订单</a> <a href="Payment.aspx" target="_blank" >新窗口打开</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/Payments.aspx?set=notsend');" >未发送订单</a> <a href="Payment.aspx" target="_blank" >新窗口打开</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/clearOrder.aspx');">清空订单</a> <a href="Payment.aspx" target="_blank" >新窗口打开</a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('playgame/DoffManage.aspx');">丢单管理</a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    </form>
    <script type="text/javascript">
        //a1.style.display = "none";
        a2.style.display = "none";
        a3.style.display = "none";
        a4.style.display = "none";
    </script>
</body>
</html>

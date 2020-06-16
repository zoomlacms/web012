<%@ page language="C#" autoeventwireup="true" inherits="PayReceive, App_Web_zfj3n4az" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>支付结果</title>
<link rel="stylesheet" type="text/css" href="../User/Skin/User_Main.css" />
<link rel="stylesheet" type="text/css" href="../User/skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
<div id="m_top">
<h1 class="m_logo"></h1>
<h1 style="float:right;">
	<ul>
		<li><a href=#>首页</a></li>
		<li><a href=#>新闻</a></li>
		<li><a href=#>图库</a></li>
		<li><a href=#>下载</a></li>
		<li><a href=#>商城</a></li>
		<li><a href=#>论坛</a></li>
		<li style="float:right;width:140px;background:url();"><a href="javascript:alert('设为首页');">设为首页</a> | <a href="javascript:alert('加入收藏');">加入收藏</a></li>		</ul>
</h1>
</div>
<div class="s_body">
<!-- 左边开始 -->
<div class="s_bleft">
	<div class="i_whyj">
		<h1>体验卓越的购物：</h1>
		<ul>
			<li>在线支付灵项方便 </li>
			<li>透明流程随心所欲 </li>
			<li>送货上门服务周全 </li>
			<li>包装精美想您所想 </li>
			<li>正规发票完善质保 </li>
		</ul>
		<div class="cleardiv" style="height:15px;"></div>
		<h2 style="color:#FF6600">用户导航</h2>
		<h3><a href="/user/">进入会员中心</a></h3>
		<h2>管理导航</h2>
		<h3><a href="/manage/">进入后台</a></h3>
	</div>
</div>
<!-- 左边结束 -->

<!-- 右边开始 -->
<div class="s_bright">
<div class="rg_inout">
<div id="tip" runat="server" align="center" style="margin-top:10px; color:Red;"></div>
<table width="500" border="0" align="center" cellpadding="0" cellspacing="0" id="mess" runat="server">
    <tr>
        <td valign="top" align="middle">
            <div align="left">
                <b>订单号:<%=v_oid%></b></div>
        </td>
    </tr>
    <tr>
        <td valign="top" align="middle">
            <div align="left">
                <b>支付银行:<%=v_pmode%></b></div>
        </td>
    </tr>
    <tr>
        <td valign="top" align="middle">
            <div align="left">
                <b>支付结果:<%=status_msg%></b></div>
        </td>
    </tr>
    <tr>
        <td valign="top" align="middle">
            <div align="left">
                <b>支付金额:<%=v_amount%></b></div>
        </td>
    </tr>
    <tr>
        <td valign="top" align="middle">
            <div align="left">
                <b>支付币种:<%=v_moneytype%></b></div>
        </td>
    </tr>
    <tr>
        <td valign="top" align="middle">
            <div align="left">
                <b>备注1:<%=remark1%></b></div>
        </td>
    </tr>
    <tr>
        <td valign="top" align="middle">
            <div align="left">
                <b>备注2:<%=remark2%></b></div>
        </td>
    </tr>
</table>
</div>
</div>
</form>
</body>
</html>

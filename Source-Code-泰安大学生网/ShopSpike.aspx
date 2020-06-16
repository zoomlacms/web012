<%@ page language="C#" autoeventwireup="true" inherits="ShopSpike, App_Web_vs4ncjmc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>商品秒杀</title>
<link rel="stylesheet" type="text/css" href="user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="user/skin/user_user.css" />
<script type="text/javascript" language="javascript" src="JS/ajaxrequest.js" ></script>
</head>
<body>
<form id="form1" runat="server">
<!-- 顶部代码布局 -->
<div id="m_top">
    <h1 class="m_logo">
    </h1>
    <h1 style="float: right;">
        <ul>
            <li><a href="/">首页</a></li>
            <li><a href="#">新闻</a></li>
            <li><a href="#">图库</a></li>
            <li><a href="#">下载</a></li>
            <li><a href="#">商城</a></li>
            <li><a href="#">论坛</a></li>
            <li style="float: right; width: 140px; background: url();"><a href="javascript:alert('设为首页');">
                设为首页</a> | <a href="javascript:alert('加入收藏');">加入收藏</a></li>
        </ul>
    </h1>
</div>
<!-- 正文布局 -->
<div class="s_body">
    <!-- 左边开始 -->
    <div class="s_bleft">
        <div class="i_whyj">
            <h1>
                体验卓越的购物：</h1>
            <ul>
                <li>在线支付灵项方便 </li>
                <li>透明流程随心所欲 </li>
                <li>送货上门服务周全 </li>
                <li>包装精美想您所想 </li>
                <li>正规发票完善质保 </li>
            </ul>
            <div class="cleardiv" style="height: 15px;">
            </div>
            <h2 style="color: #FF6600">
                用户导航</h2>
            <h3>
                <a href="/user/">进入会员中心</a></h3>
            <h2>
                管理导航</h2>
            <h3>
                <a href="/manage/">进入后台</a></h3>
        </div>
    </div>
    <!-- 左边结束 -->
    <!-- 右边开始 -->
    <div class="s_bright">
        <div class="rg_inout">
            <h1>
                商品秒杀</h1>
            <div class="cleardiv">
            </div>
            <div class="cleardiv">
            </div>
            <div>
                <ul style="width: 600px; height: 216px">
                    <li style="text-align: center; width: 280px; margin-top:10px">
                        <asp:Label ID="lblimg" runat="server" Text=""></asp:Label></li>
                    <li>
                        <li style="width: 200px">
                            <ul style="width: 200px">
                                <li style="float: left; width: 200px; height: 30px">商品名称：<strong><asp:Label ID="lblProName"
                                    runat="server" Text=""></asp:Label></strong></li>
                                <li style="float: left; width: 200px; height: 30px">秒杀价：<asp:Label ID="lblProState"
                                    runat="server" Text=""></asp:Label></li>
                                <li style="float: left; width: 200px; height: 30px">提供商品数量：<asp:Label ID="lblPNum"
                                    runat="server" Text=""></asp:Label></li>
                                <li style="float: left; width: 200px; height: 30px">可购买商品数量：<asp:Label ID="lblNum"
                                    runat="server" Text="" ForeColor="Red"></asp:Label>&nbsp;<%=Unit%></li>
                                <li style="float: left; width: 200px; height: 30px">倒计时：<asp:Label ID="lblTimer"
                                    runat="server" Text="" ForeColor="Red"></asp:Label></li>
                                </li>
                        <asp:HiddenField ID="ddlNum" runat="server" />
                                <li style="float: left; width: 200px; text-align: center">
                                    <asp:Button ID="Button1" runat="server" Text="秒  杀" onclick="Button1_Click" /></li>
                            </ul>
                        </li>
                        
                </ul>
            </div>


        </div>
    </div>
    <!-- 右边结束 -->
</div>
<div class="cleardiv">
</div>
<div class="m_copyright">
    <ul>
        <a href="#">关于我们</a> | <a href="#">常见问题</a> | <a href="#">使用条款</a> | <a href="#">隐私声明</a>
        | <a href="#">安全提示</a> | <a href="#">意见反馈</a> | <a href="#">联系我们</a> | <a href="#">招聘信息</a></ul>
    <h1> &copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。</h1>
</div>
</form>
</body>
</html>
<%@ page language="C#" autoeventwireup="true" inherits="Store_CompeteShop, App_Web_bkn1lzbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>竞拍商品</title>
<link rel="stylesheet" type="text/css" href="../user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../user/skin/user_user.css" />
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
		<h1>登陆会员中心您将获得：</h1>
		<ul>
			<li>自由发布信息 </li>
			<li>查看积分与管理空间 </li>
			<li>设定您的个性化空间</li>
			<li>提交您的需求为您服务 </li>
			<li>购物支付多彩商务体验 </li>
		</ul>
		<div class="cleardiv" style="height:15px;"></div>
		<h2 style="color:#FF6600">用户通道</h2>
		<h3><a href="/">快速返回首页</a></h3>
	</div>
</div>
    <!-- 左边结束 -->
    <!-- 右边开始 -->
    <div class="s_bright">
        <div class="rg_inout">
            <h1>竞拍商品</h1>
            <h2>竞拍商品&nbsp;</h2>
            <div class="cleardiv"></div>
            <div>
                <ul style="width: 600px; height: 216px">
                    <li style="text-align: center; width: 180px">
                        <asp:Label ID="lblimg" runat="server" Text="Label"></asp:Label></li>
                    <li>
                    <li style=" width: 200px">
                        <ul style="width: 200px">
                            <li style="float: left; width: 200px; height: 30px">商品名称：<strong><asp:Label ID="lblProName"
                                runat="server" Text="Label"></asp:Label></strong></li>
                            <li style="float: left; width: 200px; height: 30px">竞拍起始价：<asp:Label ID="lblProState"
                                runat="server" Text="Label"></asp:Label></li>
                            <li style="float: left; width: 200px; height: 30px">当前最高价：<asp:Label ID="lblMaxMoney"
                                runat="server" Text="Label" ForeColor="Red"></asp:Label></li>
                            <li style="float: left; width: 200px; height: 30px">出价保证金：<asp:Label ID="lblCautionMoney"
                                runat="server" Text="Label"></asp:Label></li>
                            <li style="width: 200px; height: 30px;">&nbsp;出&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价&nbsp;：<asp:TextBox ID="txtMoney" Width="100px" runat="server"></asp:TextBox></li>
                            <li style="float: left; width: 200px; text-align: center">
                                <asp:Button  ID="Button1"  runat="server"  Text="出  价"  OnClick="Button1_Click"  /></li>
                        </ul>
                   </li>
                   <li style=" width: 200px;">
                        <ul style=" height: 60px">
                                            <li style="float: left; width: 200px; height: 30px">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMoney"
                                                    ErrorMessage="请输入你的竞拍价格"></asp:RequiredFieldValidator></li>
                                            <li style="float: left; width: 200px; height: 30px">
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtMoney"
                                                    ErrorMessage="请输入正确的价格" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
                                            </li>
                                        </ul>
                   </li>
                </ul>
            </div>
            <ul>
                <li>
                    <p>
                        <asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>&nbsp;
                    </p>
                </li>
            </ul>
            <ul>
                <li style="width: 150px; text-align: center;">竞拍人姓名</li>
                <li style="width: 150px; text-align: center;">竞拍起始价</li>
                <li style="width: 150px; text-align: center;">竞拍价</li>
                <li style="width: 150px; text-align: center;">竞拍时间</li>
            </ul>
            <asp:Repeater ID="cartinfo" runat="server">
                <ItemTemplate>
                    <ul>
                        <li style="width: 150px; text-align: center;">
                            <%#getUserName(DataBinder.Eval(Container, "DataItem.UserID", "{0}"))%></li>
                        <li style="width: 150px; text-align: center;">
                            <%=ColonelMoney%></li>
                        <li style="width: 150px; text-align: center;">
                            <%#GetM(DataBinder.Eval(Container.DataItem ,"PMoney").ToString())%></li>
                        <li style="width: 150px; text-align: center;">
                            <%#Eval("AddTime")%></li>
                    </ul>
                </ItemTemplate>
            </asp:Repeater>
            <ul>
                <li style="width: 100%; text-align: center;">共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    人出价
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"  Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />个人/页 转到第<asp:DropDownList ID="DropDownList1"  runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    页</li>
            </ul>
            <div class="cleardiv">
            </div>
            <ul>
                <li style="width: 250px; text-align: left;"></li>
                <li>&nbsp;</li><li style="width: 250px; text-align: left;"></li>
            </ul>
            <div class="cleardiv"></div>
        </div>
    </div>
    <!-- 右边结束 -->
</div>
<div class="cleardiv"></div>
<div class="m_copyright">
    <ul>
        <a href="#">关于我们</a> | <a href="#">常见问题</a> | <a href="#">使用条款</a> | <a href="#">隐私声明</a>
        | <a href="#">安全提示</a> | <a href="#">意见反馈</a> | <a href="#">联系我们</a> | <a href="#">招聘信息</a></ul>
    <h1> &copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。</h1>
</div>
</form>
</body>
</html>
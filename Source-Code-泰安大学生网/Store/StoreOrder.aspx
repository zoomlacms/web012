<%@ page language="C#" autoeventwireup="true" inherits="StoreOrder, App_Web_bkn1lzbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>确认订单</title>
<link rel="stylesheet" type="text/css" href="../user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../user/skin/user_user.css" />
<script src="/JS/pacalendar.js"></script>
</head>
<body>
<form id="form1" runat="server">
<!-- 顶部代码布局 -->
<div id="m_top">
	<h1 class="m_logo"></h1>
	<h1 style="float:right;">
		<ul>
			<li><a href="/">首页</a></li>
			<li><a href=#>新闻</a></li>
			<li><a href=#>图库</a></li>
			<li><a href=#>下载</a></li>
			<li><a href=#>商城</a></li>
			<li><a href=#>论坛</a></li>
			<li style="float:right;width:140px;background:url();"><a href="javascript:alert('设为首页');">设为首页</a> | <a href="javascript:alert('加入收藏');">加入收藏</a></li>
			</ul>
	</h1>
</div>
<!-- 正文布局 -->
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
	</div>
</div>
<!-- 左边结束 -->

<!-- 右边开始 -->
<div class="s_bright">
	<div class="rg_inout">
		<h1>请填写您的商品信息</h1>
		<h2>第二步：确认订单&nbsp;<img src="/user/images/regl2.gif" width="242" height="14" /></h2>
        <ul>
        <li style="text-align:left;"><asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></li>
        </ul>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 收货人姓名：</b></li>
			<li style="width:75%">&nbsp;<asp:TextBox ID="Receiver" runat="server"></asp:TextBox></li>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Receiver"
                ErrorMessage="收货人姓名不能为空!"></asp:RequiredFieldValidator></ul>
		<div class="cleardiv"></div>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 收货人地址：</b></li>
			<li style="width:75%">&nbsp;
             <asp:DropDownList ID="dddizhi" runat="server" 
                    onselectedindexchanged="dddizhi_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                  <br />  <asp:TextBox ID="Jiedao" runat="server" Width="409px"></asp:TextBox><asp:CheckBox ID="cbAdd" runat="server" />加入我的地址簿</li>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Jiedao"
                ErrorMessage="收货人地址不能为空!"></asp:RequiredFieldValidator></ul>
			<div class="cleardiv" style="margin-top:30px"></div>
       
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 收货人邮箱：</b></li>
			<li style="width:75%">&nbsp;<asp:TextBox ID="Email" runat="server"></asp:TextBox></li>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email"
                ErrorMessage="收货人邮箱不能为空!"></asp:RequiredFieldValidator></ul>
	 <div class="cleardiv"></div>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 付款方式：</b></li><li></li>
            <li style="width:75%">&nbsp;<asp:DropDownList ID="Payment" runat="server">
            </asp:DropDownList></li></ul>
		<div class="cleardiv"></div>
		<ul style=" margin-bottom:20px;width:100%">
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font>发票信息：</b></li>
			<li style="width:75%"><asp:TextBox ID="Invoice" runat="server" Height="46px" Columns="50" Rows="10"></asp:TextBox>
            <asp:CheckBox ID="Invoiceneeds" runat="server" Text="需开发票 " /></li></ul>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 要求送货时间：</b></li>
			<li style="width:75%;">&nbsp;<asp:DropDownList ID="Deliverytime" runat="server">
                        <asp:ListItem Value="1">对送货时间没有特殊要求</asp:ListItem>
                        <asp:ListItem Value="2">双休日或者周一至周五的晚上送达</asp:ListItem>
                        <asp:ListItem Value="3">周一至周五的白天送达</asp:ListItem>
                    </asp:DropDownList></li></ul>
      
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 联系电话：</b></li>
			<li style="width:75%">&nbsp;
                    <asp:TextBox ID="Phone" runat="server"></asp:TextBox></li>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Phone"
                        Display="Dynamic" ErrorMessage="联系电话不能为空!"></asp:RequiredFieldValidator></ul>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 邮政编码：</b></li>
			<li style="width:75%">&nbsp;
                    <asp:TextBox ID="ZipCode" runat="server"></asp:TextBox></li>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ZipCode"
                        Display="Dynamic" ErrorMessage="邮政编码不能为空!"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ZipCode"
                        ErrorMessage="邮政编码格式不正确!" ValidationExpression="^\d{6}$"></asp:RegularExpressionValidator></ul>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 收货人手机：</b></li>
			<li style="width:75%">&nbsp;
                    <asp:TextBox ID="Mobile" runat="server"></asp:TextBox></li>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Mobile"
                        Display="Dynamic" ErrorMessage="收货人手机不能为空!"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Mobile"
                        ErrorMessage="手机号码格式不正确!" ValidationExpression="^(\d{2}|\d{3})?[\-]?(\d{11})$"></asp:RegularExpressionValidator></ul>
                        	<div class="cleardiv"></div>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 送货方式：</b></li>
			<li style="width:75%">&nbsp;<asp:DropDownList ID="Delivery" runat="server">
                    </asp:DropDownList></li>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Delivery"
                        ErrorMessage="送货方式不能为空!"></asp:RequiredFieldValidator></ul>
                        	<div class="cleardiv"></div>
            <asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
          <ul id="DelivDates" runat="server">
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 送货具体时间：</b></li>
			<li style="width:75%">&nbsp;<asp:TextBox ID="txtDatas" runat="server" onclick="calendar('txtTime')"></asp:TextBox></li></ul>
            	<div class="cleardiv"></div>
        <ul id="DelivTimes" runat="server" style="width:100%">
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 送货时间段：</b></li>
			<li style="width:74%;">&nbsp;<asp:RadioButtonList ID="rblTime" runat="server" RepeatDirection="Horizontal" style="float:left" >
                            <asp:ListItem Value="不限">不限</asp:ListItem>
                            <asp:ListItem Value="上午">上午</asp:ListItem>
                            <asp:ListItem Value="下午">下午</asp:ListItem>
                            <asp:ListItem Value="晚上">晚上</asp:ListItem>
                            <asp:ListItem Value="定点服务">定点服务</asp:ListItem>
                        </asp:RadioButtonList><asp:TextBox ID="txtTimes" runat="server" style="float:rigth"></asp:TextBox>
                        <asp:HiddenField ID="hf" runat="server" Value="20" /></li></ul>
                    <div class="cleardiv"></div>
		<ul>
			<li style="width:150px;text-align:right;">&nbsp;</li>
			<li style="width:75%">
                <asp:Button ID="Button1" runat="server" Text="提交订单" OnClick="Button1_Click" />&nbsp;</li></ul>
                <asp:HiddenField ID="ddPack" runat="server" />
		<div class="cleardiv"></div>

	</div>
</div>
<!-- 右边结束 -->
</div>
<div class="cleardiv"></div>
<div class="m_copyright" id="DIV1">
	<ul><a href=#>关于我们</a> | <a href=#>常见问题</a> | <a href=#>使用条款</a> | <a href=#>隐私声明</a> | <a href=#>安全提示</a> | <a href=#>意见反馈</a> | <a href=#>联系我们</a> | <a href=#>招聘信息</a></ul>
	<h1> &copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。</h1>
</div>
</form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="doShopCar, App_Web_vs4ncjmc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>加入购物车</title>
<link rel="stylesheet" type="text/css" href="user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="user/skin/user_user.css" />
<script src="JS/ajaxrequest.js"></script>
<script type="text/javascript">
    var ajax = new AJAXRequest();
    function keydo(ids) {
        var num = document.getElementById("num" + ids).value;
        ajax.get(
        "/ShopCart/UpdateShopCar.aspx?cid=" + ids + "&num=" + num + "&menu=shopcar",
        function (obj) {
            document.getElementById("alljiage").innerText = obj.responseText;
        }
        );
    }
</script>
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
			<li style="float:right;width:140px;background:url();"><a href="javascript:alert('设为首页');">设为首页</a> | <a href="javascript:alert('加入收藏');">加入收藏</a></li>		</ul>
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
		<h2>管理导航</h2>
		<h3><a href="/manage/">进入后台</a></h3>
	</div>
</div>
<!-- 左边结束 -->

<!-- 右边开始 -->
<div class="s_bright">
	<div class="rg_inout">
		<h1>购物车</h1>
		<h2>第一步:加入购物车&nbsp;<img src="/user/images/regl1.gif" width="242" height="14" /></h2>
	    <ul>
	        <li><p>
                <asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>&nbsp;
                </p></li>
	    </ul>
	                <ul style="background-color:GrayText;">
			            <li style="width:20%;text-align:center;color:White">商品名称</li>
			            <li style="width:8%;text-align:center;color:White">来源</li>
			            <li style="width:12.5%;text-align:center;color:White">单价</li>
			            <li style="width:12.5%;text-align:center;color:White">数量</li>
			            <li style="width:12.5%;text-align:center;color:White">
                            <asp:Label ID="lblProinfo" runat="server" Text="备注"></asp:Label>
			            </li>
			            <li style="width:12.5%;text-align:center;color:White">操作</li>                  
	              </ul>
        <asp:Repeater ID="cartinfo" runat="server">
            <ItemTemplate>
                  <ul <%#(Eval("Bindpro","{0}")=="")?"":"style=background-color:#E6E6E6"%>>			            
			            <li style="width:20%;text-align:center;">
			            <%#GetProtype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%><a href="Shop.aspx?ItemID=<%#Eval("proid")%>" target="_blank"><%#Eval("proname")%></a></li>
			            <li style="width:8%;text-align:center;"><%#Eval("proseller")%></li>
			            <li style="width:12.5%;text-align:center;"><%#getjiage(Eval("ProClass", "{0}"), DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
			            <li style="width:12.5%;text-align:center;"><input id='num<%#Eval("id") %>' value='<%#getShu(DataBinder.Eval(Container, "DataItem.pronum", "{0}"))%>' style="width:30px" height='20px' onblur="keydo('<%#Eval("id") %>')"/></li>			            
			            <li style="width:12.5%;text-align:center;"><%#getProinfo(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>			            			                            
			            <li style="width:12.5%;text-align:center;"><a href='ShopCar.aspx?menu=del&cid=<%#Eval("id")%>&ProClass=<%#Eval("ProClass") %>' onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
	              </ul><div style="clear:both; height:1px; border-bottom:1px solid #808080;"></div>
            </ItemTemplate>
        </asp:Repeater>
        <span style="margin-top:3px;margin-left:12px;"><asp:Label ID="yhq" runat="server" Text="优惠券:" ForeColor=Red  Font-Size=12px></asp:Label>&nbsp&nbsp 
	    <asp:TextBox ID="yhqtext" runat="server" BorderColor=Red BorderStyle=Solid Height=18px width=90px style="margin-bottom:-2px;"></asp:TextBox></span>
        <span style="margin-top:3px;margin-left:12px;"><asp:Label ID="lebel" runat="server" Text="密&nbsp&nbsp  码:" ForeColor=Red  Font-Size=12px></asp:Label>&nbsp&nbsp 
	    <asp:TextBox ID="yhqpwd" runat="server" BorderColor=Red BorderStyle=Solid Height=18px width=90px style="margin-bottom:-2px;"></asp:TextBox></span>
	  <ul style="margin-left:170px;">
		<li style="width:100%;">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 个商品  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />个商品/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>页</li>
	</ul>
	  <div class="cleardiv"></div>
		<ul>
			<li style="width:250px;text-align:left;">合计：<asp:Label ID="alljiage" runat="server" Text=""></asp:Label></li>
			<li>&nbsp;</li><li style="width:250px;text-align:left;">
            <asp:Button ID="Button1" runat="server" Text="去收银台结帐" OnClientClick="keydo()"  onclick="Button1_Click" />
                <asp:HiddenField ID="project" runat="server" />
                <asp:HiddenField ID="jifen" runat="server" />
                <asp:HiddenField  ID="ProClass" runat="server" />
            </li>
            </ul>
	  <div class="cleardiv" style="height:30px"></div>

	</div>
</div>
<!-- 右边结束 -->
</div>
<div class="cleardiv"></div>
<div class="m_copyright">
	<ul><a href=#>关于我们</a> | <a href=#>常见问题</a> | <a href=#>使用条款</a> | <a href=#>隐私声明</a> | <a href=#>安全提示</a> | <a href=#>意见反馈</a> | <a href=#>联系我们</a> | <a href=#>招聘信息</a></ul>
	<h1> &copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。</h1>
</div>
<input type="hidden"  id="projuct" name="projuct" runat="server" />
<input type="hidden" id="Stock" name="Stock" runat="server" /><!--数量 -->
<input type="hidden" id="GuestName" name="GuestName" runat="server"/><!-- 客户名称 -->
<input type="hidden" id="comedate" name="comedate" runat="server"/> <!-- 入住时间 -->
<input type="hidden" id="GuestMobile" name="GuestMobile" runat="server"/> <!-- 客户手机 -->
<input type="hidden" id="cityname" name="cityname" runat="server"/><!-- 城市名称 -->
<input type="hidden" id="preID" name="preID" runat="server"/><!-- 证件号码 -->
<input type="hidden" id="Type" name="Type" runat="server" /> 
</form>
</body>
</html>
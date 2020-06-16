<%@ page language="C#" autoeventwireup="true" inherits="StoreCart, App_Web_bkn1lzbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>加入购物车</title>
<link rel="stylesheet" type="text/css" href="../user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../user/skin/user_user.css" />
<script src="/JS/ajaxrequest.js"></script>
<script type="text/javascript">
    var ajax = new AJAXRequest();
    function keydo(ids) {
        var num = document.getElementById("num" + ids).value;
        ajax.get(
        "/ShopCart/UpdateShopCar.aspx?cid=" + ids + "&num=" + num + "&menu=usercart",
        function (obj) {
            var pri = obj.responseText;
            var price = pri.split('|');
            if (price != null && price.length > 1) {
                document.getElementById("alljiage").innerText = price[0];
                document.getElementById("price" + ids).innerText = price[1];
            }
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
		<h1>购物车</h1>
		<h2>第一步:加入购物车&nbsp;<img src="/user/images/regl1.gif" width="242" height="14" /></h2>
		<div class="cleardiv"></div>
		<div class="cleardiv">
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p></p> 
		  <p>&nbsp;</p>
		</div>
	    <ul>
	        <li><p>
                <asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>&nbsp;
                </p></li>
	    </ul>
	               <ul>
			            <li style="width:9.5%;text-align:center;">图片</li>
			            <li style="width:20%;text-align:center;">商品名称</li>
			            <li style="width:8%;text-align:center;">单位</li>
			            <li style="width:12.5%;text-align:center;">数量</li>
			            <li style="width:12.5%;text-align:center;">市场价</li>
			            <li style="width:12.5%;text-align:center;">实价</li>
			            <li style="width:12.5%;text-align:center;">金额</li>
			            <li style="width:12.5%;text-align:center;">操作</li>                  
	              </ul>
        <asp:Repeater ID="cartinfo" runat="server">
            <ItemTemplate>
                  <ul>
			            <li style="width:9.5%;text-align:center;"><%#getproimg(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
			            <li style="width:20%;text-align:center;"><%#Eval("proname")%></li>
			            <li style="width:8%;text-align:center;"><%#getProUnit(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
			            <li style="width:12.5%;text-align:center;"><input id='num<%#Eval("id") %>' value='<%#Eval("pronum") %>' style="width:30px" height='20px' onblur="keydo('<%#Eval("id") %>')"/></li>
			            <li style="width:12.5%;text-align:center;"><%#getjiage("1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
			            <li style="width:12.5%;text-align:center;"><%#shijia(DataBinder.Eval(Container, "DataItem.Shijia", "{0}"))%></li>
                       <%-- getprojia(DataBinder.Eval(Container, "DataItem.id", "{0}"))--%>
			            <li style="width:12.5%;text-align:center;"><span id='price<%#Eval("ID") %>'><%#DataBinder.Eval(Container, "DataItem.allMoney", "{0:N2}")%></span></li>                  
			            <li style="width:12.5%;text-align:center;"><a href="StoreCart.aspx?menu=del&cid=<%#Eval("id")%>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
	              </ul>
            </ItemTemplate>
        </asp:Repeater>
	  <ul>
		<li style="width:100%;text-align:center;">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 个商品  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />个商品/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>页</li>
	</ul>
	  <div class="cleardiv"></div>
		<ul>
			<li style="width:250px;text-align:left;">合计：<asp:Label ID="alljiage" runat="server" Text=""></asp:Label></li>
			<li>&nbsp;</li><li style="width:250px;text-align:left;">
            <asp:Button ID="Button1" runat="server" Text="去收银台结帐" onclick="Button1_Click" /></li>
            </ul>
	  <div class="cleardiv"></div>
	</div>
</div>
<!-- 右边结束 -->
</div>
<div class="cleardiv"></div>
<div class="m_copyright">
	<ul><a href=#>关于我们</a> | <a href=#>常见问题</a> | <a href=#>使用条款</a> | <a href=#>隐私声明</a> | <a href=#>安全提示</a> | <a href=#>意见反馈</a> | <a href=#>联系我们</a> | <a href=#>招聘信息</a></ul>
	<h1> &copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。</h1>
</div>
</form>
</body>
</html>

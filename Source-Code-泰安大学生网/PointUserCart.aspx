<%@ page language="C#" autoeventwireup="true" inherits="PointUserCart, App_Web_vs4ncjmc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>积分商品分布式购物车</title>
<link rel="stylesheet" type="text/css" href="user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="user/skin/user_user.css" />
<script src="JS/ajaxrequest.js"></script>
<script type="text/javascript">
    var ajax = new AJAXRequest();
    function keydo(ids) {
        var num = document.getElementById("num" + ids).value;
        var prolists = document.getElementById("prolists").value;
        ajax.get(
        "/ShopCart/UpdateShopCar.aspx?cid=" + ids + "&num=" + num + "&menu=update&prolist=" + prolists,
        function (obj) {
            var pri = obj.responseText;
            if (pri != null) {
                var prics = pri.split('|');
                if (prics != null && prics.length > 1) {
                    document.getElementById("alljiage").innerText = prics[0];
                    document.getElementById("price" + ids).innerText = prics[1];
                }
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
	    <div style="width:100%;margin-bottom:5px"><asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>&nbsp;</div>
	    <ul style="background-color:GrayText;width:100%">
			<li style="width:9.5%;text-align:center;color:White">图片</li>
			<li style="width:20%;text-align:center;color:White">商品名称</li>
            <li style="width:20%;text-align:center;color:White">商品属性</li>
			<li style="width:5%;text-align:center;color:White">单位</li>
			<li style="width:10%;text-align:center;color:White">数量</li>
			<li style="width:10%;text-align:center;color:White">市场价</li>
			<li style="width:10%;text-align:center;color:White">零售价</li>
			<li style="width:5%;text-align:center;color:White">折扣</li>
			<li style="width:10%;text-align:center;color:White">金额</li>
			<li style="width:10%;text-align:center;color:White">操作</li>                  
	    </ul>
        <asp:Repeater ID="cartinfo" runat="server" OnItemDataBound="cartinfo_ItemDataBound">
            <ItemTemplate>
                  <ul <%#(Eval("Bindpro","{0}")=="")?"":"style=background-color:#E6E6E6"%> style="width:100%;min-height:47px">
			            <li style="width:9.5%;text-align:center;"><%#getproimg(Eval("proid","{0}"))%></li>
			            <li style="width:20%;text-align:center;"><%#GetProtype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%><a href='Shop.aspx?ItemID=<%#Eval("proid")%>' target="_blank"><%#Eval("proname")%></a></li>
			            <li style="width:10%;text-align:center;"><%#Eval("Attribute")%></li>
                        <li style="width:5%;text-align:center;"><%#getProUnit(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
			            <li style="width:10%;text-align:center;"><input id='num<%#Eval("id") %>' value='<%#DataBinder.Eval(Container, "DataItem.pronum", "{0}")%>' style="width:30px" height='20px' onblur="keydo('<%#Eval("id") %>')"/></li>
			            <li style="width:10%;text-align:center;"><%#getjiage(Eval("proclass","{0}"),"1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
			            <li style="width:10%;text-align:center;"><%#getjiage(Eval("proclass", "{0}"), "2", DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></li>
			            <li style="width:5%;text-align:center;"><%#getproscheme(Eval("ID","{0}"))%></li>
			            <li style="width:10%;text-align:center;"><span id='price<%#Eval("id") %>'><%#getprojia(Eval("ID","{0}"))%></span></li>                  
			            <li style="width:10%;text-align:center;"><a href="PointUserCart.aspx?menu=del&cid=<%#Eval("id")%>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
	              </ul>
                <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                 <ul style="background-color:#F6F6F6">
			            <li style="width:9.5%;text-align:center;"><%#getproimg(Eval("id","{0}"))%></li>
			            <li style="width:20%;text-align:center;"><%#GetProtype(DataBinder.Eval(Container, "DataItem.id", "{0}"))%><%#Eval("proname")%></li>
			            <li style="width:8%;text-align:center;"><%#getProUnit(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
			            <li style="width:12.5%;text-align:center;">1</li>
			            <li style="width:12.5%;text-align:center;"><%#getjiage(Eval("proclass","{0}"),"1", DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
			            <li style="width:12.5%;text-align:center;"><%#getjiage(Eval("proclass", "{0}"), "2", DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
			            <li style="width:12.5%;text-align:center;"><%#getprojia(Eval("ID","{0}"))%></li>                  
			            <li style="width:12.5%;text-align:center;"><a href="PointUserCart.aspx?menu=del&cid=<%#Eval("id")%>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
	              </ul>
                </ItemTemplate>
                </asp:Repeater>
            </ItemTemplate>
        </asp:Repeater>
        <asp:HiddenField ID="prolists" runat="server" />
	  <div>
		<li style="width:100%;text-align:center;">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 个商品  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />个商品/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>页</li>
	</div>
	  <div class="cleardiv"></div>
		<ul>
			<li style="width:250px;text-align:left;">合计：<asp:Label ID="alljiage" runat="server" Text=""></asp:Label></li>
			<li>&nbsp;</li><li style="width:250px;text-align:left;">
                <asp:Button ID="Button1" runat="server" Text="去收银台结帐" onclick="Button1_Click" />
                <asp:HiddenField ID="project" runat="server" />
                <asp:HiddenField ID="jifen" runat="server" />
                <asp:HiddenField ID="hfproclass" runat="server" />
            </li>
            </ul>
	  <div class="cleardiv" style="height:30px"></div>
	  <div id="Div1" runat="server"><b>[促销内容:]</b></div>
    <div id="Label2" runat="server"></div>
    <div id="Label3" runat="server" style="padding-top:10px">
    <ul style="background-color:GrayText;">
    			        <li style="width:6.5%;text-align:center;color:White">选择</li>
    			        <li style="width:4%;text-align:center;color:White">ID</li>
			            <li style="width:9.5%;text-align:center; color:White">图片</li>
			            <li style="width:23%;text-align:center;color:White">商品名称</li>
			            <li style="width:8%;text-align:center;color:White">单位</li>
			            <li style="width:8.5%;text-align:center;color:White">数量</li>
			            <li style="width:12.5%;text-align:center;color:White">市场价</li>
			            <li style="width:12.5%;text-align:center;color:White">零售价</li>
			            <li style="width:12.5%;text-align:center;color:White">优惠价</li>                  
	              </ul>
	         <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
	              <ul>
	                    <li style="width:6.5%;text-align:center;"><input type="radio" name="projuct" value="<%#Eval("ID") %>" /></li>
                        <li style="width:4%;text-align:center;"><%#Eval("ID") %></li>
			            <li style="width:9.5%;text-align:center;"><%#getproimg(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
			            <li style="width:23%;text-align:center;"><%#GetProtype(Eval("id", "{0}"))%><%#Eval("proname")%></li>
			            <li style="width:8%;text-align:center;"><%#getProUnit(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></li>
			            <li style="width:8.5%;text-align:center;">1</li>
			            <li style="width:12.5%;text-align:center;"><%#shijia(DataBinder.Eval(Container, "DataItem.ShiPrice", "{0}"))%></li>
			            <li style="width:12.5%;text-align:center;"><%#shijia(DataBinder.Eval(Container, "DataItem.LinPrice", "{0}"))%></li>
			            <li style="width:12.5%;text-align:center;"><%#Getprojectjia(Eval("ID","{0}")) %></li>                  
			            
	              </ul>
	              </ItemTemplate>
        </asp:Repeater>
    </div>
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
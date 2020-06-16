<%@ page language="C#" autoeventwireup="true" inherits="AllShop, App_Web_vs4ncjmc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>代购</title>
<link rel="stylesheet" type="text/css" href="user/skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="user/skin/user_user.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
<script src="JS/ajaxrequest.js" type="text/javascript"></script>
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
    function sterline(s) {
        if (s == 1) {
            document.getElementById("sterline").style.display = 'block';
            document.getElementById("other").style.display = 'none';
        } else {
            document.getElementById("other").style.display = 'block';
            document.getElementById("sterline").style.display = 'none';
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div runat="server" id="JZ" runat="server" >
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
			            <li style="width:12.5%;text-align:center;"><a href='AllShop.aspx?menu=del&cid=<%#Eval("id")%>&ProClass=<%#Eval("ProClass") %>' onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></li>
	              </ul><div style="clear:both; height:1px; border-bottom:1px solid #808080;"></div>
            </ItemTemplate>
        </asp:Repeater>
	  <ul>
		<li style="width:100%;text-align:center;">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 个商品  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />个商品/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>页</li>
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
</div>
<div  runat="server" id="HB">
<div>
    <table cellspacing="0" cellpadding="0" width="80%" border="0" style="float:right">
    <tbody>
        <tr>
            <td>
                <div class="toptitle">
                <asp:LinkButton ID="LinkButton1" runat="server" Text="人民币支付"  onclick="LinkButton1_Click" />
                 <a href="javascript:sterline(1)">英镑支付</a>
                 <a href="javascript:sterline(2)">美元货币</a>
                </div>
            </td>
        </tr>
    </tbody>
</table>
</div>
<div id="sterline" style="display:none">
    <asp:LinkButton ID="LinkButton2" runat="server" Text="线下汇款"  PostBackUrl="/User/Shopfee/UserOrderinfo.aspx?page=1" /><br />
    <asp:LinkButton ID="LinkButton3" runat="server" Text="Paypal支付"  PostBackUrl="/User/Shopfee/PaypalDefray.aspx?page=1" />
</div>
<div id="other" style="display: none">
    <asp:LinkButton ID="LinkButton4" runat="server" Text="Paypal支付"  PostBackUrl="/User/Shopfee/PaypalDefray.aspx?page=2" />
</div>
</div>
<div id="DD" runat="server">
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
		<h1>请填写您的商品信息</h1>
		<h2>第二步：确认订单&nbsp;<img src="../User/images/regl2.gif" width="242" height="14" /></h2>
        <ul style="height:70px; margin-left:65px">
        <li >
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Flow" 
                onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="addre2" Selected="True"></asp:ListItem>
                <asp:ListItem Value="addre1">使用其它地址</asp:ListItem>
            </asp:RadioButtonList>
            </li>
        </ul>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 收货人姓名：</b></li>
			<li>&nbsp;<asp:TextBox ID="Receiver" runat="server"></asp:TextBox></li>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Receiver"
                ErrorMessage="收货人姓名不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></ul>
		<div class="cleardiv"></div>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 收货人地址：</b></li>
			<li>&nbsp;<asp:DropDownList ID="dddizhi" runat="server" 
                    onselectedindexchanged="dddizhi_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            <br /><asp:TextBox ID="Jiedao" runat="server" Width="409px"></asp:TextBox><asp:CheckBox ID="cbAdd" runat="server" />加入我的地址薄</li><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Jiedao"
                ErrorMessage="收货人地址不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></ul>
		<div class="cleardiv" style="margin-top:30px"></div>
		<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 收货人邮箱：</b></li>
			<li>&nbsp;<asp:TextBox ID="Email" runat="server"></asp:TextBox></li><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email"
                ErrorMessage="收货人邮箱不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email"
                                        ErrorMessage="邮件地址不规范" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator></ul>
		
		<div class="cleardiv"></div>
				<ul>
				
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 联系电话：</b></li>
			<li>
                    <asp:TextBox ID="Phone" runat="server"></asp:TextBox> 格式:区号-号码
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Phone"
                        Display="Dynamic" ErrorMessage="联系电话不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    
                        </li>
                        </ul>
				<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 邮政编码：</b></li>
			<li>&nbsp;
                    <asp:TextBox ID="ZipCode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ZipCode"
                        Display="Dynamic" ErrorMessage="邮政编码不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </li></ul>
<%--				<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 收货人手机：</b></li>
			<li>&nbsp;
                    <asp:TextBox ID="Mobile" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Mobile"
                        Display="Dynamic" ErrorMessage="收货人手机不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </li></ul>--%>
				<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 送货方式：</b></li>
			<li>&nbsp;<asp:DropDownList ID="Delivery" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="Delivery_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Delivery"
                        ErrorMessage="送货方式不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></li></ul>
         
                        
				<ul>
			<li style="width:150px;text-align:right;"><b><font color="#FF0000">*</font> 运费：</b></li>    
			<li>&nbsp;<asp:Label ID="lblYunFei" runat="server" ></asp:Label></li>
			<li style="width:150px;text-align:right;"></li>
			<li>&nbsp;</li><asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
              &nbsp;<asp:HiddenField ID="projiect" runat="server" />
                    <asp:HiddenField ID="prodectid" runat="server" />
                    <asp:HiddenField ID="projectjiage" runat="server" />
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                    <asp:HiddenField  ID="hfproclass" runat="server" />
                </ul>
		<div class="cleardiv"></div>
		<asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
		<div class="cleardiv"></div>
		<ul>
			<li style="width:150px;text-align:right;">&nbsp;</li>
			<li><asp:Button ID="Button2" runat="server" Text="提交订单" OnClick="Button2_Click" />&nbsp;</li>
			</ul>
		<div class="cleardiv"></div>
	</div>
</div>
<!-- 右边结束 -->
</div>
<div class="cleardiv"></div>
<div class="m_copyright" id="DIV2">
	<ul><a href=#>关于我们</a> | <a href=#>常见问题</a> | <a href=#>使用条款</a> | <a href=#>隐私声明</a> | <a href=#>安全提示</a> | <a href=#>意见反馈</a> | <a href=#>联系我们</a> | <a href=#>招聘信息</a></ul>
	<h1> &copy;2011 <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %> 版权所有。</h1>
</div>
</div>
</form>
</body>
</html>
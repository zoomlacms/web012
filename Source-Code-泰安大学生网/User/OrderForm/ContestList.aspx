﻿<%@ page language="C#" autoeventwireup="true" inherits="User_OrderForm_ContestList, App_Web_kjfosu5g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../Skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../Skin/user_user.css" />
<link rel="stylesheet" type="text/css" href="../Skin/user_reg.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="s_bright">
            <div class="us_topinfo">
                <div class="us_showinfo">
                        <span class="us_showinfo1">您好<asp:Label ID="LblUserName" runat="server" Text="" />！</span>
                        您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                            ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                            </span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span>
                                &gt;&gt; </span><span><a title="竞拍信息" href="ShopCarList.aspx?menu=Cartinfo">竞拍信息</a></span></span>
                </div>
                <div class="cleardiv"> </div>
            </div>
            <!-- str -->
            <div class="us_topinfo" style="margin-top: 10px;">
                <a href="ShopCarList.aspx?menu=Cartinfo">购物车管理</a> <a href="../ViewOrder.aspx?menu=Orderinfo">
                    订单管理</a> <a href="../ViewOrder.aspx?menu=Orderinfo&type=1">已确定的订单</a> <a href="../ViewOrder.aspx?menu=Orderinfo&type=2">
                        已发货订单</a> <a href="../ViewOrder.aspx?menu=Orderinfo&type=3">正常订单</a> <a href="../ViewOrder.aspx?menu=Orderinfo&type=4">
                            已成交订单</a> <a href="../ViewOrder.aspx?menu=Orderinfo&type=5">已作废订单</a></div>
            <br />
            <div class="us_topinfo">
                <a href="ShopCarList.aspx?menu=Cartinfo">购物车管理</a> | <a href="ColonelList.aspx">团购信息</a> | <a href="ContestList.aspx">竞拍信息</a>
            </div>
            
            <div class="us_seta" style="margin-top: 10px;">
                <div class="s_bright">
                    <div class="rg_inout">
                        <ul>
                            <li>
                                <p>
                                    <asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>&nbsp;
                                </p>
                            </li>
                        </ul>
                        <ul>
                            <li style="width: 9.5%; text-align: center;">图片</li>
                            <li style="width: 20%; text-align: center;">商品名称</li>
                            <li style="width: 12.5%; text-align: center;">价格</li>
                            <li style="width: 12.5%; text-align: center;">交易状态</li>
                        </ul>
                        <asp:Repeater ID="cartinfo" runat="server">
                            <ItemTemplate>
                                <ul>
                                    <li style="width: 9.5%; text-align: center;">
                                        <%#getproimg(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%>
                                    </li>
                                    <li style="width: 20%; text-align: center;">
                                        <%#Eval("proname")%>
                                    </li>
                                    <li style="width: 12.5%; text-align: center;">
                                        <%#getjiage("1",DataBinder.Eval(Container, "DataItem.ColonelMoney", "{0}"))%>
                                    </li>
                                    <li style="width: 12.5%; text-align: center;">
                                        <%#getprojia(DataBinder.Eval(Container, "DataItem.Settle", "{0}"))%>
                                    </li>
                                </ul>
                            </ItemTemplate>
                        </asp:Repeater>
                        <ul>
                            <li style="width: 100%; text-align: center;">共
                                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                                个商品
                                <asp:Label ID="Toppage" runat="server" Text="" />
                                <asp:Label ID="Nextpage" runat="server" Text="" />
                                <asp:Label ID="Downpage" runat="server" Text="" />
                                <asp:Label ID="Endpage" runat="server" Text="" />
                                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                                    Text="" />页
                                <asp:Label ID="pagess" runat="server" Text="" />个商品/页 转到第<asp:DropDownList ID="DropDownList1"
                                    runat="server" AutoPostBack="True">
                                </asp:DropDownList>页</li>
                        </ul>
                        <div class="cleardiv">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
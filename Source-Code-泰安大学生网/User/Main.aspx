<%@ page language="C#" autoeventwireup="true" inherits="User_Main, App_Web_qc2222fr" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员导航</title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function Load(r1, r2) {
    parent.document.getElementById("left").src = r1;
    parent.document.getElementById("main_right").src = r2;
}

function goforum_program() {
    Load('Content/ContentLeft.aspx', '../manage/AddOn/ProjectsList.aspx')
    Showtib(1);
}

function goforum_myinifo0_2() {
    Load('Left.aspx', 'Content/MyContent.aspx?NodeID=22')
    Showtib(0);
}

function goforum_myinfo0_4() {
    Load('Left.aspx', 'Info/UserInfo.aspx')
    Showtib(0);
}

function goforum_contentmanage1_6() {
    Load('Content/ContentLeft.aspx', 'Content/Default.aspx?t=1')
    Showtib(1);
}

function goforum_contentmanage1_15() {
    Load('Content/ContentLeft.aspx', '/user/iServer/FiServer.aspx')
    Showtib(1);
}

function goforum_contentmanage1_16() {
    Load('Content/ContentLeft.aspx', '../CN/nite/Content/ResumeManage.aspx')
    Showtib(1);
}

function goforum_shop2_1() {
    Load('Sera_shopLeft.aspx', 'PreViewOrder.aspx?menu=Cartinfo')
    Showtib(2);
}

function goforum_shop2_3() {
    Load('Sera_shopLeft.aspx', 'Info/listprofit.aspx')
    Showtib(2);
}

function goforum_shop2_7() {
    Load('Sera_shopLeft.aspx', 'Info/DredgeVip.aspx')
    Showtib(2);
}

function goforum_shop2_11() {
    Load('Sera_shopLeft.aspx', 'CashCoupon/ArriveManage.aspx')
    Showtib(2);
}

function goforum_shop2_12() {
    Load('Sera_shopLeft.aspx', 'Info/DredgeVip.aspx')
    Showtib(2);
}

function goforum_interaction3_13() {
    Load('Guild/CommunityLeft.aspx', 'UserZone/Default.aspx')
    Showtib(3);
}

function goforum_interaction3_17() {
    Load('Guild/CommunityLeft.aspx', 'Survey/SurveyAll.aspx')
    Showtib(3);
}

function goforum_mycollection4_10() {
    Load('UserShop/ShopLeft.aspx', '../Space/SpaceManage.aspx')
    Showtib(4);
}

function goforum_mycollection5_5() {
    Load('StationGuid.aspx', '#')
    Showtib(5);
}

function goforum_mycollection5_8() {
    Load('StationGuid.aspx', 'Pages/Default.aspx')
    Showtib(5);
}

function goForumFlex() {
    Load('Sera_shopLeft.aspx', 'PrintServer/ImageList.aspx');
}

function Showtib(num) {
    for (var i = 0; i < 6; i++) {
        if (i == num) {
            parent.document.getElementById("_Menu_" + num).className = "liOver";
         }
         else {
            parent.document.getElementById("_Menu_" + i).className = "liOut";
        }
    }
}
</script>
</head>

<body>
<form id="form1" runat="server">
<div id="wrap">
<ul>
<li style="display:none">
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_shop2_1();">
<img src="/App_Themes/UserThem/Images/ub1.gif" alt="订单管理" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_shop2_1();">订单管理</p>
</li>

<li>
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_myinifo0_2();">
<img src="/App_Themes/UserThem/Images/ub2.gif" alt="订阅管理" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_myinifo0_2();">发广告</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_shop2_3();">
<img src="/App_Themes/UserThem/Images/ub3.gif" alt="财务管理" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_shop2_3();">财务管理</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_myinfo0_4();">
<img src="/App_Themes/UserThem/Images/ub4.gif" alt="我的信息" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_myinfo0_4();">我的信息</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_mycollection5_5();">
<img src="/App_Themes/UserThem/Images/ub5.gif" alt="服务支持" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_mycollection5_5();">服务支持</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_contentmanage1_6();">
<img src="/App_Themes/UserThem/Images/ub6.gif" alt="内容管理" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_contentmanage1_6();">内容管理</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_shop2_7();">
<img src="/App_Themes/UserThem/Images/ub7.gif" alt="商城管理" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_shop2_7();">商城管理</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_mycollection5_8();">
<img src="/App_Themes/UserThem/Images/ub8.gif" alt="黄页管理" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_mycollection5_8();">黄页管理</p>
</li>

<li style="display:none">
<span><a href="../User/Message/Message.aspx"><img src="/App_Themes/UserThem/Images/ub9.gif" alt="我的短信" /></a></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'"><a  style="color:#1C5F85;" href="../User/Message/Message.aspx">我的短信</a></p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_mycollection4_10();">
<img src="/App_Themes/UserThem/Images/ub10.gif" alt="个人聚合" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_mycollection4_10();">个人聚合</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_shop2_11();">
<img src="/App_Themes/UserThem/Images/ub11.gif" alt="抵用券" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goforum_shop2_11();">抵用券</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'"   onmouseout="this.className='Span1'" onClick="goforum_shop2_12();">
<img src="/App_Themes/UserThem/Images/ub12.gif" alt="VIP卡" /></span>
<p onMouseOver="this.className='Span2'"  onmouseout="this.className='Span1'" onClick="goforum_shop2_12();">VIP卡</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'"   onmouseout="this.className='Span1'" onClick="goforum_interaction3_13();">
<img src="/App_Themes/UserThem/Images/ub13.gif" alt="社区互动" /></span>
<p onMouseOver="this.className='Span2'"  onmouseout="this.className='Span1'" onClick="goforum_interaction3_13();">社区互动</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goForumFlex();" >
<img src="/App_Themes/UserThem/Images/ub14.gif" alt="FLEX涂鸦" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'" onClick="goForumFlex();" >FLEX涂鸦</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'"  onmouseout="this.className='Span1'" onClick="goforum_contentmanage1_15();">
<img src="/App_Themes/UserThem/Images/ub15.gif" alt="有问必答" /></span>
<p onMouseOver="this.className='Span2'"   onmouseout="this.className='Span1'" onClick="goforum_contentmanage1_15();">有问必答</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'"  onmouseout="this.className='Span1'" onClick="goforum_contentmanage1_16();">
<img src="/App_Themes/UserThem/Images/ub16.gif" alt="招聘简历" /></span>
<p onMouseOver="this.className='Span2'"  onmouseout="this.className='Span1'" onClick="goforum_contentmanage1_16();">招聘简历</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'"  onmouseout="this.className='Span1'" onClick="goforum_program()">
<img src="/App_Themes/UserThem/Images/ub17.gif" alt="项目管理" /></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'">项目管理</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'"  onmouseout="this.className='Span1'" onClick="goforum_interaction3_17();">
<img src="/App_Themes/UserThem/Images/ub18.gif" alt="问券投票" /></span>
<p onMouseOver="this.className='Span2'"  onmouseout="this.className='Span1'" onClick="goforum_interaction3_17();">问券投票</p>
</li>

<li style="display:none">
<span onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'">
<a href="../try/Default.aspx" target="_blank"><img src="/App_Themes/UserThem/Images/ub19.gif" alt="在线试戴" /></a></span>
<p onMouseOver="this.className='Span2'" onMouseOut="this.className='Span1'"><a style="color:#1C5F85;" href="../try/Default.aspx" target="_blank">在线试戴</a></p>
</li>
<asp:Label ID="lblexp" runat='server' Visible="false"></asp:Label>  <!-- 博客论坛积分 -->
</ul>
</div>
<div id="leftMenu">
 <img src="Images/qu.png" style="vertical-align:middle"><font style="font:20px arial,sans-serif; font-family:华文新魏">有问必答</font><br />
<div id="divReplay" runat="server" style="padding-top:5px;"></div>
<a href="/user/iServer/FiServer.aspx"><img src="Images/QAb_14.gif" /></a><a href="/user/iServer/AddQuestion.aspx"><img src="Images/QAb_16.gif" /></a>
</div>
</form>
</body>
</html>
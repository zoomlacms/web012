<%@ page language="C#" autoeventwireup="true" inherits="MusicShow, App_Web_f4n0rzcf" title="音乐" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlCollect.ascx" TagName="WebUserControlCollect" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlComment.ascx" TagName="WebUserControlComment" TagPrefix="uc1" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head>
<title>会员中心 >> 浏览音乐</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
<style type="text/css">
TD {
	FONT-FAMILY: 宋体; COLOR: #000; FONT-SIZE: 12px
}
A:link {
	COLOR: #3d362b
}
A:visited {
	COLOR: #3d362b
}
A:hover {
	COLOR: #f60
}
H4 {
	BORDER-BOTTOM: #8d827c 1px solid; TEXT-ALIGN: left; PADDING-BOTTOM: 0px; LINE-HEIGHT: 25px; BACKGROUND-COLOR: #9b928d; MARGIN: 0px; PADDING-LEFT: 10px; PADDING-RIGHT: 0px; HEIGHT: 25px; COLOR: #fff; FONT-SIZE: 12px; BORDER-TOP: #8d827c 1px solid; FONT-WEIGHT: normal; PADDING-TOP: 0px; margin-left:20px;
}
H5 {
	BORDER-BOTTOM: #bababa 1px solid; PADDING-BOTTOM: 10px; MARGIN: 0px; PADDING-LEFT: 15px; PADDING-RIGHT: 15px; FONT-SIZE: 12px; PADDING-TOP: 10px; 
}
.GoodsInfoWarp {
	TEXT-ALIGN: left
}
.GoodsInfoWarp .info {
	PADDING-BOTTOM: 0px; PADDING-LEFT: 20px; PADDING-RIGHT: 20px; PADDING-TOP: 10px
}
.GoodsInfoWarp .info .paybutton A {
	MARGIN: 2px 0px; DISPLAY: block
}
.GoodsInfoWarp .subinfo TD {
	BORDER-BOTTOM: #e6e6e8 1px solid; TEXT-ALIGN: left; PADDING-BOTTOM: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; PADDING-TOP: 4px; FONT-SIZE: 12px;
}
.GoodsInfoWarp .subinfo TH {
	BORDER-BOTTOM: #e6e6e8 1px solid; TEXT-ALIGN: center; PADDING-BOTTOM: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; WHITE-SPACE: nowrap; COLOR: #424443; VERTICAL-ALIGN: top; FONT-WEIGHT: normal; PADDING-TOP: 4px; FONT-SIZE: 12px;
}
.GoodsInfoWarp .info .memberprice {
	COLOR: #ff9900; FONT-SIZE: 14px; FONT-WEIGHT: bold
}
.GoodsDetailsWarp {
	TEXT-ALIGN: left;
	PADDING-BOTTOM: 10px;
	PADDING-LEFT: 30px;
	PADDING-RIGHT: 10px;
	CLEAR: both;
	PADDING-TOP: 10px;
	text-indent: 30px;
}
.contant1 {
	MARGIN: 0px auto 0px;
	background-color: #FFFFFF;
}
.catebar {
	BACKGROUND: #363636;
	BORDER-TOP: #6c6c6c 3px solid;
	BORDER-bottom: #6c6c6c 1px solid;
	height:30px;
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
	padding-top: 5px;
	padding-left: 20px;
}
</style>
</head>
<body>
<form id="form1" runat="server">
        <div style="margin:auto; width:748px">
            <div class="us_topinfo">
                <div class="cleardiv">
                </div>
                <div class="us_pynews">
                        您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                            ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                            </span><span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent">
                                会员中心</a></span><span> &gt;&gt; </span><span>音乐</span>
                </div>
            </div>
            <uc3:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc3:WebUserControlTop>
        <table width="100%">
            <tr>
                <td align="center">
                    <div class="catebar">
                        音 乐</div>
                    <div class="contant1">
                        <div class="GoodsInfoWarp">
                            <div class="info">
                                <table width="100%" align="center">
                                    <tbody>
                                        <tr>
                                            <td width="327" align="middle" valign="top" style="padding-right: 70px">
                                                <table>
                                                    <tbody>
                                                        <tr>
                                                            <td class="ph" valign="top" align="middle">
                                                                <asp:Image ID="Image1" runat="server" Height="188px" Width="250px" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td height="20" align="center" valign="middle" class="paybutton">
                                                                加入我的收藏</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td width="300" valign="top">
                                                <h5>
                                                    <asp:Label ID="Label1" runat="server" Text="Label" Width="272px"></asp:Label></h5>
                                                <table class="subinfo" border="0" cellspacing="0" cellpadding="0" >
                                                    <tbody>
                                                        <tr>
                                                            <th width="139" align="right">
                                                                演唱者：</th>
                                                            <td width="361" colspan="3">
                                                                <asp:Label ID="Label3" runat="server" Text="Label" Width="107px"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <th align="right">
                                                                词：</th>
                                                            <td class="memberprice" colspan="3">
                                                                <asp:Label ID="Label4" runat="server" Text="Label" Width="107px"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <th align="right">
                                                                曲：</th>
                                                            <td colspan="3">
                                                                <asp:Label ID="Label5" runat="server" Text="Label" Width="107px"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <th align="right">
                                                                出版者：</th>
                                                            <td colspan="3">
                                                                <asp:Label ID="Label7" runat="server" Text="Label" Width="107px"></asp:Label></td>
                                                        </tr>
                                                        <tr>
                                                            <th align="right">
                                                                发行时间：</th>
                                                            <td colspan="3">
                                                                <asp:Label ID="Label8" runat="server" Text="Label" Width="107px"></asp:Label></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <td width="15%" height="30">&nbsp;
                                                            </td>
                                                        <td width="85%">
                                                            <uc2:WebUserControlCollect ID="WebUserControlCollect1" runat="server" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                        <h4>
                            详细介绍：</h4>
                        <div class="GoodsDetailsWarp">
                            <p style="text-align: left; line-height: 15pt; margin: 0cm 0cm 0pt; background: white;
                                mso-pagination: widow-orphan" class="MsoNormal" align="left">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                <span class="MsoNormal" style="text-align: left; line-height: 15pt; margin: 0cm 0cm 0pt;
                                    background: white; mso-pagination: widow-orphan"></span>
                            </p>
                        </div>
                        <h4>
                            在线评论：</h4>
                        <div class="GoodsDetailsWarp">
                            <p style="text-align: left; line-height: 15pt; margin: 0cm 0cm 0pt; background: white;
                                mso-pagination: widow-orphan" class="MsoNormal" align="left">
                                <uc1:WebUserControlComment ID="WebUserControlComment1" runat="server" />
                                <span class="MsoNormal" style="text-align: left; line-height: 15pt; margin: 0cm 0cm 0pt;
                                    background: white; mso-pagination: widow-orphan"></span>
                            </p>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        </div>
</form>
</body>
</html>
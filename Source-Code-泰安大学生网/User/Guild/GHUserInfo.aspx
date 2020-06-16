<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_GHUserInfo, App_Web_gt4knn2i" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员中心</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />

<script language="javascript" src="../../Guild/inc/dialogbox.js"></script>

<style>
.font1
{
	color: #999999;
}
.my1
{
	background-color: #F6F6F7;
	height: 21px;
	padding-top: 5px;
	padding-left: 10px;
	padding-right: 10px;
}
.my2
{
	height: 21px;
	padding-top: 4px;
	padding-left: 10px;
	padding-right: 10px;
}
.my3
{
	padding: 5px;
	border: 1px solid #BBC6D8;
	margin-top: 15px;
	margin-right: 5px;
	margin-left: 5px;
}
.ll {
background-image: url(../Images/titlebg.gif);
margin-bottom: 10px;
height: 22px;
padding-top: 5px;
padding-right: 10px;
padding-left: 10px;
}
</style>

<script language="javascript"  type="text/JavaScript">
var tID = 0;
var arrTabTitle = new Array("TabTitle0", "TabTitle1");
var arrTabs = new Array("Tabs0", "Tabs1");
function ShowTabs(ID) {
if (ID != tID) {
	document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
	document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
	document.getElementById(arrTabs[tID].toString()).style.display = "none";
	document.getElementById(arrTabs[ID].toString()).style.display = "";
	tID = ID;
   parent.document.getElementById("main_right").height = document.body.offsetHeight + 600;

}
}
</script>
</head>
<body>
    <div>
        <table border="0" width="100%" cellpadding="0" cellspacing="5">
            <tr>
                <td width="120" colspan="2" align="center">
                    <a href="#">
                        <img src="#" width="120" height="120" border="0"></a>
                </td>
                <td rowspan="3" width="60%">
                    <table border="0" height="160" width="100%" cellpadding="0" cellspacing="0">
                        <tr class="my1">
                            <td colspan="2">
                                <font color="#999999">昵称：</font>
                                <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="my2">
                            <td colspan="2">
                                <font color="#999999">年龄：</font>
                                <asp:Label ID="lblUserAge" runat="server" Text=""></asp:Label>
                                <font color="#999999">属相：</font>
                                <asp:Label ID="lblUserGenus" runat="server" Text=""></asp:Label>
                                <font color="#999999">星座：</font>
                                <asp:Label ID="lblUserConstellation" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr class="my1">
                            <td>
                                <font color="#999999">等级：</font>
                                <asp:Label ID="lblUserGrade" runat="server" Text=""></asp:Label>
                                <font color="#999999">积分：</font>
                                <asp:Label ID="lblintegral" runat="server" Text=""></asp:Label>
                            </td>
                            <td align="right">
                                <a href="#">积分等级说明</a>
                            </td>
                        </tr>
                        <tr class="my2">
                            <td>
                                <font color="#999999">我的小屋：</font> <a href="http://hi.u9u8.com/u/?id=3886257" target="_blank">
                                    <asp:Label ID="lblUserWigwam" runat="server" Text="http://hi.u9u8.com/u/?id=3886257"></asp:Label>
                                </a>
                                <td align="right">
                                    <a href="http://hi.u9u8.com/u/?id=3886257" target="_blank"><font color="red"><b>进入个人空间</b></font></a>
                                </td>
                            </td>
                        </tr>
                        <tr class="my1">
                            <td colspan="2">
                                <font color="#999999">所在地区：</font>
                                <asp:Label ID="lblCity" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="my3">
                                <%--   <a href="javascript:void(0);" onclick="popdialog.openWithIframe('更新状态','status/add_status.asp',370,200)">
                        <font color="#999999">更新状态</font></a> <a href="javascript:void(0);" onclick="popdialog.openWithIframe('更新状态','status/add_status.asp',370,200)">
                            <img src="images/pencil.gif" align="absmiddle" border="0" onmouseover="this.src='images/pencil2.gif';"
                                onmouseout="this.src='images/pencil.gif';" /></a> <a href="status/">
                                    <img src="images/more.gif" align="absmiddle" border="0" onmouseover="this.src='images/more1.gif';"
                                        onmouseout="this.src='images/more.gif';" title="查看状态更新历史" /></a>--%>
                                <a href="#" onclick="popdialog.openWithIframe('更新状态','UserState.aspx',370,200)">
                                <font color="#999999">更新状态</font></a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td rowspan="4" width="50%">
                    <table border="0"  width="100%">
                        <tr>
                            <td  >
                                <table width="100%" cellpadding="0" cellspacing="0">
                                    <tr class="ll">
                                        <td>
                                            站内统计
                                        </td>
                                        <td align="right">
                                            <a href="#">重新统计</a>
                                        </td>
                                    </tr>
                                    <tr >
                                        <td>
                                            消息：<asp:Label ID="lblUserMessage" runat="server" Text="0"></asp:Label>
                                        </td>
                                        <td>
                                            日志：<asp:Label ID="lblUserLog" runat="server" Text="0"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr >
                                        <td>
                                            相片：
                                            <asp:Label ID="lblPhoe" runat="server" Text="0"></asp:Label>
                                        </td>
                                        <td>
                                            评论：
                                            <asp:Label ID="lblCommand" runat="server" Text="0"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr >
                                        <td>
                                            留言：<asp:Label ID="lblUserWord" runat="server" Text="0"></asp:Label>
                                        </td>
                                        <td>
                                            好友：<asp:Label ID="lblUserhail" runat="server" Text="0"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td height="160" >
                                <table width="100%" cellpadding="0" cellspacing="0" >
                                    <tr class="ll">
                                        <td>
                                            我的好友
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                            <asp:DataList ID="DataList1" runat="server">
                                                <ItemTemplate>
                                                    <%--          <li>
                                       <div class=facepic><a href="http://hi.u9u8.com/u/?id=3170345"  >
                                       <img src=http://face.u9u8.com/uploadfile_s/32/3170345.jpg border=0 height=50 width=50></a></div>
                                       <a href="http://hi.u9u8.com/u/?id=3170345" target="_blank">ING丶總裁</a></li>
--%>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <a href="#">邀请朋友加入&gt;&gt;</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <a href="#">查看更多好友&gt;&gt;</a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <table width="100%" cellpadding="0" cellspacing="0">
                                    <tr class="ll">
                                        <td>
                                            最近来访
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:DataList Width="100%" ID="DataList2" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">
                                                <ItemTemplate>
                                                    <%-- <li><div class=facepic><a href="http://hi.u9u8.com/u/?id=3170345" >
<img src=http://face.u9u8.com/uploadfile_s/32/3170345.jpg border=0 height=50 width=50></a></div>
<a href="http://hi.u9u8.com/u/?id=3170345" target="_blank">ING丶總裁</a><br><font color=#999999>12-08
</font></li>--%>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <a href="#">所有访客&gt;&gt;</a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="60" align="center">
                    <a href="../User_HeadPhoto.aspx">修改头像</a>
                </td>
                <td width="60" align="center">
                    <a href="../UserGH_Info.aspx">个人资料</a>
                </td>
            </tr>
            <tr>
                <td width="60" align="center">
                    <a href="../GetPassword.aspx">密码修改</a>
                </td>
                <td align="center">
                    <a href="../UserGH_Info.aspx">论坛签名</a>
                </td>
            </tr>
            <tr>
                <td colspan="3">
<%--                  <%--  <!---切换栏目-->
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr align="center">
                            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                                全部动态
                            </td>
                            <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                                好友动态
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <table width="100%">
                        <tbody id="Tabs0">
                         全部动态aaaa
                <%-- <asp:DataList ID="DynamicAll" runat="server" width="100%" RepeatColumns="10" >
                 <ItemTemplate>
                 
                 </ItemTemplate>
                </asp:DataList>     --%> 
             <%--   </tbody>
                </table>
               
                <table width="100%">
                        <tbody id="Tabs1" style="display: none">
                        好友动态nnn
               <asp:DataList ID="fellowAll" runat="server" width="100%" RepeatColumns="10">
                 <ItemTemplate>
                 
                 </ItemTemplate>
                </asp:DataList>  
 
                </tbody>
               </table>--%>
               
                    <div class="clearfix">
                    </div>
                    <table width="100%" id="idphoe" cellpadding="0" cellspacing="0">
                        <tr class="ll">
                            <td >
                                最新照片
                            </td>
                            <td align="right">
                                <a href="#">更多&gt;&gt;</a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:DataList ID="DataListPhoe" Width="100%" runat="server" RepeatColumns="3">
                                    <ItemTemplate>
                                        <%--                            <a href='#' target=_blank>
                            <img src='#' 
                            border=0 alt='暂无名称'>
                            </a>--%>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                        </tr>
                    </table>
                    <div class="clearfix">
                    </div>
                            <br />
                    <table width="100%" id="idlog" cellpadding="0" cellspacing="0">
                        <tr class="ll">
                            <td>
                                最新日志
                            </td>
                            <td align="right">
                                <a href="#">更多&gt;&gt;</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DataList Width="100%" ID="DataList3" runat="server" RepeatColumns="1">
                                    <ItemTemplate>
                                        <%--  <div class=articletitle>
                        <div class="t1">
                        <a href="blog/blog_view.asp?log_id=591004"  
                        title="sdfs">
                        <font color="">sdfs</font></a>
                        </div><div class="t2">
                        <a href="blog/blog_editarticle.asp?arid=591004">编辑</a>
                         | <a href="javascript:void(0);" 
                         onclick="popdialog.openWithIframe('删除日记','blog/del_blog_dialog.asp?did=591004',280,160)">删除</a></div>--%>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                        </tr>
                    </table>
                    <div class="clearfix">
                    </div>
                   <br />
                    <table width="100%" cellpadding="0" cellspacing="0">
                        <tr class="ll" > 
                            <td >
                                留言板
                            </td>
                            <td align="right">
                                <a href="#">更多&gt;&gt;</a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:DataList ID="DataList4" runat="server">
                                    <ItemTemplate>
                                        <%--                        <div class="lr">
<div class="l1"><div class="facepic"><a href="http://hi.u9u8.com/u/?id=3886257" target="_blank"><img src=http://face.u9u8.com/uploadfile_s/39/3886257.jpg border=0 height=50 width=50></a></div></div>
<div class="l2"><div><a href="http://hi.u9u8.com/u/?id=3886257" target="_blank"><b>jnngs</b></a> 说：</div><div class=c><Img Src=http://my.u9u8.com/images/bq/Dh111.Gif Border=0 Align=Middle></div><div class=f>2009-12-11 20:05:00  	<a href="javascript:void(0);" onclick="mess_del(6809);">删除</a></div></div>
<div class="clearfix"></div>
</div>--%>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_GameManage, App_Web_qybeg4s3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>游戏管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
function CheckAll(spanChk)//CheckBox全选
{
var oItem = spanChk.children;
var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
xState=theBox.checked;
elm=theBox.form.elements;
for(i=0;i<elm.length;i++)
if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
{
    if(elm[i].checked!=xState)
    elm[i].click();
}
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
<span>商户管理 &gt;&gt; <a href="GameManage.aspx"> 游戏管理</a></span>
 </div>
<div class="clearbox">
</div>
<div>

<div class="r_navigation">
<span style="padding-left:20px;">管理导航：<a href="../Game/GameManage.aspx">游戏管理</a>-<a href="../Game/GameSelect.aspx?GMID=1">游戏充值</a>-<a href="../Game/PaymentSucc.aspx">所有成功订单</a>-<a href="../Game/PaymentToday.aspx">今天成功订单</a>-<a href="../Game/PaymentYesToday.aspx">昨天成功订单</a>-<a href="../Game/PaymentbeYesday.aspx">前天成功订单</a>-<a href="../Game/PaymentNotSend.aspx">未发送订单</a>-<a href="../Game/PaymentFailSend.aspx">发送失败订单</a>-<a href="../Game/ShowPayList.aspx">订单结算</a></span>
</div>
</div>
<div style="text-align:center">
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top:5px;">
  <tr align="center">
    <td width="5%" class="title">ID</td>
    <td width="20%" class="title">游戏名称</td>
    <td width="20%" class="title">游戏公司</td>
    <td width="10%" class="title">游戏状态</td>
    <td width="50%" class="title"> 操作</td>
  </tr>
    <asp:Repeater ID="gvCard" runat="server">       
    <ItemTemplate>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    
    <td height="22" align="center"><%#Eval("ID") %></td>
    <td height="22" align="center"><%#Eval("gameName") %></td>
    <td height="22" align="center"><%#Eval("gameComy") %></td>
    <td height="22" align="center"><%#Eval("status") %></td>
    <td height="22" align="center"><a href ="AreaList.aspx?gID=<%#Eval("ID") %>">分区列表</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href ="AddArea.aspx?ID=<%#Eval("ID") %>">添加分区</a> 
   </td>
  </tr>
    </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
    <td height="22" colspan="6" align="center" class="tdbgleft">
    共
    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
    个信息
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />
    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
        Text="" />页
    <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
        runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    页
          </td>
  </tr>
</table>

</form>
</body>
</html>

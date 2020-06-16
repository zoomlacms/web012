<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Payment, App_Web_3clsirg0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>订单管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
   function CheckAll(spanChk)//CheckBox全选
   {
	   var oItem = spanChk.children;
	   var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
	   xState = theBox.checked;
	   elm = theBox.form.elements;
	   for (i = 0; i < elm.length; i++)
		   if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
		   if (elm[i].checked != xState)
			   elm[i].click();
	   }
   }
</script>

<script language="javascript" type="text/javascript" src="../../JS/Calendar.js">
</script>

<style type="text/css">

p.MsoNormal
{margin-bottom:.0001pt;
text-align:justify;
text-justify:inter-ideograph;
font-size:10.5pt;
font-family:"Times New Roman","serif";
		margin-left: 0cm;
		margin-right: 0cm;
		margin-top: 0cm;
	}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
         <span>游戏管理</span> &gt;&gt;<span>发送失败订单</span>
        <br />
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr>
        <td align="right" style="width:60px" >
             <asp:Label ID="Label7" runat="server" Text="Label">开始日期</asp:Label>            
        </td>
        <td  style="width:120px">
            <asp:TextBox ID="startDate" runat="server" Width="120px"  onfocus="calendar();"></asp:TextBox>
        </td>
        <td align="right" style="width:70px">
             <asp:Label ID="Label8" runat="server" Text="Label">结束日期</asp:Label>           
        </td>
        <td style="width:140px">
             <asp:TextBox ID="endDate" runat="server" Width="120px"  onfocus="calendar();"></asp:TextBox>
        </td>
        <td >&nbsp;</td>
    </tr>
    <tr>
        <td align="right"><asp:Label ID="Label1" runat="server" Text="Label">游戏分区</asp:Label> </td>
        <td style="width:140px">
            <asp:DropDownList ID="Area" runat="server" DataTextField="areaName" 
                DataValueField="ID">
            </asp:DropDownList>
         </td>
         <td align="right"><asp:Label ID="Label2" runat="server" Text="Label">游戏帐号</asp:Label></td>
        <td style="width:140px"><asp:TextBox ID="GameNum" runat="server" Width="120px"></asp:TextBox></td>
        <td align="right"><asp:Label ID="Label4" runat="server" Text="Label">支付方式</asp:Label></td>
        <td style="width:140px">
            <asp:DropDownList ID="payPlat" runat="server" DataTextField="PayPlatName" 
                DataValueField="PayPlatID">
            </asp:DropDownList>
        </td>

        <td ><asp:Button ID="search" runat="server" Text="查询" 
                onclick="search_Click" /></td>
    </tr>
   </table>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
                
        <td width="10%" class="title">游戏帐号</td>
        <td width="10%" class="title">所走通道</td>
        <td width="10%" class="title">操作时间</td> 
        <td width="10%" class="title">游戏分区</td> 
        <td width="10%" class="title">订单号</td>
        <td width="10%" class="title">卡号</td>
        <td width="10%" class="title">充值金额</td> 
        <td width="10%" class="title">实际金额</td> 
        <td width="10%" class="title">订单状态</td>
        <td width="5" class="title">操作</td> 
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
         <td height="22" align="center"><%#Eval("GameUser") %></td>
         <td height="22" align="center"><%#Eval("PayPlatName") %></td>
         <td height="22" align="center"><%#Eval("PayTime")%></td> 
         <td height="22" align="center"><%#Eval("areaName") %></td>
         <td height="22" align="center"><%#Eval("paymentNum") %></td>
         <td height="22" align="center"><%#GetCardNum(Eval("CardNum").ToString()) %></td>
         <td height="22" align="center"><%#Convert.ToDecimal( Eval("Money") ).ToString("f2")%></td> 
         <td height="22" align="center"><%#Convert.ToDecimal( Eval("MoneyTrue")).ToString("f2") %></td>         
         <td height="22" align="center">        
            <%#GetResult(Eval("Status").ToString(), Eval("IsSend").ToString(), Eval("IsChange").ToString())%>        
         </td>
         <td height="22" align="center"><a href="PaymentFailSend.aspx?paymentNum=<%#Eval("paymentNum") %>">转入未发送</a></td>
        
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="10" align="center" class="tdbgleft">
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
   <div class="clearbox"></div>
   <div style="font-size:small">
      <font color="red">［订单状态］</font>依次表示--充值状态｜是否发送至游戏库｜是否修改游戏库币值
   </div>
    </form>
</body>
</html>

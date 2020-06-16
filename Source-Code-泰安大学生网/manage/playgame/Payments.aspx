<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Payment, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>游戏管理</span> &gt;&gt;所有成功订单</span>
        <br />     
  
    </div>
   
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 5px;">
    <tr  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" style="width:60px" >
             <asp:Label ID="Label7" runat="server" Text="Label">开始日期</asp:Label>            
        </td>
        <td  style="width:120px">
            <asp:TextBox ID="startDate" class="l_input" runat="server" Width="120px"  onfocus="calendar();"></asp:TextBox>
        </td>
        <td align="right" style="width:70px">
             <asp:Label ID="Label8" runat="server" Text="Label">结束日期</asp:Label>           
        </td>
        <td style="width:140px">
             <asp:TextBox ID="endDate" class="l_input" runat="server" Width="120px"  onfocus="calendar();"></asp:TextBox>
        </td>
        <td >&nbsp;</td>
    </tr>
    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right"><asp:Label ID="Label1" runat="server" Text="Label">订单号</asp:Label> </td>
        <td><asp:TextBox ID="paymentNum" class="l_input" runat="server" Width="120px"></asp:TextBox></td>        
        
        <td align="right"><asp:Label ID="Label2" runat="server" Text="Label">游戏帐号</asp:Label></td>
        <td style="width:140px"><asp:TextBox ID="GameNum" class="l_input" runat="server" Width="120px"></asp:TextBox></td>
        
        <td align="right"><asp:Label ID="Label3" runat="server" Text="Label">充值卡号</asp:Label></td>
        <td style="width:140px"><asp:TextBox ID="cardNum" class="l_input" runat="server" Width="120px"></asp:TextBox></td>
       
        <td ><asp:Button ID="search" class="C_input" runat="server" Text="查询" 
                onclick="search_Click" /></td>
    </tr>
   </table>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 5px;">
      <tr align="center">
                
        <td width="5%" class="title">商户名</td>
        <td width="10%" class="title">订单号</td>
        <td width="10%" class="title">游戏分区</td>
        <td width="10%" class="title">游戏帐号</td>
        <td width="10%" class="title">卡号</td>       
        <td width="10%" class="title">支付金额</td>        
        <td width="10%" class="title">实际金额</td> 
        <td width="10%" class="title"> 处理结果</td>
        <td width="15%" class="title"> 支付通道</td>
        <td width="10%" class="title"> 支付时间</td>           
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
         
         <td height="22" align="center"><%#Eval("UserName")%></td>       
         <td height="22" align="center"><%#Eval("paymentNum") %></td>  
         <td height="22" align="center"><%#Eval("areaName") %></td>
         <td height="22" align="center"><%#Eval("GameUser") %></td>
         <td height="22" align="center"><%#GetCardNum(Eval("CardNum").ToString()) %></td>
         <td height="22" align="center"><%#Convert.ToDecimal( Eval("Money") ).ToString("f2")%></td> 
         <td height="22" align="center"><%#Convert.ToDecimal( Eval("MoneyTrue")).ToString("f2") %></td>         
        <td height="22" align="center">
        
        <%#GetResult(Eval("Status").ToString(), Eval("IsSend").ToString(), Eval("IsChange").ToString())%>
        
        </td>  
        <td height="22" align="center"><%#Eval("PayPlatName") %></td>
        <td height="22" align="center"><%#Eval("PayTime")%></td>           
        
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
        页</td>
      </tr>
    </table>
   <div class="clearbox"></div>
   <div style="font-size:small">
      <font color="red">［处理结果］</font>依次表示--充值状态｜是否发送至游戏库｜是否修改游戏库币值
   </div>
    </form>
</body>
</html>
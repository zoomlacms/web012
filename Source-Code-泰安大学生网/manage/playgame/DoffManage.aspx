<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_DoffManage, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>分区管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script language="javascript" type="text/javascript" src="../../JS/Calendar.js">
<style type="text/css">
    .style1
    {
        line-height: 22px;
        color: #1e860b;
        font-weight: bold;
        width: 19%;
        background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top;
    }
    .style2
    {
        width: 19%;
    }
</style>
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
    <script>
        function selectnum() {
            parent.document.getElementById("main_right").height = document.body.offsetHeight + 200;
        }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>游戏管理</span> &gt;&gt; <span>丢单管理</span> </div>
    <div class="clearbox">
    </div>
    <div>
        <table>
            <tr>
        <td align="right" style="width:60px" >
             <asp:Label ID="Label7" runat="server" Text="Label">开始日期</asp:Label>            
        </td>
        <td  style="width:120px">
            <asp:TextBox ID="startDate" class="l_input"  runat="server" Width="120px"  onfocus="calendar();selectnum();"></asp:TextBox>
        </td>
        <td align="right" style="width:70px">
             <asp:Label ID="Label8" runat="server" Text="Label">结束日期</asp:Label>           
        </td>
        <td style="width:140px">
             <asp:TextBox ID="endDate" class="l_input"  runat="server" Width="120px"  onfocus="calendar();selectnum();"></asp:TextBox>
        </td>
        <td ><asp:Button ID="searchDate" class="C_input"  runat="server" Text="查询" 
                onclick="searchDate_Click"/></td>
    </tr>      
        </table>
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      
      <tr align="center">      
        <td width="10%" class="title">商户名</td>      
        <td width="15%" class="title">支付编号</td>
        <td width="10%" class="title">游戏名称</td>
        <td width="15%" class="title">支付时间</td>
        <td width="15%" class="title">所走通道</td>
        <td width="15%" class="title">卡号</td>
        <td width="10%" class="title">支付金额</td>
        <td width="10%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><%# GetGMName(Convert.ToInt32(Eval("GMID")))%></td>  
        <td height="22" align="center"><%# Eval("paymentNum")%></td>
        <td height="22" align="center"><%#GetGameName(Eval("GameID","{0}"))%></td>
        <td height="22" align="center"><%# Eval("Paytime")%></td>
        <td height="22" align="center"><%# GetPlatName(Convert.ToInt32(Eval("payPlatID")))%></td>
        <td height="22" align="center"><%# GetCardNum(Eval("CardNum").ToString())%></td>
        <td height="22" align="center"><%# Eval("Money")%></td>
        
        <td height="22" align="center"><a href="DoffManage.aspx?payid=<%# Eval("PayID","{0}")%>&menu=del" OnClick="return confirm('你确定放弃丢单吗？');">放弃丢单</a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="8" align="center" class="tdbgleft">
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
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页
              </td>
      </tr>
    </table>
    
    </form>
</body>
</html>

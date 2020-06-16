<%@ page language="C#" autoeventwireup="true" inherits="User_Game_GameSelect, App_Web_qybeg4s3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>浏览</title>
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
        <span>商户管理</span> &gt;&gt; <span><a href="GameManage.aspx"> 游戏充值</a></span> </div>
    <div class="clearbox">
    </div>
    <div> 
    </div>
    <div style="text-align:center"> </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="5%" class="title">ID</td>
        <td width="20%" class="title">游戏名称</td>
        <td width="20%" class="title">游戏公司</td>
        <td width="10%" class="title">游戏状态</td>
        <td width="35%" class ="title">所有分区充值页面</td>
        <td width="10%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        
        <td height="22" align="center"><%#Eval("ID") %></td>
        <td height="22" align="center"><%#Eval("gameName") %></td>
        <td height="22" align="center"><%#Eval("gameComy") %></td>
        <td height="22" align="center"><%#Eval("status") %></td>
        <td height="22" align="center"><a href="Default.aspx?gID=<%#Eval("ID") %>&GMID=<%=Request.QueryString["GMID"]%>"><%=getsiteurl() %>/user/Game/Default.aspx?gID=<%#Eval("ID") %>&GMID=<%=Request.QueryString["GMID"]%></a></td>
        <td height="22" align="center"><a href ="SelectAreaList.aspx?gID=<%#Eval("ID") %>">分区列表</a> </td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="7" align="center" class="tdbgleft">
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

   
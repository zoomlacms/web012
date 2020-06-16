<%@ page language="C#" autoeventwireup="true" inherits="manage_playgame_AreaManage, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>分区管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>游戏管理</span> &gt;&gt; <span>分区管理</span> </div>
    <div class="clearbox">
    </div>
    <div>
     
        
    </div>
    <div style="text-align:center">
      
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        
        <td width="10%" class="title">分区ID</td>
        <td width="10%" class="title">分区名称</td>
        <td width="10%" class="title">所属GM</td>
        <td width="10%" class="title">游戏ID</td>
        <td width="20%" class="title">游戏名称</td>
        <td width="30%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
       
        <td height="22" align="center"><%#Eval("ID") %></td>        
        <td height="22" align="center"><%#Eval("areaName") %></td>
        <td height="22" align="center"><%#Eval("UserName") %></td>
        <td height="22" align="center"><%#Eval("gID") %></td>
        <td height="22" align="center"><%#Eval("gameName") %></td>
        <td height="22" align="center">
        <a href="../User/Usreinfo.aspx?id=<%#Eval("UserID") %>">资料</a>
        <a href="Payment2.aspx?areaid=<%#Eval("ID") %>">交易</a>&nbsp;&nbsp;<a href="GameConfig.aspx?areaid=<%#Eval("ID") %>" ><%# Returnrule(Eval("ID","{0}"))%></a>
       &nbsp;&nbsp;<a href="updateGA.aspx?ID=<%#Eval("ID") %>" >修改</a>
       &nbsp;&nbsp;<a href="AreaManage.aspx?delete=<%#Eval("ID") %>" onclick="return confirm('确实要删除吗？删除后不能恢复!');">删除</a></td>
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
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
        </asp:DropDownList>
        页
              </td>
      </tr>
    </table>
   
    </form>
</body>
</html>

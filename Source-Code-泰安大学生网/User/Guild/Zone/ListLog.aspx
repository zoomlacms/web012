<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_ListLog, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
var x_open_path = ""; //设置图标地址 
</script>
<script type="text/javascript" src="../../../JS/x_open.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin-top:5px;">
  <tr align="center">    
    <td width="5%" class="title">ID</td>
    <td width="20%" class="title">标题</td>
    <td width="50%" class="title">内容</td>
    <td width="10%" class="title">修改时间</td>
    <td width="15%" class="title">修改</td>
  </tr>
    <asp:Repeater ID="gvCard" runat="server">       
    <ItemTemplate>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    
    <td height="22" align="center"><%#Eval("GID") %></td>
    <td height="22" align="center"><%#Eval("GTitle") %></td>
    <td height="22" align="center"><%#Eval("GContent") %></td>
    <td height="22" align="center"><%#Eval("UpdateTime")%></td>
    <td height="22" align="center"><a href="UpdateLog.aspx?gid=<%# Eval("GID") %>">修改</a></td>
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
    </div>
    </form>
</body>
</html>
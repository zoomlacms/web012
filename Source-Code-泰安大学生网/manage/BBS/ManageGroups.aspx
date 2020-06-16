<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_ManageGroups, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>论 坛 组</title>

     <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="r_navigation">
    
  <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>论坛</span> &gt;&gt; <span>论坛组</span>
    </div>
    <div class="clearbox"></div>
      <table border="0" width="100%" align="center">
	<tr>
		<td align="right"><asp:Button ID="Button2"
            runat="server" OnClientClick="location.href='AddGroup.aspx?menu=add';return false;" Text="新建论坛组" class="C_input" />
                </td>
	</tr>
</table>
   <table width="100%"  cellpadding="0" cellspacing="1" align="center" class="border" border="0">
        <tbody>
            <tr class="gridtitle" align="center" style="height:25px;">
            <td width="5%" style="height: 25px">
                    <strong>ID</strong></td>     
                <td width="45%" style="height: 25px">
                    <strong>名称</strong></td>                
                <td width="30%" style="height: 25px">
                    <strong>描述</strong></td>                           
                <td width="20%" style="height: 25px">
                    <strong>动作</strong></td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" onitemcommand="Repeater1_ItemCommand" >
                <ItemTemplate>
                
                    <tr class="tdbg" height="25px" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">  
                    <td>
                        <%# Eval("GroupID","{0}")%>                      
                        </td> 
                        <td>
                        <a href="AddGroup.aspx?menu=edit&GroupID=<%# Eval("GroupID","{0}")%>"><%# Eval("GroupName")%></a>         
                        </td>             
                        <td>
                            <%# Eval("GroupDescription")%></td>                                                   
                        <td><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("GroupID")%>' CommandName="edit">编辑</asp:LinkButton>&nbsp;|&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("GroupID")%>' CommandName="manage">管理</asp:LinkButton>&nbsp;|&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("GroupID")%>' CommandName="del" OnClientClick="if(!this.disabled) return confirm('确实要删除吗？');">删除</asp:LinkButton>
                           
                            </td> 
                    </tr>
                </ItemTemplate>
             </asp:Repeater>  
              <tr class="tdbg">
        <td height="22" colspan="4" align="center" class="tdbg">共
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
      </td >       
      </tr>                      
        </tbody>
    </table>
   
<table border="0" width="100%" align="center">
	<tr>
		<td align="right"><asp:Button ID="Button3"
            runat="server" OnClientClick="location.href='TreeView.aspx';return false;" Text="切换到树型模式" class="C_input" /></td>
	</tr>
</table>
<br />
    <asp:Button ID="Button1" runat="server" Text="返 回" onclick="Button1_Click" class="C_input"/>
    </form>
</body>
</html>

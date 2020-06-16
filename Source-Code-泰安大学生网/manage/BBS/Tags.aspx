<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_Tags, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>标签</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
      <div class="r_navigation">
    
  <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>论坛</span> &gt;&gt; <span>标签</span>
    </div>
    <div class="clearbox"></div>
   <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tbody>
            <tr class="gridtitle" align="center" style="height:25px;">
                <td width="10%" style="height: 25px">
                    <strong>ID</strong></td>                
                <td width="10%" style="height: 25px">
                    <strong>标签名</strong></td>
                <td width="20%" style="height: 25px">
                    <strong>创建日期</strong></td>
                <td width="20%" style="height: 10px">
                    <strong>总帖子数</strong></td> 
                    <td width="20%" style="height: 10px">
                    <strong>最后更新日期</strong></td>                                   
                <td width="30%" style="height: 25px">
                    <strong>动作</strong></td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" >
                <ItemTemplate>
                    <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">                        
                        <td>
                            <strong><%# Eval("ID") %></strong></td>                        
                        <td>
                            <strong><%# Eval("")%></strong></td>
                        <td >
                            <strong><%# Eval("")%></strong></td>                                               
                        <td >
                            <strong><%# Eval("")%></strong></td>   
                            <td >
                            <strong><%# Eval("")%></strong></td>                          
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ID") %>'>修改</asp:LinkButton> | 
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("ID") %>' OnClientClick="return confirm('#');">删除</asp:LinkButton>                         
                            </td>
                    </tr>
                </ItemTemplate>
             </asp:Repeater>                        
        </tbody>
    </table>
    <asp:Button ID="Button1" runat="server" Text="更新" Height="23px" Width="54px" class="C_input"/>
    <br />
  <asp:Button ID="Button4" runat="server" Text="<<返回" class="C_input"/>     
  <asp:Button ID="Button5" runat="server" Text="前进>>" class="C_input"/>
    </form>
</body>
</html>

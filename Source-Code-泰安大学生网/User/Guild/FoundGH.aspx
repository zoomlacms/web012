<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_FoundGH, App_Web_gt4knn2i" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我已创建公会</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="s_bright">
        <div class="us_topinfo">
            <div class="us_showinfo">
                    您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank">
<asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; 
</span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; 
</span><span><a title="我的公会" href="Default.aspx">我的公会</a></span></span>
            </div>
            <div class="cleardiv">
            </div>
        </div>
         <div class="us_topinfo" style="margin-top:10px;">
            <a href="Default.aspx">我已加入的公会</a> |<a href="FoundGH.aspx">我已创建的公会</a>|<a href="GuildIndex.aspx">我是会长创建公会</a>|<a href="List.aspx">公会排行列表</a>
            </div>
              <div style="margin-top:10px;">
		  <div class="us_seta" style="margin-top:5px;">
		    <h1><div align="center">
		    我已创建的公会</div></h1>
              <li style="width:100%; float:left;line-height:30px">
              <asp:Panel ID="Panel1" runat="server"> 
              <table width="100%"  border="0">
                  <caption>
                      您还没有自己的游戏公会，如果您是会长，您可以<asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>
                  </caption>
                </table>
                </asp:Panel>
                
           <asp:Panel ID="panecreatech" runat="server"> 
            <table width="100%"  border="0" >
            <tr></tr>
                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td rowspan="2" align="center">
                        <img src='<%#getXML(Eval("GLogo")+"") %>' />
                        </td>
                        <td colspan="3">
                       <a href="/Guild/Default.aspx?id=<%#Eval("Gid","{0}") %>" target="_top"><%#Eval("Gname")%></a>
              
                        </td>
                    </tr>
                    <tr>
                        <td>
                        会长:<%#GetName(Eval("GCreateUserID"))%>
                        </td>
                        <td>
                        成员数：<%#Eval("RegUserNum")%>
                        </td>
                        <td>
                        创建日期:<%#Eval("CreateTime") %>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            </table>
            
            </asp:Panel>
       
            </li>
        </div>
    </form>
</body>
</html>

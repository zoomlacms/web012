<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Default, App_Web_gt4knn2i" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我已加入的公会</title>
<link rel="stylesheet" type="text/css" href="../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">
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
            <a href="Default.aspx">我已加入的公会</a> |<a href="FoundGH.aspx">我已创建的公会</a>|<a href="GuildIndex.aspx">我是会长创建公会</a>|<a href="List.aspx" >公会排行列表</a>
            </div>
              <div style="margin-top:10px;">
		  <div class="us_seta" style="margin-top:5px;">
		    <h1><div align="center">
		    我已加入的公会</div></h1>
		    <li style="width:100%; float:left;line-height:30px">
		    <asp:Panel ID="Panel1" runat="server"> 
              <table width="100%"  border="0">
                  <caption>
                      还未加入公会,<asp:LinkButton ID="LinkButton1" runat="server"></asp:LinkButton>.
                  </caption>
                </table>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server"> 
        <table width="100%">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td rowspan="2">
                    
                        <img src='<%#getXML(Eval("GLogo")+"") %>' />
                        </td>
                        <td colspan="3">
                       <a href="/Guild/Default.aspx?id=<%#Eval("Gid","{0}") %>" target="_top"><%#Eval("Gname")%></a>
                
                        </td>
                    </tr>
                    <tr>
                        <td>
                        会长:<%#GetGCreateUserID(Eval("GCreateUserID"))%>
                        </td>
                        <td>
                        成员:<%#Eval("RegUserNum")%>
                        </td>
                        <td>
                        <asp:LinkButton ID="lbtnExit" runat="server" Visible='<%#Check(Eval("GCreateUserID")+"") %>'>退出公会</asp:LinkButton>
                        </td>
                        <td>
                        创建日期:<%#Eval("CreateTime")%>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        </asp:Panel>
    </div>
    </li>
    </div>
    
    <div style="text-align:center; width:100%">
        <asp:Panel ID="panelpage" runat="server">
            总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
            <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
<asp:Label ID="FirstPage"
                runat="server"></asp:Label>
            <asp:Label ID="RePage" runat="server"></asp:Label>
            <asp:Label ID="NextPage" runat="server"></asp:Label>
            <asp:Label ID="EndPage" runat="server"></asp:Label>
        </asp:Panel>
         
    </div>
    </form>
</body>
</html>
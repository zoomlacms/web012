<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_VoteManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>后台管理>>投票管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>&gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
        <span><a href="GHManage.aspx">公会列表</a></span> &gt;&gt; <span><a href="VoteManage.aspx">
            会议室管理</a></span>&nbsp;
    </div>
        <table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
        <tr>
            <td class="spacingtitle" colspan="2" style="height: 26px; text-align: center">
                 会议室管理
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>会议室序号：</strong>
            </td>
            <td align="left" class="tdbg" >
                <asp:Literal ID="LiteralID" runat="server"></asp:Literal>
            </td>
        </tr>
         <tr class="tdbg">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>公会名称：</strong>
            </td>
            <td align="left" class="tdbg" >
                <asp:Literal ID="LiteralGHName" runat="server"></asp:Literal>
            </td>
        </tr>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>音乐 ：</strong>
            </td>
            <td align="left" class="tdbg">
                <asp:Literal ID="LiteraMusic" runat="server"></asp:Literal>
            </td>
        </tr>
              <tr class="tdbg">
            <td align="left" class="tdbgleft" style="width: 16%; height: 24px;">
                <strong>会议室配置 ：</strong>
            </td>
            <td align="left" class="tdbg" style="word-wrap: break-word; word-break: break-all">
                <asp:Literal ID="LiteralState" runat="server"></asp:Literal>
            </td>
        </tr>
        </table>
        
        
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
        <tr>
            <td class="spacingtitle" align="center">
                投票管理    
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
                    <tbody>
                        <tr class="gridtitle" align="center" height="26px">
                            <td width="5%">
                                <strong>选择</strong>
                            </td>
                            <td width="5%">
                                <strong>ID</strong>
                            </td>
                            <td width="10%">
                                <strong>投票标题</strong>
                            </td>
                            <td width="10%">
                                <strong>投票设置</strong>
                            </td>
                            <td width="15%">
                                <strong>创建时间</strong>
                            </td>
                            <td width="15%">
                                <strong>过期时间</strong>
                            </td>
                            <td width="30%" s>
                                <strong>操作</strong>
                            </td>
                        </tr>
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <ItemTemplate>
                                <tr align="center" class="tdbg" style="height: 30px;">
                                    <td>
                                        <asp:CheckBox ID="item" runat="server" />
                                        <asp:Label ID="lblHiddenID" runat="server" Text='<%#Eval("Vid")%>' Visible="false"></asp:Label>
                                    </td>
                                    <td>
                                        <%#Eval("Vid")%>
                                    </td>
                                    <td>
                                        <%#Eval("Vtitle")%>
                                    </td>
                                    <td>
                                        <%#Eval("VConfig")%>
                                    </td>
                                    <td>
                                        <%#Eval("CreateTime")%>
                                    </td>
                                    <td>
                                        <%#Eval("ExpiredTime")%>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton6" runat="server" CommandArgument='<%#Eval("Vid") %>'
                                            CommandName="View">查看</asp:LinkButton>&nbsp;
                                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%#Eval("Vid") %>'
                                            OnClientClick="return confirm('确实要删除此投票信息吗？');">删除</asp:LinkButton>&nbsp;
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <tr class="tdbg">
                            <td colspan="7">
                                总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                                    runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                                <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;<asp:Label ID="FirstPage"
                                    runat="server"></asp:Label>
                                <asp:Label ID="RePage" runat="server"></asp:Label>
                                <asp:Label ID="NextPage" runat="server"></asp:Label>
                                <asp:Label ID="EndPage" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <asp:CheckBox ID="CheckBoxVote" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged"
                    AutoPostBack="true" />
                全选
                <asp:Button ID="Button1" runat="server" Text="批量删除" OnClick="Button1_Click" OnClientClick="return confirm('确实要删除选中的信息吗？');" class="C_input"/>
                &nbsp;&nbsp; &nbsp;&nbsp;
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

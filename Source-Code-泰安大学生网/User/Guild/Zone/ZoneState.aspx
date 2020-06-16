<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_ZoneState, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的状态</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
<script type="text/javascript" language="javascript">
    function refpage(ret)
    {
        
        window.document.getElementById("<%=this.HiddenField1.ClientID %>").value=ret;
        document.form1.submit();
      
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                状态 <asp:Literal ID="Literal1" runat="server"></asp:Literal> <a href="javascript:{void(0);}" onclick="javascript:window.open('AddState.aspx', '', 'width=300,height=150,resizable=0,scrollbars=yes')">更新状态</a>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="Repeater1" runat="server" 
                    onitemcommand="Repeater1_ItemCommand" 
                    onitemdatabound="Repeater1_ItemDataBound">
                    <ItemTemplate>
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <%#Eval("StateContent")%>
                                    <asp:Repeater ID="Repeater2" runat="server">
                                    
                                    </asp:Repeater>
                                </td>
                                <td style="width:200px">
                                    <%#Eval("AddTime")%>&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete"  OnClientClick="return  confirm('你确定要删除这个留言吗？')" CommandArgument='<%#Eval("MID") %>' >删除</asp:LinkButton></td>
                            </tr>
                            <asp:Label Visible="false" ID="lblMID" runat="server" Text='<%# Eval("MID") %>'></asp:Label>
                            <tr>
                                <td>
                                    &nbsp;<a href="ReplyState.aspx?MID=<%# Eval("MID")%>">回复</a></td>
                                </tr>
                            <tr>
                            <td align="left">
                            <asp:DataList ID="DataList2" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
                                                Width="100%" DataKeyField="MID">
                                <ItemTemplate>
                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td class="trr">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton ID="lbDelete" runat="server" CausesValidation="False" OnClick="lbDelete_Click" OnClientClick="return  confirm('你确定要删除这个留言吗？')">[删除]</asp:LinkButton>的回复<br />
                                                <%# Eval("StateContent")%></asp:Label></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Panel ID="panelpage" runat="server">
                    总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                        runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                    <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;<asp:Label ID="FirstPage"
                        runat="server"></asp:Label><asp:Label ID="RePage" runat="server"></asp:Label><asp:Label ID="NextPage" runat="server"></asp:Label><asp:Label ID="EndPage" runat="server"></asp:Label>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <asp:HiddenField ID="HiddenField1" runat="server" 
        OnValueChanged="HiddenField1_ValueChanged" />
    </form>
</body>
</html>

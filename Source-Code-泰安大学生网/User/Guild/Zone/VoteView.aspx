<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_VoteView, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=my%>的投票</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel runat="server" ID="Pane1">
            <table id="table1" runat="server">
                <tr>
                    <td rowspan="3">
                        <asp:Image ID="img" runat="server" ImageUrl="" />
                    </td>
                </tr>
                <tr>
                    <td valign="bottom">
                       <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td>
                    <%=myLink%>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel runat="server" ID="pane2">
            <table runat="server" id="table2">
                <tr>
                    <td>
                        <asp:LinkButton ID="link1" runat="server">删除本投票</asp:LinkButton>|
                        <asp:LinkButton ID="link2" runat="server">修改截至时间</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input id="btnSet" type="button" onclick="javascript:location.href='AddVote.aspx'"
                            value="发起投票" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <asp:Panel runat="server" ID="pane3">
        <table>
        </table>
    </asp:Panel>
    <asp:Panel runat="server" ID="Panel1">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
    <td>
        <table>
            <tr>
                <td>
                    发起时间：<asp:Label ID="lblStartTime" runat="server"><%#Eval("AddTime")%></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    投票人数：<asp:Label ID="lblCount" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    截至时间：<asp:Label ID="lblEndTime" runat="server"><%#Eval("EndTime")%></asp:Label>
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="lblTitle" runat="server"><%#Eval("VoteTitle")%></asp:Label>
                </td>
            </tr>
        </table>
        </td>
    </tr>
    <tr>
    <td>        
        <asp:Repeater runat="server" ID="voteview">
        <HeaderTemplate>
        <table width="80%" runat="server">
            <tr>
                <td align="center" style="width:10%" >
                    序号
                </td>
                <td align="center" style="width:30%" >
                    选项
                </td>
                <td align="center" >
                    百分比
                </td>
                <td align="center" style="width:5%" >
                    选择
                </td>
            </tr>
        </table>
        </HeaderTemplate>
            <ItemTemplate>
                <table width="80%" runat="server">
                    <tr>
                        <td align="center" style="width:10%" >
                            <%#Eval("id") %>
                        </td>
                        <td align="center" style="width:30%" >
                            <%#Eval("option")%>
                        </td>
                        <td>
                            <%#GetRow(Eval("id"))%>
                        </td>
                        <td align="center" style="width:5%"  >
                            <input value='<%#Eval("id") %>' type='<%=ConType%>' name="seles" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>
        </td>
    </tr>
    </table>
    </asp:Panel>
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnChilk" runat="server" Text=" 投票 " OnClick="btnChilk_Click" />
    </div>
    </form>
</body>
</html>

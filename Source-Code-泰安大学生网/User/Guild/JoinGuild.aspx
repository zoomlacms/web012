<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_JoinGuild, App_Web_gt4knn2i" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>浏览</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="s_bright">
    <div class="us_topinfo" style="margin-top:10px;">
    <li style="width:100%; float:left;line-height:30px">
            <asp:Panel ID="Panel1" runat="server"> 
            <table width="100%"  border="0">
            <tr>
            <td >入会条件</td>
            </tr>
            <tr>
            <td align="center">
                <asp:TextBox ID="TextBox1" runat="server" Height="255px" TextMode="MultiLine" 
                    Width="758px"></asp:TextBox>
                </td>
            </tr>
            </table>
            </asp:Panel>
            </li>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="同意" onclick="Button1_Click1" />   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="不同意" onclick="Button2_Click" />
    </div>
    </div>
    </form>
</body>
</html>

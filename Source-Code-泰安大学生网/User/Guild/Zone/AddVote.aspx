<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_AddVote, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>发起投票</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<body>
    <form id="form1" runat="server">
     <div>
    发起投票
    </div>
    <div style="margin-top:10px;">
            <a href="Default.aspx">精彩投票</a> |<a href="FoundGH.aspx">最新投票</a>|<a href="GuildIndex.aspx">我的投票</a>|<a href="List.aspx" >好友的投票</a>|<a href="#">发起投票</a>
            </div>
            <div>
			<table width="90%" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#FFFFFF">
			
			<tr > 
			<td width="14%" align="right">投票主题：</td>
			<td width="86%"> 
			&nbsp;<font color="#FF0000"><asp:TextBox ID="txtName" runat="server" Width="314px"></asp:TextBox>
                </font></td>
			</tr>
			<tr > 
			<td align="right">详细说明：</td>
			<td> 
			    <font color="#FF0000">
                <asp:TextBox ID="txtContent" runat="server" Height="60px" Width="320px"></asp:TextBox>
                </font></td>
			</tr>
			
			<tr > 
			<td align="right">选项 1：</td>
			<td> 
			    <font color="#FF0000">
                <asp:TextBox ID="TextBox3" runat="server" Width="314px"></asp:TextBox>
                </font></td>
			</tr>
			
			<tr > 
			<td align="right">选项 2：</td>
			<td> 
			    <font color="#FF0000">
                <asp:TextBox ID="TextBox4" runat="server" Width="311px"></asp:TextBox>
                </font></td>
			</tr>
			
			<tr > 
			<td align="right">选项 3：</td>
			<td> 
			    <font color="#FF0000">
                <asp:TextBox ID="TextBox5" runat="server" Width="309px"></asp:TextBox>
                </font></td>
			</tr>
			
			<tr > 
			<td align="right">选项 4：</td>
			<td> 
			    <font color="#FF0000">
                <asp:TextBox ID="TextBox6" runat="server" Width="308px"></asp:TextBox>
                </font></td>
			</tr>
			
			<tr > 
			<td align="right">选项 5：</td>
			<td> 
			    <font color="#FF0000">
                <asp:TextBox ID="TextBox7" runat="server" Width="307px"></asp:TextBox>
                </font></td>
			</tr>
			
			<tr > 
			<td align="right">选项 6：</td>
			<td> 
			    <font color="#FF0000">
                <asp:TextBox ID="TextBox8" runat="server" Width="307px"></asp:TextBox>
                </font></td>
			</tr>
			
			<tr > 
			<td align="right">选项 7：</td>
			<td> 
			    <font color="#FF0000">
                <asp:TextBox ID="TextBox9" runat="server" Width="308px"></asp:TextBox>
                </font></td>
			</tr>
			
			<tr > 
			<td align="right">选项 8：</td>
			<td> 
			    <font color="#FF0000">
                <asp:TextBox ID="TextBox10" runat="server" Width="310px"></asp:TextBox>
                </font></td>
			</tr>
			
			<tr > 
			<td align="right">截止时间：</td>
			<td> 
			
			    <font color="#FF0000">
                <asp:TextBox ID="txtEndTime" runat="server" Width="311px" onclick="calendar();parent.document.getElementById('main_right').height = document.body.offsetHeight+400;"></asp:TextBox>
                </font></td>
			</tr>
			<tr > 
			<td height="30" align="right">投票方式：</td>
			<td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">单选</asp:ListItem>
                <asp:ListItem Value="2">多选</asp:ListItem>
                </asp:RadioButtonList>
                </td>
			</tr>
			<tr > 
			<td height="78" align="right">投票结果：</td>
			<td> 
			    <font color="#FF0000">
                <asp:TextBox ID="txtEnd" runat="server" Height="112px" TextMode="MultiLine" 
                    Width="320px"></asp:TextBox>
                </font>&nbsp;<br /><font color="#999999">此内容将在投票完成页显示，可用于添加心理测试等投票类型的答案。</font>
			  </td>
			</tr>						
			<tr >
			<td></td>
			<td>
                <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text=" 发起投票 " />
                </td>
			</tr>
			
		  </table>
		</div>

    </form>
</body>
</html>

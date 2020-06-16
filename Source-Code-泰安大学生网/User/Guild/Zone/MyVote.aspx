<%@ page language="C#" autoeventwireup="true" inherits="User_Guild_Zone_MyVote, App_Web_xaicsddc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>投票</title>
</head>
<body>
<form id="form1" runat="server">
<div>投票</div>
<div class="us_topinfo" style="margin-top:10px;">
<a href="Default.aspx">精彩投票</a> |<a href="FoundGH.aspx">最新投票</a>|<a href="MyVote.aspx">我的投票</a>|<a href="List.aspx" >好友的投票</a>|<a href="AddVote.aspx">发起投票</a>
</div>
<p></p>
<asp:Panel ID="panelNo" runat="server">
	 <table>
	 <tr>
	 <td>
	 暂无投票 <a href="#">点此发起投票</a>
	 </td>
	 </tr>
	 </table>
</asp:Panel>

<asp:Panel ID="panelHave" runat="server">

<asp:DataList ID="votelist" runat="server">
	<ItemTemplate>
	<table width="100%">
	<tr>
	<td>
	<%#Eval("VoteTitle")%>
	</td>
	<td></td>
	<td>
  <asp:Image runat="server" ID="img" ImageUrl="~/User/Images/toupiao_review_icon.gif" />  评论 
  <asp:Image runat="server" ID="imga" ImageUrl="~/User/Images/ico_del.gif" />
	</td>
	</tr>
	   <tr>
	   <td rowspan="2">
	  <asp:Image runat="server" ID="url" ImageUrl="~/User/Images/voting_0.gif" />
	   </td>
	   <td>
	   投票发起时间：<%#Eval("AddTime")%>
	   </td>
	   </tr>
	   <tr>
	   <td>
	   投票结束时间：<%#Eval("EndTime")%>
	   </td>
	   <td align="right">
	 <asp:Label ID="lblLook" runat="server"><%#Eval("") %></asp:Label>
	   </td>
	   </tr>
	   <tr>
	   <td></td>
	   <td>
	   目前投票人数：0
	   </td>
	   </tr>
	   </table>
	</ItemTemplate>
</asp:DataList>
</asp:Panel>
</form>
</body>
</html>

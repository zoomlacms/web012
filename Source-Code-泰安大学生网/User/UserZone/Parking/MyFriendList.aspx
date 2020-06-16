<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Parking_MyFriendList, App_Web_jxmqyiiv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="stylesheet" rev="stylesheet" href="../../css/subModal.css" type="text/css" media="all" /> 
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
<form id="form1" runat="server">
        <div>
            好友分组：<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" AutoPostBack="True">
            </asp:RadioButtonList>
            <li style="height: 30px; text-align: center;">共<asp:Label ID="Allnum" runat="server"
                Text=""></asp:Label>&nbsp;
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />个/页</li>
        </div>
</form>
</body>
</html>

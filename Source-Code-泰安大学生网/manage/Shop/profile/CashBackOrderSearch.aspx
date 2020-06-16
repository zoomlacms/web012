<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_CashBackOrderSearch, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>查询领克特订单数据</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="../../../JS/calendar.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a href="ProfileManage.aspx">返利管理</a></span> 
    &gt;&gt;<span>查询领克特订单数据</span></div>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tr>
        <td class="spacingtitle" align="center">
            <asp:Literal ID="LTitle" runat="server" Text="查询领克特订单数据"></asp:Literal>
        </td>
    </tr>
    <tr class="tdbg">
        <td valign="top" style="margin-top: 0px; margin-left: 0px;">
            <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft"><strong>Linktech用户名：</strong></td>
                    <td> <asp:TextBox ID="txtName" runat="server"  class="l_input"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft"><strong>Linktech密码:</strong></td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server"  class="l_input" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft"><strong>该用户名在Linktech特定网站ID：</strong></td>
                    <td> <asp:TextBox ID="txtaffiliate_id" runat="server"  class="l_input"></asp:TextBox>(如 天天返利:A100074072)</td>
                </tr>
                 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft"><strong>业绩形式:</strong></td>
                    <td>
                        <asp:DropDownList ID="type" runat="server">
                            <asp:ListItem Value="cps" Selected="True">cps</asp:ListItem>
                            <asp:ListItem Value="cpa">cpa</asp:ListItem>
                             <asp:ListItem Value="" >所有</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft"><strong>业绩开始时间:</strong></td>
                    <td>
                          <asp:TextBox ID="txtAtime" runat="server" Text="" onclick="calendar();"
                        Width="20%" class="l_input"></asp:TextBox><asp:Image ID="Image1" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif"
                             ToolTip="鼠标点击左边输入框出现时间选择框" />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="开始时间不能为空！"
                                ControlToValidate="txtAtime"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft"><strong>业绩结束时间:</strong></td>
                    <td>
                        <asp:TextBox ID="txtEtime" runat="server" Text=""  Width="20%" class="l_input" onclick="calendar();">
                        </asp:TextBox><asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif"
                            ToolTip="鼠标点击左边输入框出现时间选择框" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="结束时间不能为空！"
                                ControlToValidate="txtEtime"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
    <tr>
        <td align="left" style="height: 59px">
            &nbsp; &nbsp;
            <asp:Button ID="EBtnSubmit" class="C_input" Text="查询" runat="server"  onclick="EBtnSubmit_Click" />
            <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='OrderManage.aspx'" id="Button2" />
        </td>
    </tr>
</table>
</form>
</body>
</html>

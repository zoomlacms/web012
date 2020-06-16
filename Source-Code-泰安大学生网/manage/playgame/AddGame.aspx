<%@ page language="C#" autoeventwireup="true" inherits="playgame_AddGame, App_Web_iv1miygb" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server" id="Head1">
    <title>游戏管理</title>
    
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            width: 76%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>商户管理</span> &gt;&gt; <span><a href="GameManage.aspx">游戏管理</a></span> &gt;&gt;
        添加游戏
    </div>
    <div class="clearbox">
    </div>
    <table>
    </table>
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                添加游戏
            </td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%">
                <strong>游戏名称：</strong>
            </td>
            <td valign="middle" class="style1" >
                <asp:TextBox ID="gameName" runat="server" class="l_input"></asp:TextBox>
                <font style="color: #FF0000">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="gameName" ErrorMessage="游戏名称不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%" valign="top">
                <strong>游戏公司：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="gameCom" runat="server" class="l_input"></asp:TextBox>
            </td>
        </tr>
        <tr class="WebPart" runat="server" id="Tr1" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>数据库名：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="DataBasetxt" runat="server" class="l_input"></asp:TextBox>
                <font style="color: #FF0000">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DataBasetxt" ErrorMessage="数据库名不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" align="right" style="width: 24%" valign="top">
                <strong>游戏点数所在表名：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="gTabName" runat="server" class="l_input"></asp:TextBox>
                <font style="color: #FF0000">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="gTabName" ErrorMessage="游戏点数所在表名不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>游戏点数所在字段名：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="PointPart" runat="server" class="l_input"></asp:TextBox>
                <font style="color: #FF0000">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="PointPart" ErrorMessage="游戏点数所在字段名不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>
                    <asp:Label ID="Label1" runat="server" Text="帐号角色ID字段名："></asp:Label></strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="search" runat="server" class="l_input"></asp:TextBox>
                <font style="color: #FF0000">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="search" ErrorMessage="帐号角色ID字段名不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>充值对象以：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:DropDownList ID="ChargeIndex" runat="server">
                    <asp:ListItem Value="用户帐号">用户帐号</asp:ListItem>
                    <asp:ListItem Value="用户角色">用户角色</asp:ListItem>
                </asp:DropDownList>
                为准
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22" class="tdbgleft" align="left" valign="top" colspan="2">
                <b>
                    <asp:CheckBox ID="InOther" runat="server" Text="帐号或角色只有ID，名字在另一表中" AutoPostBack="True"
                        OnCheckedChanged="InOther_CheckedChanged" /></b>
            </td>
        </tr>
        <tr class="WebPart" runat="server" id="s1" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>数据库名：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="DataBase1" runat="server" class="l_input"></asp:TextBox><font style="color: #FF0000">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DataBase1" ErrorMessage="游戏名称不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart" runat="server" id="s2" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>帐号或角色所在表名：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="searchTable" runat="server" class="l_input"></asp:TextBox><font style="color: #FF0000">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="searchTable" ErrorMessage="帐号或角色所在表名不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart" runat="server" id="s3" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>帐号或角色字段：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="namefiled" runat="server" class="l_input"></asp:TextBox><font style="color: #FF0000">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="namefiled" ErrorMessage="帐号或角色字段不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart" runat="server" id="s4" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>ID所在字段名：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="Infiled" runat="server" class="l_input"></asp:TextBox><font style="color: #FF0000">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="Infiled" ErrorMessage="ID所在字段名不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>游戏状态：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:RadioButton ID="open" runat="server" Checked="True" GroupName="group1" Text="开" />
                <asp:RadioButton ID="close" runat="server" GroupName="group1" Text="关" />
            </td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>允许掉单：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:RadioButtonList ID="Doff" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">是</asp:ListItem>
                    <asp:ListItem Selected="True" Value="2">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>执行NPC生成语句：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="Sqlstr" runat="server" Height="75px" TextMode="MultiLine" Width="462px" class="l_input"></asp:TextBox>
            </td>
        </tr>
        <%--<tr class="WebPart">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                <strong>执行生成以：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:DropDownList ID="PointMax" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="0">充值现金</asp:ListItem>
                    <asp:ListItem Value="1">游戏点数</asp:ListItem>
                </asp:DropDownList>
                为准
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22" class="tdbgleft" style="width: 24%" align="right" valign="top">
                
                <strong><asp:Label ID="Label2" runat="server" Text=""></asp:Label>：</strong>
            </td>
            <td height="22" valign="middle" class="style1">
                <asp:TextBox ID="Condition" runat="server" Width="111px"></asp:TextBox>
                执行NPC生成语句</td>
        </tr>--%>
        <tr class="tdbg">
            <td height="22" colspan="2" align="center" class="tdbgleft">
                <asp:Button ID="addBT" class="C_input" runat="server" Text="添  加" OnClick="addBT_Click" />&nbsp;
                &nbsp; &nbsp;<input id="Button5"  class="C_input"  type="button" value="返  回" onclick="javascript:window.history.go(-1);" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

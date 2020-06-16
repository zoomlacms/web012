<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_AddGh, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>添加公会</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" language="javascript">
    function SetUser(uname,uid) {
        window.document.getElementById("txtGCreateUserID").value = uname;
        window.document.getElementById("hfUserID").value = uid;
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="r_navigation">
            
            <span>后台管理</span>  &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span><a href="GHManage.aspx">公会管理</a></span> &gt;&gt;
            <span>添加公会</span>
        </div>
        <br />
        <div class="r_navigation">
            <table width="100%" border="0" cellpadding="0" cellspacing="1">
                <tr>
                    <td colspan="2" class="spacingtitle" align="center">
                        添加公会
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right" style="width:300px">
                        公会名称:
                    </td>
                    <td>
                        <asp:TextBox ID="txtGname" runat="server" class="l_input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtGname" ErrorMessage="请输入公会名称"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        注册邮箱:
                    </td>
                    <td>
                        <asp:TextBox ID="txtGmail" runat="server" class="l_input"></asp:TextBox><asp:RegularExpressionValidator
                            ID="RegularExpressionValidator1" runat="server" ErrorMessage="请输入有效的邮箱地址" 
                            ControlToValidate="txtGmail" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        
                    </td>
                </tr>
                 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right">
                       指定会长:
                    </td>
                <td>
                 <asp:TextBox ID="txtGCreateUserID" runat="server" Enabled="false" class="l_input"></asp:TextBox>
                 <input id="Button1" type="button" value="请选择..." onclick="javascript:window.open('../Common/selectuser.aspx','',' width=600,height=450,resizable=0,scrollbars=yes')"; class="C_input"/>
                 <asp:HiddenField  ID="hfUserID" runat="server" />
                </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        游戏种类:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlGameClass" runat="server" DataTextField="GClassName" DataValueField="GCID" class="l_input">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        公会等级:
                    </td>
                    <td>
                        <asp:TextBox ID="txtGlevel" runat="server" Text="0" class="l_input"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        公会贡献度:
                    </td>
                    <td>
                        <asp:TextBox ID="txtDevote" runat="server" Text="0" class="l_input"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        公会金元:
                    </td>
                    <td>
                        <asp:TextBox ID="txtGmoney" runat="server" Text="0" class="l_input"></asp:TextBox>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        模板:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlTemplate" runat="server" DataTextField="Title" DataValueField="ID" class="l_input">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        风格:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlSkins" runat="server" DataTextField="SName" DataValueField="Sid" class="l_input">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        公会页面的LOGO:
                    </td>
                    <td>
                        <asp:TextBox ID="txtGLogo" runat="server" Width="160px" class="l_input"></asp:TextBox>
                        <iframe id="Upload_docfile" src="../Common/ThreeDUpload.aspx?CID=GLogo" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right">
                        公会页面的横幅:
                    </td>
                    <td>
                        <asp:TextBox ID="txtGbanner" runat="server" Width="160px" class="l_input"></asp:TextBox>
                        <iframe id="Iframe1" src="../Common/ThreeDUpload.aspx?CID=Gbanner" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
                    </td>
                </tr>

                <tr class="tdbg">
                    <td style="height: 21px" colspan="4" align="center">
                        <asp:Button ID="btnSave" runat="server" Text="保存公会信息" Width="90px" OnClick="btnSave_Click"
                            TabIndex="12" class="C_input"/>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>

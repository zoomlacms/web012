<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_AddGHUser, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>添加公会会员</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" language="javascript">
        function SetUser(uname, uid) {
            window.document.getElementById("txtUserName").value = uname;
            window.document.getElementById("hfuser").value = uid;
        }
    </script>

    <style type="text/css">
        .style1
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            width: 295px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
        <span><a href="GHUserManage.aspx">公会成员管理</a></span> &gt;&gt; <span>
            <asp:Label ID="dahang" runat="server" Text=""></asp:Label>
        </span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <div class="r_navigation">
            <table width="100%" border="0" cellpadding="0" cellspacing="1">
                <tr>
                    <td colspan="2" class="spacingtitle" align="center">
                        <asp:Label ID="lblhead" runat="server" Text=""></asp:Label>
                    </td>
                    <tr class="tdbg">
                        <td class="tdbgleft" align="right">
                            公会名称：
                        </td>
                        <td>
            
                            <asp:Label ID="ddlGame" runat="server" Text=""></asp:Label>
                            
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft" align="right">
                            用户名：
                        </td>
                        <td>
                            <asp:Label ID="txtUserName" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                 <%--   <tr class="tdbg">
                        <td class="tdbgleft" align="right">
                            职位：
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlofficeclass" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>--%>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft" align="right">
                            个人勋章：
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <%--<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft" align="right">
                            经验点：
                        </td>
                        <td>
                            <asp:TextBox ID="txtExperiential" runat="server" Text="0" class="l_input" 
                                Width="78px"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请输入经验点" 
                            ControlToValidate="txtExperiential" ></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ErrorMessage="*请正确填写数字" Type="Integer" Display="Dynamic"
                            MaximumValue="99999" MinimumValue="1" ControlToValidate="txtExperiential"></asp:RangeValidator>
                        </td>
                    </tr>--%>
                    <%--<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft" align="right">
                            金元：
                        </td>
                        <td>
                            <asp:TextBox ID="TextAurum" runat="server" Text="0" class="l_input" Width="78px"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*请输入金元" 
                            ControlToValidate="TextAurum" ></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ErrorMessage="*请正确填写数字" Type="Integer" Display="Dynamic"
                            MaximumValue="99999" MinimumValue="1" ControlToValidate="TextAurum"></asp:RangeValidator>
              
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft" align="right">
                            钱币：
                        </td>
                        <td>
                            <asp:TextBox ID="TextMoney" runat="server" Text="0" class="l_input" Width="78px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入钱币" 
                            ControlToValidate="TextMoney" ></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" 
                            ErrorMessage="*请正确填写数字" Type="Integer" Display="Dynamic"
                            MaximumValue="99999" MinimumValue="1" ControlToValidate="TextMoney"></asp:RangeValidator>
                        </td>
                    </tr>--%>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft" align="right">
                            境界等级：
                        </td>
                        <td>
                           
                            <asp:DropDownList ID="DropDownList2" runat="server">
                            </asp:DropDownList>
                            
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft" align="right">
                            贡献度：
                        </td>
                        <td>
                            <asp:TextBox ID="TextDedicative" runat="server" Text="0" class="l_input" Width="78px"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请输入钱币" 
                            ControlToValidate="TextDedicative" Display="Dynamic" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextDedicative" ErrorMessage="请输入正确格式" 
                                ValidationExpression="\d" Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td style="height: 21px" colspan="4" align="center">
                            <asp:Button ID="btnSave" runat="server" Text="保  存" OnClick="btnSave_Click" class="C_input" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="返 回" CssClass="C_input" 
                                onclick="Button1_Click" CausesValidation="false" />
                        </td>
                    </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>

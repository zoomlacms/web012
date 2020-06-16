<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_GrifCard_Shop_Edit, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>商家礼品卡编辑</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/calendar.js" type="text/javascript"></script>
</head>
<body>
        <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a href="GrifCard_Shop_manage.aspx">商家礼品卡管理</a></span>
         &gt;&gt;<span><asp:Label ID="lblName" runat="server"></asp:Label></span></div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
        <tr>
            <td class="spacingtitle" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="修改用户卡礼品"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg">
            <td valign="top" style="margin-top: 0px; margin-left: 0px;">
                <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft"><strong>卡信息：</strong></td>
                        <td><asp:TextBox ID="txtCardinfo" runat="server" class="l_input"></asp:TextBox></td>
                    </tr>
                    <tbody id="no" runat="server">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft"><strong>积分数:</strong></td>
                            <td><asp:TextBox ID="txtPoint" runat="server" class="l_input"></asp:TextBox>
                             <font color="red">*<asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                                ControlToValidate="txtPoint" ErrorMessage="积分数必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$"
                                SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </font></td>
                        </tr>
                         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft"><strong>返利值:</strong></td>
                            <td><asp:TextBox ID="txtproVal" runat="server" class="l_input"></asp:TextBox>
                             <font color="red">*<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="txtproVal" ErrorMessage="返利值必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$"
                                SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </font></td>
                        </tr>
                         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft"><strong>数量:</strong></td>
                            <td><asp:TextBox ID="txtNum" runat="server" class="l_input"></asp:TextBox>
                            <font color="red">*<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="txtNum" ErrorMessage="数量必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$"
                                SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </font></td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft"><strong>显示图片:</strong></td>
                             <td>
                                <asp:TextBox ID="txt_logos" runat="server" Width="300px"  class="l_input"></asp:TextBox>
                                <iframe id="Iframe1" src="/Common/UserUpload.aspx?FieldName=txt_logos" marginheight="0"
                                    marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
                             </td>
                        </tr>
                         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft"><strong>兑换周期:</strong></td>
                            <td><asp:DropDownList ID="ddday" runat="server" class="l_input"></asp:DropDownList></td>
                        </tr>
                         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft"><strong>所属商家:</strong></td>
                            <td><asp:DropDownList ID="ddshop" runat="server" class="l_input"></asp:DropDownList></td>
                        </tr>
                         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft"><strong>有效期:</strong></td>
                            <td><asp:TextBox ID="txtProdata" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>
                            <font color="red">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                runat="server" ControlToValidate="txtProdata" ErrorMessage="有效时间不能为空!"></asp:RequiredFieldValidator>
                            </font></td>
                        </tr>
                         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft"><strong>备注:</strong></td>
                            <td><asp:TextBox ID="txtRemark" runat="server" TextMode="MultiLine" class="l_input" 
                                    Height="131px" Width="256px"></asp:TextBox>
                              </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
        <tr>
            <td align="left" style="height: 59px">
                &nbsp; &nbsp;
                <asp:Button ID="EBtnSubmit" class="C_input" Text="编辑" runat="server" OnClick="EBtnSubmit_Click" />
                <input type="button" class="C_input" value="返回列表" onclick="location.href='GrifCard_Shop_manage.aspx'" id="Button2" />
                   <br />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

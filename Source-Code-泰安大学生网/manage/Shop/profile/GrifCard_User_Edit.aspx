<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_GrifCard_User_Edit, App_Web_2ooypixx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>用户礼品卡修改</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
     <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>
        <a href="GrifCard_User_manage.aspx">用户礼品卡管理</a></span> &gt;&gt;<span>修改用户卡礼品</span></div>
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
                        <td><asp:Label ID="lblCardinfo" runat="server"></asp:Label></td>
                    </tr>
                    <tbody id="no" runat="server">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft"><strong>卡类别:</strong></td>
                            <td><asp:Label ID="lblCardType" runat="server"></asp:Label></td>
                        </tr>
                         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft"><strong>所属用户:</strong></td>
                            <td><asp:Label ID="lblUser" runat="server"></asp:Label></td>
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
                <asp:Button ID="EBtnSubmit" class="C_input" Text="修改" runat="server" OnClick="EBtnSubmit_Click" />
                <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='ArriveManage.aspx'" id="Button2" />
                   <br /><font color="red">点击修改如果申请状态为未确认,则修改为确认</font>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

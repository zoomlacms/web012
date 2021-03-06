﻿<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_School_AddRess, App_Web_4r1scmua" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的班级</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: auto; width: 100%">
        <div class="us_topinfo">
            <div class="us_showinfo">
                    您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                        ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                        </span><span><a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent">
                            会员中心</a></span>&gt;&gt;<span><a href="mySchoolList.aspx"> 我的班级 </a></span>&gt;&gt;
                        <span></span><span>班级信息</span>
            </div>
            <div class="cleardiv">
            </div>
        </div>
        <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
        <br />
        <div class="us_topinfo">
            <div>
                <a href="mySchoolList.aspx">我的班级</a> &gt;&gt; <a href="AddRessList.aspx">通讯录列表</a>
                &gt;&gt; 通讯录信息
                <hr />
            </div>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="right">
                        姓名：
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" MaxLength="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                            ErrorMessage="请输入姓名"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 24px">
                        电话：
                    </td>
                    <td style="height: 24px">
                        <asp:TextBox ID="txtPhone" runat="server" MaxLength="20"></asp:TextBox>&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPhone"
                            ErrorMessage="请输入正确的电话号码" ValidationExpression="^(\d{3}|\d{4})?[\-]?(\d{8}|\d{7})$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        QQ：
                    </td>
                    <td>
                        <asp:TextBox ID="txtQQ" runat="server" MaxLength="15"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtQQ"
                            ErrorMessage="请输入正确的QQ号" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        MSN：
                    </td>
                    <td>
                        <asp:TextBox ID="txtMSN" runat="server" MaxLength="30"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMSN"
                            ErrorMessage="请输入正确的MSN账号" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        E-Mail：
                    </td>
                    <td>
                        <asp:TextBox ID="txtMail" runat="server" Width="300px" MaxLength="50"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail"
                            ErrorMessage="请输入正确的E_Mail地址" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        地址：
                    </td>
                    <td>
                        <asp:TextBox ID="txtAdd" runat="server" Width="300px" MaxLength="100"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" valign="top">
                        简介：
                    </td>
                    <td>
                        <asp:TextBox ID="txtContext" runat="server" Rows="6" TextMode="MultiLine" Width="300px"
                            MaxLength="500"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="提  交" OnClick="Button1_Click" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <input id="Button2" type="button" value="返  回" onclick="javascript:location.href='AddRessList.aspx'" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>

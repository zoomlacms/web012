<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.login, App_Web_hh3wwa3n" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>管理登陆</title>
    <link rel="stylesheet" type="text/css" href="../App_Themes/AdminDefaultTheme/style.css" />
    <script type="text/javascript" src="/JS/Jquery.js"></script>
    <script type="text/javascript">
        //<!--
        if (self != top) { top.location = self.location; }
        function ShowSoftKeyboard(obj) {
            if ((typeof (CheckLoaded) == "function")) {
                password1 = obj;
                var offset = $('#TxtPassword').offset();
                var top = offset.top;
                var left = offset.left;
                var objh = $('#TxtPassword').height();
                var y = top + objh + 10;
                    y += "px";
                var x = left - 100 +"px";
                showkeyboard(x,y);
                Calc.password.value = '';
            }
            else {
                return false;
            }
        }
        function onfocus() {
            document.getElementById('TxtUserName').focus();
        }
        // -->
    </script>
    <script type="text/javascript" src="/JS/softkeyboard.js"></script>
</head>
<body onload="onfocus();" class="login5_body">
    <form id="Login" runat="server" defaultbutton="IbtnEnter">

    <div class="login5_box">
        <div class="login5_box_l">
            <p>
                1- 地区商家信息网门户站建立的首选方案...<br />
                2- 一站通式的整合方式，方便用户使用...<br />
                3- 强大的后台系统，管理内容易如反掌...
            </p>
            <span>
                <img src="../App_Themes/AdminDefaultTheme/images/5_icon-login-demo.gif" alt="使用说明" /><a href="http://help.zoomla.cn/" target="_blank">使用说明</a></span>
            <span>
                <img src="../App_Themes/AdminDefaultTheme/images/5_icon-login-seaver.gif" alt="在线客服" /><a href="http://zoomla.cn/corp/about/83.shtml" target="_blank">在线客服</a></span>
        </div>
        <div class="login5_box_r">
            <%--        <ul>
        <li><strong>登陆后台管理系统</strong></li>
            <li><span>用户名:</span><asp:TextBox ID="TxtUserName" runat="server" CssClass="username" TabIndex="1"  autocomplete="off" size="20"></asp:TextBox></li>
            <li><span>密 &nbsp;码:</span><asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" MaxLength="18" CssClass="password" TabIndex="2" size="20" autocomplete="off" ></asp:TextBox></li>
            <li id="safecode" runat="server"><span>安全码:</span><asp:TextBox ID="TxtAdminValidateCode" TextMode="Password" runat="server" MaxLength="6" CssClass="Safeword" TabIndex="3" size="20"></asp:TextBox></li>
            <li><span>验证码:</span><asp:Image ID="VcodeLogin" runat="server" ImageUrl="../Common/ValidateCode.aspx"  Height="20px" ToolTip ="点击刷新验证码" style="cursor:pointer;border:0; vertical-align:top;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
                <asp:TextBox ID="TxtValidateCode" runat="server" CssClass="vercode" Style="width: 52px;"    TabIndex="4" autocomplete="off" ></asp:TextBox></li>
            <li><span>默认进入:</span>
            <select runat="server" id="sltType"  size="1" name="select8" style="width:155px">
            <option selected="selected" value="3">网站后台</option>
            <option value="2">办公应用</option>
            <option value="1">站群系统</option>
            </select>
            <!--onChange="javascript:if(this.options[this.selectedIndex].value) window.open(this.options[this.selectedIndex].value)"-->
            </li>
            <li style="margin-left:25px">
             <asp:ImageButton ID="IbtnEnter" ImageUrl="../App_Themes/AdminDefaultTheme/images/signin.jpg"  runat="server" Style="cursor: hand;" OnClick="IbtnEnter_Click" TabIndex="5" />
             <input type="image" name="ImageButton2" id="ImageButton2" src="../App_Themes/AdminDefaultTheme/images/reset.jpg" onclick="javascript:window.close();" tabindex="6" causesvalidation="false" />
            </li>  
        </ul>--%>
            <h2>
                登陆后台管理系统</h2>
            <table>
                <tr>
                    <th>
                        用户名：
                    </th>
                    <td>
                        <asp:TextBox ID="TxtUserName" runat="server" CssClass="username" TabIndex="1" autocomplete="off"
                            size="20"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>
                        密码：
                    </th>
                    <td>
                        <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" MaxLength="18" CssClass="password" TabIndex="2"  autocomplete="off" ></asp:TextBox>
                    </td>
                </tr>
                <tr id="safecode" runat="server">
                    <th>
                        安全码：
                    </th>
                    <td>
                        <asp:TextBox ID="TxtAdminValidateCode" TextMode="Password" runat="server" MaxLength="6"
                            CssClass="Safeword" TabIndex="3" size="20"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>
                       <asp:Label ID="lblVcode" runat="server"> 验证码：</asp:Label>
                    </th>
                    <td >                       
                        <asp:TextBox ID="TxtValidateCode"  runat="server" CssClass="vercode"
                            Style="width: 55px;vertical-align: middle;" TabIndex="4" autocomplete="off"></asp:TextBox>
                             <asp:Image ID="VcodeLogin"  runat="server" ImageUrl="../Common/ValidateCode.aspx"
                            Height="20px" ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;"
                            onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
                    </td>
                </tr>
                <tr>
				<%--				
                    <th>
                        默认进入：
                    </th>
                    <td>
                        <select runat="server" id="sltType" size="1" name="select8" style="width: 155px">
                            <option selected="selected" value="3">网站后台</option>
                            <option value="2">办公应用</option>
                            <option value="1">站群系统</option>
                        </select>
                    </td>
				--%>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:ImageButton ID="IbtnEnter" ImageUrl="../App_Themes/AdminDefaultTheme/images/signin.jpg"
                            runat="server" Style="cursor: hand;" OnClick="IbtnEnter_Click" TabIndex="5" />
                        <input type="image" name="ImageButton2" id="Image2" src="../App_Themes/AdminDefaultTheme/images/reset.jpg"
                            onclick="javascript:window.close();" tabindex="6" causesvalidation="false" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="login5_bottom">
        Copytight (C) Shanghai Zoomla!CMS Software technology Co., LTD all rights reserved</div>
    </form>
</body>
</html>

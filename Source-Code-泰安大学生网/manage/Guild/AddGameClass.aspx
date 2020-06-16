<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_AddGameClass, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>添加游戏分类</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
    <script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
    <script src="/JS/Common.js" type="text/javascript"></script>
    <script src="/JS/RiQi.js" type="text/javascript"></script>

    <script type="text/javascript" src="/js/Console.js"></script>
    <script type="text/javascript" src="/js/Drag.js"></script>
    <script type="text/javascript" src="/js/Dialog.js"></script>
    <script language="javascript">
        function Openwin() {
            var diag = new Dialog();
            diag.Modal = false;
            diag.Title = "选择厂商";
            diag.URL = "GameClassMaker.aspx";
            diag.show();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt;
        <span><a href="GameClassManage.aspx">游戏管理</a></span> &gt;&gt; <span>添加游戏信息</span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <div class="r_navigation">
            <table width="100%" border="0" cellpadding="0" cellspacing="1">
                <tr>
                    <td colspan="2" class="spacingtitle" align="center">
                        添加游戏信息
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft" align="right" style="width: 400px">
                        游戏名称：
                    </td>
                    <td>
                        <asp:TextBox ID="txtGClassName" Width="300px" runat="server" OnTextChanged="txtGClassName_TextChanged"
                            AutoPostBack="true" class="l_input"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server" ErrorMessage="请输入游戏名称" 
                            ControlToValidate="txtGClassName" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr style="visibility: hidden; display: none">
                    <td class="tdbgleft" align="right">
                        所属分类：
                    </td>
                    <td>
                       <asp:TextBox ID="txtGroupID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdbgleft" align="right">
                        游戏机种：
                    </td>
                    <td>
                        <asp:DropDownList ID="G_Class" runat="server">
                            <asp:ListItem>请选择</asp:ListItem>
                            <asp:ListItem>网络游戏</asp:ListItem>
                            <asp:ListItem>单机游戏</asp:ListItem>
                            <asp:ListItem>TV游戏</asp:ListItem>
                            <asp:ListItem>模拟器游戏</asp:ListItem>
                            <asp:ListItem>FLASH游戏</asp:ListItem>
                            <asp:ListItem>其他</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="tdbgleft" align="right">
                        游戏视图：
                    </td>
                    <td>
                        <asp:DropDownList ID="G_GameVideo" runat="server">
                            <asp:ListItem Selected="True">请选择</asp:ListItem>
                            <asp:ListItem>2D</asp:ListItem>
                            <asp:ListItem>3D</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="tdbgleft" align="right">
                        游戏厂商：
                    </td>
                    <td>
                        <asp:TextBox ID="G_Makers" Width="392px" runat="server" class="l_input"></asp:TextBox>
                        <a href="javascript:void(0);" onclick="Openwin()">[选择厂商]</a></td>
                </tr>
                <tr>
                    <td class="tdbgleft" align="right">
                        游戏类别：
                    </td>
                    <td>
                        <asp:DropDownList ID="G_Categories" runat="server">
                            <asp:ListItem Selected="True">请选择</asp:ListItem>
                            <asp:ListItem>回合战斗</asp:ListItem>
                            <asp:ListItem>角色扮演</asp:ListItem>
                            <asp:ListItem>音乐类</asp:ListItem>
                            <asp:ListItem>赛车类</asp:ListItem>
                            <asp:ListItem>体育类</asp:ListItem>
                            <asp:ListItem>横版格斗类</asp:ListItem>
                            <asp:ListItem>FPS射击类</asp:ListItem>
                            <asp:ListItem>其他</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="tdbgleft" align="right">
                        上市时间：
                    </td>
                    <td>
                        <asp:TextBox ID="G_Availability" Width="185px" runat="server" class="l_input" onclick="setday(this)"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdbgleft" align="right">
                        发行地区：
                    </td>
                    <td>
                        <asp:DropDownList ID="G_Issue" runat="server">
                            <asp:ListItem>请选择</asp:ListItem>
                            <asp:ListItem>大陆</asp:ListItem>
                            <asp:ListItem>欧美</asp:ListItem>
                            <asp:ListItem>韩国</asp:ListItem>
                            <asp:ListItem>日本</asp:ListItem>
                            <asp:ListItem>台湾地区</asp:ListItem>
                            <asp:ListItem>其他地区</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                
                 <tr>
                    <td class="tdbgleft" align="right">
                        游戏说明：
                    </td>
                    <td>
                        <textarea id="G_Info" cols="20" rows="2" style="height:350px" runat="server"></textarea>
              
                                                <script type="text/javascript">
                                                    //<![CDATA[
                                                    CKEDITOR.replace('G_Info',
						                            {
						                                skin: 'kama'
						                            });
                                                    //]]>
                                                </script>

                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="height: 21px" colspan="4" align="center">
                        <asp:Button ID="btnSave" runat="server" Text="保  存" Width="60px" OnClick="btnSave_Click"
                            class="C_input" />
                        &nbsp;&nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="取　消" Width="60px" OnClientClick="location.href='GameClassManage.aspx';return false;"
                            class="C_input" />
                    </td>
                </tr>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>

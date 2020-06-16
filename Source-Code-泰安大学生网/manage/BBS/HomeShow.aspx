<%@ page language="C#" autoeventwireup="true" inherits="manage_BBS_Variable, App_Web_srg22ydw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>首页显示</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>

    <script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>

    <script type="text/javascript">
        var tID = 0;
        var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7", "TabTitle8", "TabTitle9");
        var arrTabs = new Array("Div0", "Div1", "Div2", "Div3", "Div4", "Div5", "Div6", "Div7", "Div8", "Div9");

        function ShowTabs(ID) {
            location.href = 'BasicSettings.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&id=' + ID + '&type=' + ID;

        }

        function pload() {
            var ID = '<%=Request.QueryString["id"]%>';
            if (ID != tID) {
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
                document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
                tID = ID;
            }
            try {
             parent.document.getElementById("main_right").height = document.body.offsetHeight;
         } catch (Error)
         { }
        }

        function chechs() {

        } 
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>论坛管理</span> &gt;&gt; <span>设置</span> &gt;&gt; <span>首页显示</span>
    </div>
    <div class="clearbox">
    </div>
    
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="Div0" class="tabtitle">
                    <a href="BasicSettings.aspx">普通配置</a>
                </td>
                <td id="Div1" class="titlemouseover">
                    <a href="HomeShow.aspx">首页显示</a>
                </td>
                <td id="Div2" class="tabtitle">
                    <a href="Register.aspx">用户注册</a>
                </td>
                <td id="Div3" class="tabtitle">
                    <a href="ForumSettings.aspx">论坛设置</a>
                </td>
                <td id="Div4" class="tabtitle">
                    <a href="UploadSetting.aspx">上传设置</a>
                </td>
                <td id="Div5" class="tabtitle">
                    <a href="MailSettings.aspx ">邮件设置</a>
                </td>
                <td id="Div6" class="tabtitle">
                    <a href="FilterSet.aspx">过滤设置</a>
                </td>
                <td id="Div7" class="tabtitle">
                    <a href="Code.aspx">验证码</a>
                </td>
                <td id="Div8" class="tabtitle">
                    <a href="MoneyExperienc.aspx">金钱与经验</a>
                </td>
                <td id="Div9" class="tabtitle">
                    <a href="IntegratedSet.aspx">整合设置</a>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
   
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="display:none">
			<td style=" width: 282px;" class="tdbgleft"><b>论坛横排： </b><br />设置论坛组下的所有论坛横排时每行版块数量，如果设置为 0，则按正常方式排列</td>
			<td >
                <asp:TextBox ID="TxtDisplayMode" runat="server" class="l_input" ></asp:TextBox>
			</td>
		</tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <b>显示标签：</b>
            </td>
            <td>
                <asp:RadioButtonList ID="ShowTag" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <b>显示在线用户：</b>
            </td>
            <td>
                <asp:RadioButtonList ID="ShowOnlineUser" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>

        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <b>显示统计信息：</b>
            </td>
            <td>
                <asp:RadioButtonList ID="ShowInformation" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <b>显示今天的生日榜：</b>
            </td>
            <td>
                <asp:RadioButtonList ID="ShowBirthdayToday" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px; height: 23px;">
                <b>显示友情链接：</b>
            </td>
            <td>
                <asp:RadioButtonList ID="ShowLink" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px">
                <b>版块列表中显示子版块：</b>
            </td>
            <td>
                <asp:RadioButtonList ID="ShowChildren" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">是</asp:ListItem>
                    <asp:ListItem Value="1">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
    </table>
    <table border="0" width="100%">
        <tr>
            <td align="left" height="20">
                <asp:Button ID="Button2" runat="server" Text="保存设置" class="C_input" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

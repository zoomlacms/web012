<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_MedalManager, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>勋章管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>&gt;&gt; <span>OIEM管理</span>&gt;&gt; <span>公会管理</span>&gt;&gt;
        <span>勋章管理</span>&nbsp; <span> 【<a href="AddMedal.aspx" style="color: Red">添加勋章信息</a>】</span>
    </div>
    <div class="clearbox">
    </div>
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tr class="gridtitle" align="center" height="26px">
            <td width="10%">
                选择
            </td>
            <td>
                勋章图片地址
            </td>
            <td>
                勋章名称
            </td>
            <td>
            操作
            </td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server" 
            onitemcommand="Repeater1_ItemCommand">
        <ItemTemplate>
           <tr align="center"  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="height:28px;">
            <td width="10%">
                <asp:CheckBox ID="chsel" runat="server" />
                <%#Eval("MedalId")%>
                <asp:Label ID="lblMedalId" runat="server" Text='<%#Eval("MedalId") %>' Visible="false"></asp:Label>
            </td>
            <td width="20%">

             <asp:Image ID="Image2" runat="server" ImageUrl='<%#GgetUrl(Eval("MedaUrlPic","{0}")) %>' Height="50px"  Width="50px"/>
             
            </td>
            <td width="15%">
                <%#Eval("MedalName")%>
            </td>
         
            <td width="20%">
               <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("MedalId") %>' CommandName="Edit" >修改</asp:LinkButton>&nbsp; 
                 <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("MedalId") %>' CommandName="Del" OnClientClick="return confirm('确实要删除此勋章信息吗？');">删除</asp:LinkButton>&nbsp;   
            </td>
        
        </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr>
        <td colspan="4">
        <asp:Panel ID="panelpage" runat="server">
                        总共<asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:<asp:Label ID="CurrentPage"
                            runat="server"></asp:Label>&nbsp; 共<asp:Label ID="PageCount" runat="server"></asp:Label>页
                        <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;<asp:Label ID="FirstPage"
                            runat="server"></asp:Label>
                        <asp:Label ID="RePage" runat="server"></asp:Label>
                        <asp:Label ID="NextPage" runat="server"></asp:Label>
                        <asp:Label ID="EndPage" runat="server"></asp:Label>
                    </asp:Panel>
        </td>
        </tr>
    </table>
    <div class="clearbox">
        </div>
        <asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="cbAll_CheckedChanged"
            Text="全选" />
            &nbsp;
        <asp:Button ID="delSelect" runat="server" Text="批量删除" OnClientClick="return confirm('确实要删除选中的信息吗？');"  style="width:100px;" OnClick="delSelect_Click" class="C_input"/>&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>

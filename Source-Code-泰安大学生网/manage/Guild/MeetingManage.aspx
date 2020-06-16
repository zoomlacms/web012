<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_MeetingManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>后台管理>>会议室管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span>  &gt;&gt; <span>OIEM管理</span>&gt;&gt; <span>公会管理</span>  &gt;&gt; <span>公会列表</span>&gt;&gt; <span>会议室管理</span> &nbsp;
           
    </div>
    <div class="clearbox">
        </div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
            <tr class="gridtitle" align="center" height="26px">
                <td width="5%">
                    选择
                </td>
                <td width="10%">
                    公会名称
                </td>
                <td width="10%">
                    会议室状态
                </td>
                <td width="10%">
                    音乐
                </td>
                <td width="10%">
                    创建时间
                </td>
                <td width="20%">
                    操作
                </td>
                
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" 
                onitemcommand="Repeater1_ItemCommand">
           <ItemTemplate>
            <tr align="center" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="height:38px;">
                <td>
                   <asp:CheckBox ID="item" runat="server" />
                     <asp:Label ID="lblHide" runat="server" Text='<%#Eval("Mid")%>' ></asp:Label>
                   
                </td>
                <td>
                    <%# GetGName(Eval("Gid","{0}"))%>
                </td>
                <td>
                    <%#Eval("State")%>
                </td>
                <td>
                   <%#Eval("Music")%>
                </td>
                <td>
                    <%#Eval("CreateTime")%>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("Mid") %>' CommandName="Del" OnClientClick="return confirm('确实要删除此会议室信息吗？');">删除</asp:LinkButton>&nbsp;   
                </td>
            </tr>
            </ItemTemplate>
              </asp:Repeater>
               <tr align="center" style="height:38px;" class="tdbg">
                <td colspan="6">
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
        &nbsp;
        <asp:CheckBox ID="checkbox2" runat="server" 
            oncheckedchanged="checkbox2_CheckedChanged" AutoPostBack="true" />
        全选
        <asp:Button ID="Button2" runat="server"
            Text="批量删除" onclick="Button2_Click"  OnClientClick="return confirm('确实要删除选中的信息吗？');" class="C_input"/>&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>

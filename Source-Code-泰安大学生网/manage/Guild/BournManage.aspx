<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_BournManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>境界管理</title>

     <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; 
        <a href="BournManage.aspx">境界管理</a>  【<a href="AddBourn.aspx" style="color: Red">添加境界信息</a>】
    </div>
     <div class="clearbox">
    </div>
     <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tbody>
            <tr class="gridtitle" align="center" style="height: 26px;">
                <td width="15%" >
                    <strong>ID</strong>
                </td>
                <td width="20%" >
                    <strong>境界名称</strong>
                </td>
                <td>
                 <strong>
                  境界点数
                 </strong>
                </td>
                <td width="20%" >
                    <strong>操作</strong>
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr align="center" class="tdbg" style="height:26px;"  align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
                        <td>
                            <strong>
                            <asp:CheckBox ID="chsel" runat="server"></asp:CheckBox>
                            <asp:Label ID="lblBournId" runat="server" Text='<%#Eval("BournId") %>' Visible="false"></asp:Label>
                                <%#Eval("BournId")%>
                                </strong>
                        </td>
                        <td>
                         <strong>
                           <%#Eval("BournName")%>
                         </strong>
                        </td>
                        <td>
                        <strong>
                         <%#Eval("Bourncount")%>
                        </strong>
                        </td>
                        <td>
                         <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("BournId") %>'>修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("BournId") %>'
                                OnClientClick="return confirm('确实要删除此境界信息吗？');">删除</asp:LinkButton>
                        </td>
                        </tr>
               </ItemTemplate>
            </asp:Repeater>
            <tr style="height:26px;"  align="center" class="tdbg">
                <td colspan="5" >
                    <asp:Panel ID="panelpage" runat="server" >
                        总共
                        <asp:Label ID="Count" runat="server"></asp:Label>记录 &nbsp; 当前页:
                        <asp:Label ID="CurrentPage" runat="server"></asp:Label>&nbsp; 共
                        <asp:Label ID="PageCount" runat="server"></asp:Label>页
                        <asp:Label ID="PageSize" runat="server"></asp:Label>条记录/页 &nbsp;
                        <asp:Label ID="FirstPage" runat="server"></asp:Label>
                        <asp:Label ID="RePage" runat="server"></asp:Label>
                        <asp:Label ID="NextPage" runat="server"></asp:Label>
                        <asp:Label ID="EndPage" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            </table>
         <div class="clearbox">
        </div>
        <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged"
            AutoPostBack="true" />全选
        <asp:Button ID="Button1" runat="server" Text="批量删除" OnClientClick="return confirm('确实要删除选中的信息吗？');"  OnClick="Button1_Click" style="width:100px;" class="C_input"/>
    </form>
</body>
</html>

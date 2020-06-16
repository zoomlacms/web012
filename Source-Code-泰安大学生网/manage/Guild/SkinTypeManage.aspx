<%@ page language="C#" autoeventwireup="true" inherits="manage_Guild_SkinTypeManage, App_Web_h0aemmlg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>风格类型管理</title>

        <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>OIEM管理</span> &gt;&gt; <span>公会管理</span> &gt;&gt; <span><a href="SkinsManage.aspx">风格管理</a></span> &gt;&gt; <span>风格类型管理</span>&nbsp;&nbsp;&nbsp;
        【<a href="AddSkinsType.aspx?type=add" style="color:Red">添加风格类型</a>】
    </div>
  
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
            <tr class="gridtitle" align="center" >
                <td width="10%">
                    选择
                </td>

                <td width="65%">
                    风格类型名称
                </td>

                <td width="25%">
                    操作
                </td>
            </tr>
              <asp:Repeater ID="Repeater1" runat="server" 
                onitemcommand="Repeater1_ItemCommand">
           <ItemTemplate>
         
            <tr align="center" class="tdbg" style="height:26px;"  align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td>
                <asp:CheckBox ID="item" runat="server" />
                <%#Eval("GSID")%>
                
                     <asp:Label ID="lblGSID" runat="server" Text='<%#Eval("GSID")%>' Visible="false" ></asp:Label>
                     
                </td>

                <td>
              <%# Eval("GName")%>
                </td>

                <td>
                <a href="AddSkinsType.aspx?type=edit&ID=<%#Eval("GSID") %>">修改</a>
                   <%--
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("Sid") %>' CommandName="Edit">修改</asp:LinkButton>&nbsp;--%>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("GSID") %>' CommandName="Del" OnClientClick="return confirm('确实要删除此风格信息吗？');">删除</asp:LinkButton>&nbsp;
                   
                </td>
            </tr>
            </ItemTemplate>
             </asp:Repeater>
             <tr align="center">
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
        
       
        <asp:CheckBox ID="CheckBox2" runat="server" 
             AutoPostBack="true" oncheckedchanged="CheckBox2_CheckedChanged"/>全选
        <asp:Button ID="Button1" runat="server" Text="批量删除" OnClick="Button1_Click" OnClientClick="return confirm('确实要删除选中的信息吗？');"  class="C_input"/>&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>

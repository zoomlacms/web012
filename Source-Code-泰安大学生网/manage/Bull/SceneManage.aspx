<%@ page language="C#" autoeventwireup="true" inherits="manage_Bull_SceneManage, App_Web_tab2sdlr" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>场景管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" language="javascript">
        function getinfo(id) {
            location.href = 'PageTemplate.aspx?id=' + id;
        }
        function CheckAll(spanChk)//CheckBox全选
        {
            var oItem = spanChk.children;
            var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
            xState = theBox.checked;
            elm = theBox.form.elements;
            for (i = 0; i < elm.length; i++)
                if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
                if (elm[i].checked != xState)
                    elm[i].click();
            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; 斗牛场管理 &gt;&gt; <a href="SceneManage.aspx">草场管理</a>
        </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td align="center" colspan="8" class="title" width="100%">
                    草场管理
                </td>
            </tr>
            <tr class="tdbg">
                <td width="5%" class="tdbgleft">
                    <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                </td>
                <td width="5%" align="center" class="tdbgleft" style="height: 24px; font-weight: bold">
                    ID
                </td>
                <td width="20%" align="center" class="tdbgleft" style="height: 24px; font-weight: bold">
                    草名称
                </td>
                <td  width="20%" align="center" class="tdbgleft" style="height: 24px; font-weight: bold">
                    用户名
                </td>
                <td width="10%" align="center" class="tdbgleft" style="height: 24px; font-weight: bold">
                    草场排序
                </td>
                <td  width="10%" align="center" class="tdbgleft" style="height: 24px; font-weight: bold">
                    种植阶段
                </td>
                <td width="15%" align="center" class="tdbgleft" style="height: 24px; font-weight: bold">
                    种植时间
                </td>
                 <td width="15%" align="center" class="tdbgleft" style="height: 24px; font-weight: bold">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr class="tdbg">
                        <td height="22" align="center" class="tdbg">
                            <input name="Item" type="checkbox" value='<%# Eval("id")%>' />
                        </td>
                        <td align="center" class="tdbg" style="height: 24px;">
                            <%#Eval("ID")%>
                        </td>
                        <td align="center" class="tdbg" style="height: 24px;">
                            <%#Eval("Gid")%>
                        </td>
                        <td align="center" class="tdbg" style="height: 24px;">
                            <%#Eval("UserID")%>
                        </td>
                        <td align="center" class="tdbg" style="height: 24px;">
                            <%#Eval("Grassland")%>
                        </td>
                        <td align="center" class="tdbg" style="height: 24px;">
                            <%#Eval("Stage")%>
                        </td>
                        <td align="center" class="tdbg" style="height: 24px;">
                            <%#Eval("PlantTime")%>

                        <td align="center" class="tdbg" style="height: 24px;">
                            <a href="AddGrass.aspx?menu=edit&id=<%#Eval("ID") %>">修改</a> <a href="?menu=delete&id=<%#Eval("ID") %>"
                                onclick="return confirm('你确定要将所有选择删除吗？');">删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td align="center" class="tdbg" style="height: 24px;" colspan="8">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条信息
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
                        runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    页
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <asp:Button ID="BatchDel" Style="width: 100px" class="C_input" runat="server" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"
                    Text="批量删除" />&nbsp;
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

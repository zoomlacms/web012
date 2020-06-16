<%@ page language="C#" autoeventwireup="true" inherits="manage_Counter_Ip, App_Web_3kvvh0tm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register TagPrefix="ZL" Namespace="ZoomLa.Controls" Assembly="ZoomLa.Controls" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>总访问报表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="/App_Themes/AdminDefaultTheme/Counter.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/jquery.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server" style="height: 100%;">
    <div id="divMain" style="height: 95%;">
        <div class="r_navigation" style="margin-bottom: 5px;">
            <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <a href="Counter.aspx">访问统计</a>
            &gt;&gt; <span>总访问报表</span>
        </div>
        <table class="table" style="border-collapse: collapse; height: 94%; width: 99%"
            cellspacing="0" cellpadding="2"  align="center" 
            >
            <tr class="title_link">
                <td class="title" style="height: 22px"><a style="float: right;" href="counter.aspx">[返回]</a>
                    <font color="#333333">访客累计：
                        <%=allcount%>
                    </font>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;height:100%;" width="100%">
                    <div align="center">
                        <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" 
                            style="height: 100%;">
                            <tr>
                                <td height="231" align="center" valign="top" bgcolor="#ffffff">
                                    <% 
                                        if (allcount == 0)
                                        {
                                    %>
                                    <table width="100%" border="1" style="border-collapse: collapse" align="center" cellpadding="2"
                                        cellspacing="0" bordercolor="#6595d6">
                                        <tr>
                                            <td>
                                                <div align="center">
                                                    没有任何数据</div>
                                            </td>
                                        </tr>
                                    </table>
                                    <%
                                        }
                                        else
                                        {
                                    %>
                                    <table style="table-layout: fixed" width="100%" border="0" align="center" cellpadding="2"
                                        cellspacing="1" >
                                        <tr align="center" bgcolor="#e2e9ff">
                                            <td width="10%">
                                                记录号
                                            </td>
                                            <td width="10%">
                                                访问者IP
                                            </td>
                                            <td width="10%">
                                                所在地
                                            </td>
                                            <td width="15%">
                                                访问日期
                                            </td>
                                            <td width="30%">
                                                引用页
                                            </td>
                                            <td width="30%">
                                                来源
                                            </td>
                                        </tr>
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr  bgcolor="#ffffff">
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"CountId") %>&nbsp;
                                                    </td>
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"CountIp") %>&nbsp;
                                                    </td>
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"CountCountry") %>
                                                    </td>
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"CountLogtime") %>
                                                    </td>
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"CountSource") %>
                                                    </td>
                                                    <td align="center">
                                                        <a href="#" title="<%# DataBinder.Eval(Container.DataItem,"CountReferer") %>">
                                                            <%# DataBinder.Eval(Container.DataItem,"CountReferer") %>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>
                                    <%}%>
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <%-- <tr>
                                            <td style="text-align: center;">
                                                <ZL:Pager Style="margin-left: auto; margin-right: auto;" ID="pager" runat="server"
                                                    SubmitButtonText="跳转" PageSize="5" AlwaysShow="True" 
                                                    UrlPageIndexName="pageindex" ShowCustomInfoSection="Left" NumericButtonTextFormatString="[{0}]"
                                                    PagingButtonSpacing="8" NextPageText="<FONT face=webdings>4</FONT>" PrevPageText="<FONT face=webdings>3</FONT>"
                                                    LastPageText="<FONT face=webdings>:</FONT>" FirstPageText="<FONT face=webdings>9</FONT>"
                                                    NumericButtonCount="5" CssClass="paginator" HorizontalAlign="Left" ShowBoxThreshold="0"
                                                    Width="90%" OnPageChanged="AspNetPager1_PageChanged" 
                                                    CustomInfoSectionWidth="30%" ShowInputBox="Always" >
                                                </ZL:Pager>
                                                
                                            </td>
                                        </tr>--%>
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
                                                <asp:Label ID="pagess" runat="server" Text="" />10条信息/页 转到第
                                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                                </asp:DropDownList>
                                                页
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

<%@ page language="C#" autoeventwireup="true" inherits="manage_Counter_Local, App_Web_3kvvh0tm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>地区统计报表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="/App_Themes/AdminDefaultTheme/Counter.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/Counter.js" type="text/javascript"></script>
    <script src="/JS/jquery.js" type="text/javascript"></script>
</head>
<body onload="OnWindowsLoad()" onresize="OnWindowsReSize()">
    <form id="form1" runat="server" style="height: 100%;">
    <div id="divMain" style="height: 100%;">
        <div class="r_navigation" style="margin-bottom: 5px;">
            <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <a href="Counter.aspx">访问统计</a>
            &gt;&gt; <span>地区统计报表</span>
        </div>
        <table class="table" style="border-collapse: collapse; height: 94%; width: 99%" bordercolor="#6595d6"
            cellspacing="0" cellpadding="2" width="97%" align="center" bgcolor="#ffffff"
            border="1">
            <tr class="title_link">
                <td class="title" style="height: 22px" colspan="2">
                    <a style="float:right;" href="counter.aspx">[返回]</a>
                    <font color="#333333">地区统计累计： </font>
                    <%=SumCount%>
                </td>
            </tr>
            <tr>
                <td style="vertical-align:top;height:100%;" width="100%">
                    <div align="center">
                        <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1">
                            <tr>
                                <td height="100%" align="center" valign="top" bgcolor="#ffffff">
                                    <% 
                                        if (pcount1 == 0)
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
                                    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
                                        <tr align="center" bgcolor="#e2e9ff">
                                            <td width="15%">
                                                序号
                                            </td>
                                            <td width="15%">
                                                地区统计
                                            </td>
                                            <td width="15%">
                                                访问量
                                            </td>
                                            <td>
                                                比例
                                            </td>
                                        </tr>
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr  bgcolor="#ffffff">
                                                    <td align="center">
                                                        <%# Container.ItemIndex+1%>&nbsp;
                                                    </td>
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"Count_Local") %>
                                                    </td>
                                                    <td align="center">
                                                        <%# DataBinder.Eval(Container.DataItem,"Count_Count") %>
                                                    </td>
                                                    <td class="divCall" id="tdPx<%# Container.ItemIndex+1%>" onmouseover="this.firstChild.style.backgroundColor='#0953C4';"
                                                        onmouseout="this.firstChild.style.backgroundColor='#4197E2';" title="访问量：<%# DataBinder.Eval(Container.DataItem,"Count_Count") %>"
                                                        style="text-align: left;">
                                                        <div onmouseover="this.style.backgroundColor='#0953C4';" onmouseout="this.style.backgroundColor='#4197E2';"
                                                            id="divPx<%# Container.ItemIndex+1%>" style='height: 10px; background-color: #4197E2;display:none;'>
                                                        </div>
                                                        <script type="text/javascript">
                                                <% 
                                                    if (MaxCount == 0)
                                                    {%>
                                                        var leftPx<%#Container.ItemIndex+1 %> + "=0;";
                                                   <% }
                                                    else
                                                    {%>
                                                        var leftPx<%#Container.ItemIndex+1 %>=document.getElementById('tdPx<%#Container.ItemIndex+1 %>').offsetWidth* <%# DataBinder.Eval(Container.DataItem,"Count_Count") %>/<%=MaxCount %>;
                                                        document.getElementById('divPx<%#Container.ItemIndex+1 %>').setAttribute('rel1',<%# DataBinder.Eval(Container.DataItem,"Count_Count") %>);
                                                        document.getElementById('divPx<%#Container.ItemIndex+1 %>').setAttribute('rel2',<%=MaxCount %>);
                                                    <%}
                                                %>
                                                    document.getElementById("divPx<%# Container.ItemIndex+1%>").style.width=leftPx<%# Container.ItemIndex+1%>+1;
                                                    
                                                        </script>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>
                                    <%}%>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <script>
        
    </script>
    </form>
</body>
</html>

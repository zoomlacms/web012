<%@ page language="C#" autoeventwireup="true" inherits="manage_Counter_Month, App_Web_3kvvh0tm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>日统计报表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
            &gt;&gt; <span>日统计报表</span>
        </div>
        <table class="table" style="border-collapse: collapse; height: 94%; width: 99%;" bordercolor="#6595d6"
            cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff" 
            border="1">
            <tr class="title_link">
                <td class="title" style="height: 22px" colspan="2">
                 <a style="float:right;" href="counter.aspx">[返回]</a>
                    <font color="#333333">统计日期：<%=Cyear+"年"+Cmonth.ToString("00")+"月"%>
                        本月累计：<%=SumCount%>
                    </font>[<a href="month.aspx">当前月</a>] [<a href="month.aspx?step=1">前一月</a>] [<a href="month.aspx?step=2">前两月</a>]
                   
                </td>
            </tr>
            <tr>
                <td width="100%" style="vertical-align: top; height: 100%;">
                    <div align="center">
                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#6595d6"
                            style="background-color: #0A54B3;">
                            <tr>
                                <td height="100%" align="center" valign="top" bgcolor="#ffffff">
                                    <% 
                                        if (pmonth == 0)
                                        {
                                    %>
                                    <table width="100%" border="1" style="border-collapse: collapse" align="center" cellpadding="0"
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
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="background-color: transparent">
                                        <tr align="center" bgcolor="#e2e9ff">
                                            <td width="15%">
                                                日期
                                            </td>
                                            <td width="10%">
                                                星期
                                            </td>
                                            <td width="10%">
                                                访问量
                                            </td>
                                            <td width="60%">
                                                比例
                                            </td>
                                        </tr>
                                        <%
                                            for (int ii = 1; ii < LastdayL + 1; ii++)
                                            {
                                                DateTime aboutdate1 = Convert.ToDateTime(aboutdate + "-" + ii);	
                                        %>
                                        <tr   bgcolor="#ffffff">
                                            <td align="center" >
                                                <%=ii%>&nbsp;
                                            </td>
                                            <td align="center">
                                                <%
                                                    if ((aboutdate1.DayOfWeek.ToString() == "Saturday") || (aboutdate1.DayOfWeek.ToString() == "Sunday"))
                                                    { Response.Write("<font color=red>" + GetDayOfWeek(aboutdate1.DayOfWeek.ToString()) + "</font>"); }
                                                    else
                                                    { Response.Write(GetDayOfWeek(aboutdate1.DayOfWeek.ToString())); }
                                                %>&nbsp;
                                            </td>
                                            <td align="center">
                                                <%=dsadmin.Tables[0].Rows[0][ii].ToString()%>
                                            </td>
                                            <td class="divCall"  id="tdPx<%=ii %>" onmouseover="this.firstChild.style.backgroundColor='#0953C4';" onmouseout="this.firstChild.style.backgroundColor='#4197E2';"  title="访问量：<%=dsadmin.Tables[0].Rows[0][ii].ToString() %>"  style="text-align: left;">
                                                <div onmouseover="this.style.backgroundColor='#0953C4';" onmouseout="this.style.backgroundColor='#4197E2';" id="divPx<%=ii %>" style='height: 10px; background-color: #4197E2;display:none;'>
                                                </div>
                                                <script type="text/javascript">
                                                <%
                                                    if (MaxCount == 0)
                                                    {
                                                        Response.Write("var leftPx" + ii + "=0;");
                                                    }
                                                    else
                                                    {
                                                        LeftPx = Convert.ToInt32(250 * Convert.ToInt32(dsadmin.Tables[0].Rows[0][ii].ToString()) / MaxCount);
                                                        Response.Write("var leftPx" + ii + "="+"document.getElementById('tdPx"+ii+"').offsetWidth*"+Convert.ToInt32(dsadmin.Tables[0].Rows[0][ii].ToString())+"/"+MaxCount+";");
                                                        Response.Write("document.getElementById('divPx"+ii+"').setAttribute('rel1',"+Convert.ToInt32(dsadmin.Tables[0].Rows[0][ii].ToString())+");");
                                                        Response.Write("document.getElementById('divPx"+ii+"').setAttribute('rel2',"+MaxCount+");");
                                                    }
                                                %>
                                                    document.getElementById("divPx<%=ii %>").style.width=leftPx<%=ii%>+1;
                                                    
                                                </script>
                                            </td>
                                        </tr>
                                        <%}%>
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

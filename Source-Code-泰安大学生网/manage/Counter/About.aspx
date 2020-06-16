<%@ page language="C#" autoeventwireup="true" inherits="manage_Counter_About, App_Web_3kvvh0tm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>系统信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="/App_Themes/AdminDefaultTheme/Counter.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/jquery.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server" style="height: 100%;">
    <div style="height: 95%;">
        <div class="r_navigation" style="margin-bottom: 5px;">
            <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <a href="Counter.aspx">访问统计</a>
            &gt;&gt; <span>系统信息</span>
        </div>
        <table class="table" style="border-collapse: collapse; height: 94%; width: 99%;" bordercolor="#6595d6"
             cellspacing="0" cellpadding="2"  align="center"
            bgcolor="#ffffff" border="1">
            <tr class="title_link">
                <td class="title" style="height: 22px;text-align:center;" colspan="2"><a style="float: right;" href="counter.aspx">[返回]</a>
                    系统信息 
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;height:100%;" width="100%">
                    <div align="center">
                        <table width="100%" border="0"  align="center" bordercolor="#6595d6"
                            cellpadding="2" cellspacing="1" >
                            <tr>
                                <td height="100%" align="center" valign="top" bgcolor="#ffffff">
                                    <table class="border" cellspacing="0" cellpadding="2" width="100%" align="center"
                                        border="0">
                                        <tr class="sysinfo">
                                            <td>
                                                <iframe id="showiframe" height="200" src="../BrowserCheck.aspx" marginwidth="1" marginheight="1"
                                                    scrolling="no" border="0" frameborder="0" width="100%"></iframe>
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

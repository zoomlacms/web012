<%@ page language="C#" autoeventwireup="true" inherits="manage_Counter_CodeReference, App_Web_3kvvh0tm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>统计代码调用</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="height: 100%;">
    <div id="divMain" style="height: 100%;">
        <div class="r_navigation">
            <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>访问统计</span> &gt;&gt;
            <span>统计代码调用</span>
        </div>
        <div class="clearbox">
        </div>
        <div>
            <table width="100%" style="height:100%" cellpadding="0" cellspacing="0" border="0"
                class="border">
                <tr class="spacingtitle">
                    <td  align="center">
                        统计代码调用
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="white-space: normal; width: 30%; height: 69px;" class="tdbgleft">
                        <strong>获取所有访问来源统计代码：</strong><br />
                        本方法可统计所有网址(IP或URL)的访问来源数据，请将此代码拷贝到您需要做统计的页面，此代码不仅用于向放置了此代码的页面输出统计数据，用户可根据需要自行调用(如网站存储于虚拟目录或特殊路径，请在"/"前定义相对路径)。
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: 109px">
                        <asp:TextBox ID="TextBox1" class="l_input" runat="server" Height="50px" Width="595px"
                            TextMode="MultiLine" Text='<script  type="text/javascript"  src="/CounterLink.aspx"></script>'></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>

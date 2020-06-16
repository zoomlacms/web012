<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Content_ViewVideo, App_Web_ubnlpyrn" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>视频查看页</title>
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理 </span>&gt;&gt; <span>系统设置 </span>&gt;&gt;<span> 扩展功能 </span>&gt;&gt;
        <span>Nite视频面试管理</span> &gt;&gt; <span><span><a href="../Content/VideoVerify.aspx">视频申请列表</a></span>&gt;&gt;<span>
            视频查看 </span></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%">
        <tr>
            <td align="center">
                <label id="LbVideoName" runat="server">
                </label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <iframe src="<%=videourl %>" width="600px" height="400px"></iframe>
            </td>
        </tr>
        <tr>
            <td align="center">
                <label id="LbVideoDescribe" runat="server">
                </label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

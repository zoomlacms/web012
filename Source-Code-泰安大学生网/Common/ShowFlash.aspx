<%@ page language="C#" autoeventwireup="true" inherits="Common_ShowFlash, App_Web_qjkv2p4n" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>在线浏览Swf</title>
</head>
<body>
    <form id="form1" runat="server"> 
       <div style="margin-left:80px">
            <embed  src='<%=swfurl%>' pluginspage="http://www.macromedia.com/shockwave/download/" type="application/x-shockwave-flash" width="800" height="800"></embed>
       </div>
    </form>
</body>
</html>

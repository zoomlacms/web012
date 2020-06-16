<%@ page language="C#" autoeventwireup="true" inherits="manage_Panoramic_SetPanoramic, App_Web_clqrsuzm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="history/history.css" />
    <title>全景视图</title>
    <script src="AC_OETags.js" language="javascript" type="text/javascript"></script>
    <script src="history/history.js" language="javascript" type="text/javascript"></script>
    <style>
        body
        {
            margin: 0px;
            overflow: hidden;
        }
    </style>
    <script language="JavaScript" type="text/javascript">
        window.onload = function () { alert('提示：请点击进入、返回、其它等创建按钮。\r\r注意：必须点击[保存]才能创建成功！！！'); }
        var requiredMajorVersion = 9;
        var requiredMinorVersion = 0;
        var requiredRevision = 124;

        function changeDocumentTitle(a) {
            //window.document.title = a;
            //alert(a);
            return document.getElementById("xmlcontent").value;
        }
        function killErrors() {
            return true;
        }
        function SaveOption(reutrntxt) {
            //alert(reutrntxt);
            //ScanName
            var mainright = window.top.main_right;
            var listarr = reutrntxt.toString().split('</ScanName>');
            var list1 = listarr[0];
            var list2arr = list1.split('<ScanName>');
            var option = document.createElement("option");
            option.value = reutrntxt;
            option.text = list2arr[1];

            mainright.frames["main_right_" + parent.nowWindow].document.getElementById("PanoramicViewList_View").add(option);

            var optionlen = mainright.frames["main_right_" + parent.nowWindow].document.getElementById("PanoramicViewList_View").options.length
            for (var sd = 0; sd < optionlen; sd++) {
                mainright.frames["main_right_" + parent.nowWindow].document.getElementById("PanoramicViewList_View").options[sd].selected =true;
            }
            parent.Dialog.close();
        }

        window.onerror = killErrors;
    </script>
</head>
<body scroll="no">
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr>
                <td colspan="2" class="spacingtitle" align="center">
                    <asp:Label ID="TitleLabel" runat="server" Text="设置参数"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="center" style="width: 100%" height="100%" colspan="2">
                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="Show3Dmodel" width="800px"
                        height="400px" codebase="http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab">
                        <param name="movie" value="Show3Dmodel.swf" />
                        <param name="quality" value="high" />
                        <param name="bgcolor" value="#869ca7" />
                        <param name="allowFullScreen" value="true" />
                        <param name="allowScriptAccess" value="sameDomain" />
                        <embed src="Show3Dmodel.swf" quality="high" bgcolor="#869ca7" width="800px" height="400px"
                            name="Show3Dmodel" align="middle" play="true" loop="false" quality="high" allowscriptaccess="sameDomain"
                            type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer">
                        </embed>
                    </object>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbg" align="center" colspan="2">
                    <asp:Button ID="Button2" runat="server" Text="取消创建" CssClass="C_input" CausesValidation="false"
                        OnClientClick="parent.Dialog.close();return false" />
                </td>
            </tr>
        </table>
        <asp:HiddenField ID="xmlcontent" runat="server" />
    </div>
    <br />
    　<B>提示：</B>请点击进入、返回、其它等创建按钮。<br />
    　<B>注意：</B>必须点击[保存]才能创建成功！！！
    </form>
</body>
</html>

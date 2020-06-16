﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_iServer_ServerSite, App_Web_dpq1mvll" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>有问必答</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/js/Dialog.js"></script>
<script type="text/javascript">

    function Switch(obj) {
        obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
        var nextDiv;
        if (obj.nextSibling) {
            if (obj.nextSibling.nodeName == "DIV") {
                nextDiv = obj.nextSibling;
            }
            else {
                if (obj.nextSibling.nextSibling) {
                    if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                        nextDiv = obj.nextSibling.nextSibling;
                    }
                }
            }

            if (nextDiv) {
                nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
                if (nextDiv.style.display != "") {
                    parent.document.getElementById("left").height = document.body.scrollHeight;
                }
                else {
                    parent.document.getElementById("left").height = document.body.scrollHeight + 20;
                }
            }
        }
    }

    function OpenLink(lefturl, righturl) {
        if (lefturl != "") {
            parent.frames["left"].location = lefturl;
        }
        try {
            parent.MDIOpen(righturl); return false;
        } catch (Error) {
            parent.frames["main_right"].location = righturl;
        }
    }

    function gotourl(url) {
        try {
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
            parent.frames["main_right"].location = "../" + url; void (0);
        }
    }
</script>

</head>
<body>
    <div id="Div1">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">
                    有问必答
                </div>
            </li>
            <li id="Guide_main1">
                <div id="Guide_box1">
                    <div class="guidecollapse" onclick="Switch(this)">
                        问题管理</div>
                    <div class="guide" id="a1">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('iServer/BselectiServer.aspx?num=-3&strTitle=');">问题列表</a> </li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:gotourl('iServer/AddQuestionRecord.aspx');">创建问题记录</a> </li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</body>
</html>

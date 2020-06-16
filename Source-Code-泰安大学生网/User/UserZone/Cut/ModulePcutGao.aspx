﻿<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Cut_ModulePcutGao, App_Web_k3p0ohfx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html>
<head>
<style type="text/css">
        #cover
        {
            background: none repeat scroll 0 0 #CCCCCC;
            height: 100%;
            left: 0;
            opacity: 0;
            position: absolute;
            top: 0;
            width: 1200px;
            z-index: 100;
            cursor: crosshair;
            filter: alpha(opacity=1);
        }
        #webtitle
        {
            border-bottom: #0e439c 1px solid;
            border-left: #0e439c 1px solid;
            padding-bottom: 3px;
            padding-left: 3px;
            width: 150px;
            padding-right: 3px;
            color: #3d6969;
            border-top: #0e439c 1px solid;
            border-right: #0e439c 1px solid;
            padding-top: 3px;
        }
        .barButton
        {
            border-bottom: medium none;
            border-left: medium none;
            width: 58px;
            background: (searchButton.gif) no-repeat 0px 0px;
            height: 27px;
            color: #fff;
            color:Red;
            border-top: medium none;
            cursor: pointer;
            border-right: medium none;
        }
    </style>
<script type="text/javascript" src="../../../JS/Tsinghua.menu.js"></script>
</head>
<body>
    <%--<div id="pageId" style=" display:none;"><%=pageId %></div>--%>
    <div id="divmain" style="width: 100%; height: 1000px; overflow:hidden;  position: relative">
        <iframe id="ifMain" frameborder="0" scrolling="no" src="<%=url%>" style="width: 110%; height: 100%;" ></iframe>
        <div id="cover" style="width: 100%; height: 100%; border:1px #bbd5e4 solid; z-index: 0;" onmousedown="coverDown(event);" onmouseup="coverUp(event);" onmousemove="coverMove(event);">
        </div>
        <div id="divshow" onmousedown="downShow(event);" onmousemove="moveShow(event);coverMove(event);"
            onmouseup="upShow(event);coverUp(event);" style="border:1px #bbd5e4 solid; background-color: #CCCCCC;
            width: 100px; height: 100px; position: absolute; display: none; cursor: move;
            z-index: 1; filter: alpha(opacity=50); opacity: 0.5;">
            <a style="width: 100%; height: 100%;">
                <div style="width: 100%; height: 100%;" ondblclick="onsaveiframe();" >
                </div>
            </a>
        </div>
        <div id="InputTitle" style="position: absolute; top: 100px; z-index:1000; left: 100px; width: 150px; height: 30px; background-color: #FCC; vertical-align: middle; padding-top: 5px; padding-bottom: 2px; padding-left: 5px; display: none;">
            <input class="barButton" type="submit" value="确定" onclick="onsaveiframe();" onkeyup="if(event.keyCode==13){ onsaveiframe();}" />
            <input class="barButton" type="button" value="取消" onclick="clearAll();" />
        </div>
    </div>
    <script type="text/javascript">
        var w3c = (document.getElementByIdx) ? true : false;
        var agt = navigator.userAgent.toLowerCase();
        var ie = ((agt.indexOf("msie") != -1) && (agt.indexOf("opera") == -1) && (agt.indexOf("omniweb") == -1));

        function IeTrueBody() {
            return (document.compatMode && document.compatMode != "BackCompat") ? document.documentElement : document.body;
        }

        function GetScrollTop() {
            return ie ? IeTrueBody().scrollTop : window.pageYOffset;
        }

        function GetScrollLeft() {
            return ie ? IeTrueBody().scrollLeft : window.pageXOffset;
        }


        var req;
        var AjAXflag = false;
        function createreq() {
            if (window.XMLHttpRequest) {
                req = new XMLHttpRequest();
            }
            if (window.ActiveXObject) {
                req = new ActiveXObject("Microsoft.XMLHttp");
            }
        }
        function callback() //回调函数，对服务端的响应处理，监视response状态
        {
            if (req.readystate == 4) //请求状态为4表示成功
            {
                if (req.status == 200) //http状态200表示OK
                {
                    AjAXflag = true;
                    //alert("成功");
                    //所有状态成功，执行此函数，显示数据
                }
                else //http返回状态失败
                {
                    alert("更新失败！" + req.statusText);
                }
            }
            else //请求状态还没有成功，页面等待
            {
            }
        }

        function tjAjax(url) {
            //  alert(url);
            if (!req) {
                createreq();
            }
            req.open("GET", url, false); //与服务端建立连接(请求方式post或get，地址,true表示异步)
            req.onreadystatechange = callback; //指定回调函数
            req.send(null); //

        }


        var cdown = false;
        var downx = 0;
        var downy = 0;
        var divs = document.getElementById("divshow");
        var divTitle = document.getElementById("InputTitle");
        var webtitle = document.getElementById("webtitle");
        var iframeMain = document.getElementById("ifMain");

        var divmain = document.getElementById("divmain");



        var divsx, divsy, divw, divh = 0;

        function coverDown(e) {
            clearAll();
            cdown = true;
            //divs.dragDrop();
            downx = e.clientX;
            downy = e.clientY;
            divsx = downx - divmain.offsetLeft + GetScrollLeft();
            divsy = downy - divmain.offsetTop + GetScrollTop();
            downx = divsx;
            downy = divsy;
            divs.style.top = divsy + "px";
            divs.style.left = divsx + "px";
            divs.style.display = 'block';
            divs.style.width = "0px";
            divs.style.height = "0px";
        }
        function mouseUp() {
            coverUp(window.event);
            upShow(window.event);
        }
        function mouseMove() {
            coverMove(window.event);
            moveShow(window.event);
        }
        function coverMove(e) {
            if (cdown) {
                divw = e.clientX - downx - divmain.offsetLeft + GetScrollLeft();
                divh = e.clientY - downy - divmain.offsetTop + GetScrollTop();
                if (divw > 0) {
                    divsx = downx;

                } else {
                    divw = -divw;
                    divsx = downx - divw;
                }
                if (divh > 0) {
                    divsy = downy;
                } else {
                    divh = -divh;
                    divsy = downy - divh;
                }
                divs.style.width = divw + "px";
                divs.style.height = divh + "px";
                divs.style.top = divsy + "px";
                divs.style.left = divsx + "px";
            }
        }
        function coverUp(e) {
            if (cdown) {
                cdown = false;
            }
            divTitleShow()  //显示输入标题
            //divs.releaseCapture();
        }

        function divTitleShow() {
            divTitle.style.display = 'block';

            divTitle.style.top = (divsy + divh + 1) + "px";
            divTitle.style.left = (divsx + divw - divTitle.offsetWidth) + "px";
        }

        function clearAll() {
            cdown = false;
            downx = 0;
            downy = 0;
            divsx = 0;
            divsy = 0;
            divw = 0;
            divh = 0;
            divs.style.display = 'none';
            divTitle.style.display = 'none';
        }


        function onsaveiframe() {
           //var url = "ModulePgao.aspx?top=" + divsy + "&menuid=0&left=" + divsx + "&width=" + divw + "&height=" + divh + "&url=" + escape(iframeMain.src);
            //window.open(url, "_top");
            //window.opener.gethtml("" + height + "," + width + "," + url + "," + top + "," + left + "");
            window.opener.gethtml(height,width,url,top,left);
        }
        var sDown = false;
        var sDownx, sDowny = 0;
        var sWidth, sHeight = 0;
        function downShow(e) {
            //divs.dragDrop();
            sDown = true;
            sDowny = e.clientY;
            sDownx = e.clientX;
        }
        function moveShow(e) {
            if (sDown) {
                sWidth = e.clientX - sDownx;
                sHeight = e.clientY - sDowny;
                if (divsy + sHeight >= 0) {
                    divs.style.top = divsy + sHeight + "px";
                } else {
                    divs.style.top = "0px";
                }
                if (divsx + sWidth >= 0) {
                    divs.style.left = divsx + sWidth + "px";
                } else {
                    divs.style.left = "0px";
                }

            }
        }
        function upShow(e) {
            if (sDown) {
                sDown = false;
                divsy = divsy + sHeight;
                divsx = divsx + sWidth;
            }
            //divs.releaseCapture();
        }
        document.onmouseup = mouseUp;
        document.onmousemove = mouseMove;
    </script>
</body>
</html>

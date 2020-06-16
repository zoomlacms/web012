<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Pcut, App_Web_k3p0ohfx" responseencoding="UTF-8" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html >
<html>
<head id="Head1" runat="server">
    <title>网页剪刀</title>
    <link href="/App_Themes/UserThem/cut.css" type="text/css" rel="stylesheet" />
    <link href="/App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../../JS/jquery-1.5.1.min.js"></script>
    <script type="text/javascript" src="../../../JS/Tsinghuap.menu.js"></script>
    <script type="text/javascript" src="../../../JS/menuload.js"></script>
    <script type="text/javascript" src="../../../JS/CutDragDef.js"></script>
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

            req.open("GET", url, true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
            req.onreadystatechange = callback; //指定回调函数
            req.send(null); //

        }


        var mousex = 0;
        var mousey = 0;
        function blockORnone(i, aid, divid) {
            var a = document.getElementById(aid);
            var div = document.getElementById(divid);

            if (div.style.display == "block") {
                AjAXflag = false;
                tjAjax("PcutUpdate.aspx?type=1&&isVisble=0&&id=" + i);
                //if (AjAXflag) {
                div.style.display = "none";
                a.title = "展开内容";
                a.className = " aPic bgImg5";
                //}

            } else {
                AjAXflag = false;
                tjAjax("PcutUpdate.aspx?type=1&&isVisble=1&&id=" + i);
                //if (AjAXflag) {
                div.style.display = "block";
                a.title = "收起内容";
                a.className = " aPic bgImg4";
                //}
            }

        }

        function editCut(id, atitle, aedit) {
            //mouseUp(window.event);
            var title = document.getElementById(atitle);
            var edit = document.getElementById(aedit);
            var editDiv = document.getElementById("editDiv");
            var inputTitle = document.getElementById("inputTitle");
            var top = 0;
            var left = 0;
            var width = 0;
            var height = 0;

            width = editDiv.style.width.substr(0, editDiv.style.width.length - 2);
            height = editDiv.style.height.substr(0, editDiv.style.height.length - 2);

            top = mousey - height / 2;
            left = mousex - width / 2;
            //alert(top+":"+left+title.innerText);
            inputTitle.innerText = title.innerText;
            document.getElementById("editxtId").value = id;
            document.getElementById("titleaid").value = atitle;
            editDiv.style.display = "block";
            editDiv.style.top = top + "px";
            editDiv.style.left = left + "px"

        }
        function editOK() {
            var txtid = document.getElementById("editxtId").value;
            var txttitle = document.getElementById("ediText").value;
            if (txttitle == null || (txttitle != null && txttitle.lenth == 0)) {
                txttitle = "请输入标题";
            }

            url = "PcutUpdate.aspx?type=2&&id=" + txtid + "&&title=" + escape(txttitle);
            AjAXflag = false;
            tjAjax(url);
            //if (AjAXflag) {
            var atitle = document.getElementById("titleaid").value;
            hiddendiv("editDiv");
            document.getElementById(atitle).innerText = txttitle;
            //}
        }

        function mouseUp() {
            mousex = window.event.x;
            mousey = window.event.y;

        }
        function closeDiv(i, divid) {

            if (confirm("你确定要删除吗？")) {
                AjAXflag = false;
                tjAjax("PcutUpdate.aspx?type=3&&id=" + i);
                //if (AjAXflag) {
                hiddendiv(divid)
                // }
                //return true;
            } else {
                //return false;
            }
        }
        function maxCut(atitle, iframecut, cuthidden) {
            var maxTitle = document.getElementById("maxTitle");
            var title = document.getElementById(atitle);
            var iframecut = document.getElementById(iframecut);
            var iframemax = document.getElementById("iframemax");
            var maxCut = document.getElementById("maxCut");
            var cuthidden = document.getElementById(cuthidden);
            var maxcuthidden = document.getElementById("maxcuthidden");
            var maxdivtitle = document.getElementById("maxdivtitle");
            var width = 0;
            var height = 0;
            //alert(window.screen.availWidth+":"+window.screen.availHeight+"\n"+window.screen.width+":"+window.screen.height+"\n"
            //+window.screen.availTop+":"+window.screen.availLeft);
            width = window.screen.availWidth - 40;
            height = window.screen.availHeight - 160;

            maxTitle.innerText = title.innerText;
            maxdivtitle.style.width = width;
            maxcuthidden.style.width = cuthidden.style.width;
            maxcuthidden.style.height = cuthidden.style.height;
            iframemax.src = iframecut.src;
            iframemax.style.marginTop = iframecut.style.marginTop;
            iframemax.style.marginLeft = iframecut.style.marginLeft;
            maxCut.style.width = width;
            maxCut.style.height = height;
            maxCut.style.top = "0";
            maxCut.style.left = "0";
            maxCut.style.display = "block";

        }
        function hiddendiv(divid) {
            var div = document.getElementById(divid);
            div.style.display = "none";
        }
        function showdiv(divid) {
            var div = document.getElementById(divid);
            div.style.display = "block";
        }
        function addcut() {
            showdiv("CutUrl");
            var main = document.getElementById('CutIframe');
            var url = document.getElementById('txtUrl').value;
            main.src = "Pcuting.aspx?url=" + url + "&menuid=" + QueryString("menuid");
        }

    </script>
    <script type="text/javascript" src="../../../JS/DefaultMenu.js"></script>

</head>
<body onmouseup="mouseUp()" style="background: none">
    <div id="Cut_top">
        <div id="logo">
            <a href="/">
                <img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a></div>
        <div id="Cut_top_r">
            <iframe src="/Search/indexSearch.aspx" marginwidth="1" marginheight="1" scrolling="no"
                border="0" frameborder="0" width="360px" height="28px"></iframe>
            <a href="/User/Register.aspx">会员注册</a> <a href="/user">用户登陆</a> <a href="/User/GetPassword.aspx">
                找回密码</a><a href="ModuleTerrace.aspx">组件平台</a>
        </div>
    </div>
    <div id="CutUrl" style="display: none; width: 100%; height: 1000px;">
        <iframe id="CutIframe" style="width: 100%; height: 1000px; position: relative;">
        </iframe>
    </div>
    <div id="pcut_menu">
        <div id="pcut_mm">
            <div id="p_0">
                <a href="?menuid=0">个人主页</a></div>
            <div id="p_1">
                <a href="?menuid=1">互动组件</a></div>
            <%
                if (Session["pageSign"] != null)
                {
                    System.Collections.Generic.List<ZoomLa.Model.User.M_PageSign> pageSigns = (System.Collections.Generic.List<ZoomLa.Model.User.M_PageSign>)Session["pageSign"];
                    foreach (ZoomLa.Model.User.M_PageSign mps in pageSigns)
                    { 
            %>
            <div id="p_<%=mps.Id%>">
                <a href="javascript:singleClick(<%=mps.Id%>);"  ondblclick="dblClick(<%=mps.Id%>)">
                    <%=mps.PageSign%></a>
                <%
                    if (Request.QueryString["menuid"] != null)
                    {
                        if (mps.Id > 1 && Convert.ToInt32(Request.QueryString["menuid"]) == mps.Id)
                        {
                %>
                <img title="删除" alt="删除" onclick="removeMenu(<%=mps.Id  %>)" src="../../../App_Themes/AdminDefaultTheme/images/close2.gif" />
                <%
                    }
                 }
                %>
            </div>
            <%
                }
        }
            %>
            <span id="addnew"><a href="javascript:void(0);">
                <img src="../../../App_Themes/AdminDefaultTheme/images/padd.jpg" width="15" height="15" />添加页签</a></span>
        </div>
    </div>
    <div id="Cut_home">
        网页剪取：
        <input type="text" id="txtUrl" value="http://www.zoomla.cn/" onkeyup="if(event.keyCode==13){ addcut();}" />
        <input type="button" id="txtOK" value="猛点我选定" onclick="addcut()" />
    </div>
    <div id="ho">

        <div id="home0" class="<%=getWidth()[0]%>">
            <span style="width: 100%; height: 1px; display: block;"></span>
            <%if (menuid == 0)
              { %>
            <div id="divCut14">
                <h1 class="gd">
                    <div class="title">
                        <span><a href="#">更多>></a></span>相关应用</div>
                </h1>
                <div class="left_nav">
                    <ul>
                        <li><a href="/3d" target="_blank">3D网上超市</a></li>
                        <li><a href="/manage/Panoramic/PanoramicShow.aspx?id=1" target="_blank">三维全景</a></li>
                        <li><a href="/Questions/Default.aspx?id=1" target="_blank">在线组卷</a></li>
                        <li><a href="/try" target="_blank">眼镜试戴</a></li>
                    </ul>
                </div>
                <div class="title">
                    <span><a href="#">更多>></a></span>快速导航</div>
                <div class="left_nav">
                    <ul>
                        <li><a href="#">教学中心</a></li>
                        <li><a href="#">视频中心</a></li>
                        <li><a href="#">教案下载</a></li>
                        <li><a href="#">教学中心</a></li>
                    </ul>
                </div>
                <div class="title">
                    <span><a href="#">更多>></a></span>密码箱</div>
                <div class="left_nav">
                    <ul>
                        <li><a href="#">开心网</a></li>
                        <li><a href="#">人人网</a></li>
                        <li><a href="#">华夏互联</a></li>
                        <li><a href="#">51我的家</a></li>
                    </ul>
                </div>
            </div>
            <%} %>
        </div>
        <div id="home1" class="<%=getWidth()[1]%>">
            <%
if (Cuts != null && showCount > Cuts.Count)
{
    showCount = Cuts.Count;
}
if (Cuts != null)
{
    for (int i = 0; i < showCount; i++)
    {
        cut = Cuts[i];
        if (menuid == cut.MenuID)
        {
            %>
            <div id="divCut<%=i %>" class="divCut">
                <span class="<%=getClass()[0] %>"><a id="showORnone<%=i %>" title="<%=getsh(i)[0] %>" href="javascript:blockORnone(<%=cut.Id %>,'showORnone<%=i %>','divUrl<%=i %>')"
                    class=" <%=getsh(i)[1] %>"></a></span><span class="<%=getClass()[1] %>"><a id="atitle<%=i %>" class="atitle">
                        <%=cut.Title%></a></span>
                <h1 class="<%=getClass()[2] %>">
                </h1>
                <span class="<%=getClass()[3] %>"><a id="edit<%=i %>" title="编辑" href="javascript:editCut(<%=cut.Id %>,'atitle<%=i %>','edit<%=i%>')"
                    class=" aPic bgImg1"></a><a title="最大" href="javascript:maxCut('atitle<%=i %>','iframecut<%=i %>','cuthidden<%=i %>')"
                        class=" aPic bgImg2"></a><a title="删除" href="javascript: closeDiv(<%=cut.Id %>,'divCut<%=i %>')"
                            class=" aPic bgImg3"></a></span>
                <%= getCutDiv(i, cut)%>
            </div>
            <%
}
    }
} 
            %>
        </div>
        <div id="home2" class="<%=getWidth()[2]%>">
        <%if (menuid == 0)
          { %>
            <div id="divCut15">
                <h1 class="gd">
                    <div class="title">
                        <span><a href="#">更多>></a></span>社区游戏与会员</div>
                </h1>
                <div class="rihgt_f">
                    <ul>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                        <li><a href="">
                            <img src="/images/InitHead.gif" align=""></a></li>
                    </ul>
                    <div class="clear">
                    </div>
                </div>
            </div>
            <%} %>
        </div>
  </div>
    <div id="editDiv" style="width: 250px; height: 200px; border: 10px #e6f2f8  solid;
        background-color: #fff; position: absolute; top: 300px; left: 50px; z-index: 9;
        display: none;">
        <div class="atitle">
            编辑：<a id="inputTitle" class="atitle">请输入</a><a class="acolse" href="javascript:javascript:hiddendiv('editDiv');">关闭</a></div>
        <div style="text-align: center; padding-top: 30px;">
            标题：
            <input id="ediText" type="text" class="ediText" />
            <br />
            <br />
            <br />
            <input id="editxtId" type="text" value="1" style="display: none;" />
            <input id="titleaid" type="text" value="1" style="display: none;" />
            <input id="editOK" onclick="editOK()" type="button" class="C_input" style="height: 22px;"
                value="确定" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input id="editClose" onclick=" hiddendiv('editDiv')" class="C_input" type="button"
                style="height: 22px;" value="取消" />
        </div>
    </div>
    <div id="maxCut" style="width: 1000px; height: 768px; border: 1px #bbd5e4 solid;
        margin: 10px 15px; display: none; background-color: #fff; position: absolute;
        z-index: 10;">
        <div id="maxdivtitle" class="divTitle" style="width: 1000px;">
            <a class=" aPic bgImg4"></a><a id="maxTitle" class="atitle">输入标题</a>
            <div class="minspan">
                <a title="还原" href="javascript:hiddendiv('maxCut')" class="aPic bgImg6"></a>
            </div>
        </div>
        <div id='divUrlMax' class="divUrlMax">
            <div id="maxcuthidden" style='width: 653px; height: 231px; overflow: hidden; margin: auto;'>
                <iframe id="iframemax" frameborder='0' scrolling='no' src=' ' style='width: 1024px;
                    height: 1500px; margin-top: 0px; margin-left: 0px;'></iframe>
            </div>
        </div>
    </div>
    <div id="bottom">
        <a href="/">
            <img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
        <p>
            <script language="javascript" type="text/javascript"> 
<!--
                var year = "";
                mydate = new Date();
                myyear = mydate.getYear();
                year = (myyear > 200) ? myyear : 1900 + myyear;
                document.write(year); 
--> 
            </script>
            &nbsp;Copyright&copy;&nbsp;
            <%Call.Label("{$SiteName/}"); %>
            All rights reserved.</p>
    </div>
</body>
</html>

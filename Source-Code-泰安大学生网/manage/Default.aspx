<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.index, App_Web_hh3wwa3n" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Zoomla!逐浪CMS后台管理主页</title>
<link href="../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/Default.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript" src="../JS/ajaxrequest.js"></script>
<script type="text/javascript" src="../Images/style3D/fun.js"></script>
<script src="../JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="../JS/ManageJS.js"></script>
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script type="text/javascript" src="../js/Drag.js"></script>
<script type="text/javascript" src="../js/Dialog.js"></script>
<script src="../js/ymPrompt.js"></script>
<link rel="stylesheet" id='skin' type="text/css" href="../App_Themes/AdminDefaultTheme/PromptSkin/ymPrompt.css" />
<script>
        function lock(evt) { 
            var a;
            var res;
            if (navigator.appName == "Microsoft Internet Explorer") {
                a = event.keyCode;
                res = event.altKey;
            } else {
                a = evt.which;
                res = evt.altKey;
            }
            if (a == 13) {
                event.keyCode = 9;
            }
            if ((a == 81) && res) {
                showWindow(900, 460);
            }
        }
        document.onkeydown = lock;
        var ajax = new AJAXRequest;
        function tipMes() {
            ajax.get(
        "/User/mess.aspx?c=show",
        function (obj) {
            var tip = obj.responseText; //获得返回信息
            var tips = tip.split("|");
            if (tips.length > 1 && tips[0] != 0) {
                var content = "<a href='javascript:void(0)' hidefocus='true' onclick='top.OpenOnline()'><FONT color=#ff0000>点击查看</FONT></a><br/>";
                showmsg("您有" + tips[0] + "条新信息", content);
            }
        }
        );
        }
        function showmsg(tip, content) {
            var MSG = new CLASS_MSN_MESSAGE("aa", 200, 120, "短消息提示：", tip, content);
            MSG.speed = 10;
            MSG.step = 2;
            MSG.show();
        }

        function OpenOnline() {
            //            var diag = new Dialog();
            //            diag.Modal = false;
            //            diag.Width = 640;
            //            diag.Height = 490;
            //            diag.Title = "逐浪在线客服系统服务控制台<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
            //            diag.URL = "../OnlineService/ShowForm.aspx?type=0";
            //            diag.show();
            //window.open("../../Common/SelectStyle.htm", "", "width=600,height=400")

            ymPrompt.win("../OnlineService/ShowForm.aspx?type=0", 650, 580, "逐浪在线客服系统服务控制台<span style='font-weight:normal'>[ESC键退出当前操作]", null, null, null, true);
            //ymPrompt.win('../OnlineService/ShowForm.aspx?type=0',500,300,'逐浪在线客服系统服务控制台',handler,null,null,true)" 
        }

        function Installtemp(url) {
            var diag = new Dialog();
            diag.Modal = false;
            diag.Width = 640;
            diag.Height = 490;
            diag.Title = "系统安装风格窗口<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
            diag.URL = url;
            diag.show();
        }

        function openwin(title, url) {
            var diag = new Dialog();
            diag.Width = 640;
            diag.Height = 520;
            diag.Title = title + "<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
            diag.URL = url;
            diag.show();
        }

        function openclent(url) {
            var diag = new Dialog();
            diag.Modal = false;
            diag.Width = 640;
            diag.Height = 490;
            diag.Title = "逐浪在线客服系统服务控制台<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
            diag.URL = url; // "../OnlineService/ShowForm.aspx?type=0";
            diag.show();
            //window.open("../../Common/SelectStyle.htm", "", "width=600,height=400")
        }
        window.setInterval("tipMes()", 20000);

        //设置Cookies
        function setCookie(obj) {
            if (!navigator.cookieEnabled) {
                alert('不允许设置Cookie项!');
            } else {

                var date = new Date();
                date.setTime(date.getTime() + 60000 * 10);
                document.cookie = "SetLock=" + escape(obj) + ";expires=" + date.toGMTString() + ";path=/" + ";domaim=zgdsc.cn" + ":secure";
            }
        }

        //获取Cookies
        function getCookie(cookie_name) {
            var allcookies = document.cookie;
            var cookie_pos = allcookies.indexOf(cookie_name);
            // 如果找到了索引，就代表cookie存在，
            // 反之，就说明不存在。  
            if (cookie_pos != -1) {
                // 把cookie_pos放在值的开始，只要给值加1即可。   
                cookie_pos += cookie_name.length + 1;
                var cookie_end = allcookies.indexOf(";", cookie_pos);
                if (cookie_end == -1) {
                    cookie_end = allcookies.length;
                }
                var value = unescape(allcookies.substring(cookie_pos, cookie_end));
            }
            if (value == "undefined") {
                return "0";
            } else {
                return value;
            }
        }

        window.onload = function () {
            if (getCookie("SetLock") == "1") {
                showWindow(900, 460);
            }

            var css = document.getElementById("skin");
            css.href = "/App_Themes/AdminDefaultTheme/PromptSkin/ymPrompt.css";
            SelectIndexChange("Content")
            //document.getElementById('b2').click()
        }

        function showWindow(width, height) {
            setCookie('1');
            var windowstr = "<p align=center><iframe src='Lockin.aspx' width='900px' height='460px' scrolling='no' frameborder='0'></iframe></p>";

            document.getElementById("infoDiv").innerHTML = windowstr;
            document.getElementById("infoDiv").style.left = (((document.body.clientWidth - width) > 0 ? (document.body.clientWidth - width) : 0) / 2) + "px";
            document.getElementById("infoDiv").style.top = (((document.body.clientHeight - height) > 0 ? (document.body.clientHeight - height) : 0) / 2) + "px";
            document.getElementById("infoDiv").style.width = "1000px";
            document.getElementById("infoDiv").style.height = "460px";
            document.getElementById("tranDiv").style.height = document.body.clientHeight + "px";
            document.getElementById("tranDiv").style.width = document.body.clientWidth + "px";
            document.getElementById("tranDiv").style.display = "";
            document.getElementById("tranDivBack").style.display = "";
            document.getElementById("infoDiv").style.display = "";
            document.getElementById("frameBar").style.display = "none";
        }
        autoResize = function (width, height) {
            document.getElementById("tranDivBack").style.width = document.body.clientWidth > document.body.scrollWidth ? document.body.clientWidth : document.body.scrollWidth;
            document.getElementById("tranDivBack").style.height = document.body.clientHeight > document.body.scrollHeight ? document.body.clientHeight : document.body.scrollHeight;
            document.getElementById("tranDiv").style.width = document.body.clientWidth;
            document.getElementById("tranDiv").style.height = document.body.clientHeight;
            document.getElementById("infoDiv").style.left = ((document.body.clientWidth - width) > 0 ? (document.body.clientWidth - width) : 0) / 2 + "px";
            document.getElementById("infoDiv").style.top = ((document.body.clientHeight - height) > 0 ? (document.body.clientHeight - height) : 0) / 2 + "px";
            document.getElementById("infoDiv").style.width = width < document.body.clientWidth ? width : document.body.clientWidth;
            document.getElementById("infoDiv").style.height = height < document.body.clientHeight ? height : document.body.clientHeight;

        }

    </script>
    <%
        if (ZoomLa.Components.SiteConfig.SiteOption.Desk != "")
        {
            string desk = ZoomLa.Components.SiteConfig.SiteOption.Desk;
            if (desk != null && desk.IndexOf("|") > -1)
            {
                string[] deskarr = desk.Split('|');
                showtype = deskarr[0];
                Response.Write("<script>\r\n      var showtype='" + showtype + "';\r\n");
                for (int i = 1; i < deskarr.Length; i++)
                {
                    Response.Write("      var value" + i + "='" + deskarr[i] + "';\r\n");
                }

                if (showtype == "Content" || showtype == "Shop" || showtype == "Page" || showtype == "Forum" || showtype == "OA")
                {
                    WorkTable = deskarr[1].ToString();
                }

                if (showtype == "All")
                {
                    string contentcfg = deskarr[1];//内容管理
                    string shopcfg = deskarr[2];//商城管理
                    string pagecfg = deskarr[3];//黄页系统
                    string forumcfg = deskarr[4];//教育模块
                    string oacfg = deskarr[5];//智能办公
                    string configcfg = deskarr[6];//配置场景



                    //我的工作台
                    int showin = ZoomLa.Common.DataConverter.CLng(contentcfg.Substring(0, 1));
                    int showin1 = ZoomLa.Common.DataConverter.CLng(shopcfg.Substring(0, 1));
                    int showin2 = ZoomLa.Common.DataConverter.CLng(pagecfg.Substring(0, 1));
                    int showin3 = ZoomLa.Common.DataConverter.CLng(forumcfg.Substring(0, 1));
                    int showin4 = ZoomLa.Common.DataConverter.CLng(oacfg.Substring(0, 1));



                    if ((showin == 1) || (showin1 == 1) || (showin2 == 1) || (showin3 == 1) || (showin4 == 1))
                    {
                        WorkTable = "1";
                    }

                    //内容管理
                    showContent = ZoomLa.Common.DataConverter.CLng(contentcfg.Substring(1, 1));

                    //商城管理
                    ShowShop = ZoomLa.Common.DataConverter.CLng(shopcfg.Substring(1, 1));

                    //企业黄页
                    ShowPage = ZoomLa.Common.DataConverter.CLng(pagecfg.Substring(1, 1));

                    //用户社区
                    int user1 = ZoomLa.Common.DataConverter.CLng(contentcfg.Substring(2, 1));
                    int user2 = ZoomLa.Common.DataConverter.CLng(shopcfg.Substring(2, 1));
                    int user3 = ZoomLa.Common.DataConverter.CLng(pagecfg.Substring(2, 1));
                    int user4 = ZoomLa.Common.DataConverter.CLng(oacfg.Substring(1, 1));
                    int user5 = ZoomLa.Common.DataConverter.CLng(configcfg.Substring(0, 1));

                    if (user1 == 1 || user2 == 1 || user3 == 1 || user4 == 1 || user5 == 1)
                    {
                        ShowUser = 1;
                    }

                    //扩展功能
                    int showp1 = ZoomLa.Common.DataConverter.CLng(contentcfg.Substring(3, 1));
                    int showp2 = ZoomLa.Common.DataConverter.CLng(shopcfg.Substring(3, 1));
                    int showp3 = ZoomLa.Common.DataConverter.CLng(pagecfg.Substring(3, 1));
                    int showp4 = ZoomLa.Common.DataConverter.CLng(forumcfg.Substring(1, 1));
                    int showp5 = ZoomLa.Common.DataConverter.CLng(configcfg.Substring(1, 1));
                    if (showp1 == 1 || showp2 == 1 || showp3 == 1 || showp4 == 1 || showp5 == 1)
                    {
                        ShowPlub = 1;
                    }
                    //系统配置
                    int sys1 = ZoomLa.Common.DataConverter.CLng(contentcfg.Substring(4, 1));
                    int sys2 = ZoomLa.Common.DataConverter.CLng(shopcfg.Substring(4, 1));
                    int sys3 = ZoomLa.Common.DataConverter.CLng(pagecfg.Substring(4, 1));
                    int sys4 = ZoomLa.Common.DataConverter.CLng(configcfg.Substring(2, 1));
                    if (sys1 == 1 || sys2 == 1 || sys3 == 1 || sys4 == 1)
                    {
                        Showsys = 1;
                    }

                    ShowForum = ZoomLa.Common.DataConverter.CLng(forumcfg.Substring(2, 1));

                    //BI应用
                    int bi1 = ZoomLa.Common.DataConverter.CLng(shopcfg.Substring(5, 1));
                    int bi2 = ZoomLa.Common.DataConverter.CLng(pagecfg.Substring(5, 1));
                    int bi3 = ZoomLa.Common.DataConverter.CLng(forumcfg.Substring(3, 1));
                    int bi4 = ZoomLa.Common.DataConverter.CLng(oacfg.Substring(2, 1));
                    if (bi1 == 1 || bi2 == 1 || bi3 == 1 || bi4 == 1)
                    {
                        ShowBI = 1;
                    }
                }

                if (showtype == "Content")
                {
                    string cd = deskarr[1];//我的工作台
                    string cn = deskarr[2];//内容管理
                    string cu = deskarr[3];//用户社区
                    string ck = deskarr[4];//扩展功能
                    string cx = deskarr[5];//系统配置

                    #region 全局显示
                    WorkTable = cd;
                    if (cn.IndexOf('1') == -1)
                        showContent = 0;
                    else
                        showContent = 1;

                    if (cu.IndexOf('1') == -1)
                        ShowUser = 0;
                    else
                        ShowUser = 1;
                    if (ck.IndexOf('1') == -1)
                        ShowPlub = 0;
                    else
                        ShowPlub = 1;
                    if (cx.IndexOf('1') == -1)
                        Showsys = 0;
                    else
                        Showsys = 1;
                    #endregion

                    for (int i = 0; i < cn.Length; i++)
                    {
                        showContentArr[i] = cn.Substring(i, 1);
                    }

                    for (int i = 0; i < cu.Length; i++)
                    {
                        ShowUserArr[i] = cu.Substring(i, 1);
                    }
                    for (int i = 0; i < ck.Length; i++)
                    {
                        ShowPlubArr[i] = ck.Substring(i, 1);
                    }
                    for (int i = 0; i < cx.Length; i++)
                    {
                        ShowsysArr[i] = cx.Substring(i, 1);
                    }

                }
                if (showtype == "Shop")
                {
                    string sd = deskarr[1];//我的工作台
                    string ss = deskarr[2];//商城管理
                    string su = deskarr[3];//用户社区
                    string sk = deskarr[4];//扩展功能
                    string sx = deskarr[5];//系统配置
                    string sbi = deskarr[6];//BI应用
                    #region 全局显示
                    WorkTable = sd;
                    if (ss.IndexOf('1') == -1)
                        ShowShop = 0;
                    else
                        ShowShop = 1;

                    if (su.IndexOf('1') == -1)
                        ShowUser = 0;
                    else
                        ShowUser = 1;

                    if (sk.IndexOf('1') == -1)
                        ShowPlub = 0;
                    else
                        ShowPlub = 1;
                    if (sx.IndexOf('1') == -1)
                        Showsys = 0;
                    else
                        Showsys = 1;
                    if (sbi.IndexOf('1') == -1)
                        ShowBI = 0;
                    else
                        ShowBI = 1;
                    #endregion
                    for (int i = 0; i < ss.Length; i++)
                    {
                        ShowShopArr[i] = ss.Substring(i, 1);
                    }
                    for (int i = 0; i < su.Length; i++)
                    {
                        ShowUserArr[i] = su.Substring(i, 1);
                    }
                    for (int i = 0; i < sk.Length; i++)
                    {
                        ShowPlubArr[i] = sk.Substring(i, 1);
                    }
                    for (int i = 0; i < sx.Length; i++)
                    {
                        ShowsysArr[i] = sx.Substring(i, 1);
                    }
                    for (int i = 0; i < sbi.Length; i++)
                    {
                        ShowBIArr[i] = sbi.Substring(i, 1);
                    }
                }

                if (showtype == "Page")
                {
                    string pd = deskarr[1];//我的工作台
                    string pp = deskarr[2];//企业黄页
                    string pu = deskarr[3];//用户社区
                    string pb = deskarr[4];//扩展功能
                    string ps = deskarr[5];//系统配置
                    string pbi = deskarr[6];//BI应用
                    #region 全局显示
                    WorkTable = pd;
                    if (pp.IndexOf('1') == -1)
                        ShowPage = 0;
                    else
                        ShowPage = 1;

                    if (pu.IndexOf('1') == -1)
                        ShowUser = 0;
                    else
                        ShowUser = 1;

                    if (pb.IndexOf('1') == -1)
                        ShowPlub = 0;
                    else
                        ShowPlub = 1;
                    if (ps.IndexOf('1') == -1)
                        Showsys = 0;
                    else
                        Showsys = 1;
                    if (pbi.IndexOf('1') == -1)
                        ShowBI = 0;
                    else
                        ShowBI = 1;
                    #endregion
                    for (int i = 0; i < pp.Length; i++)
                    {
                        ShowPageArr[i] = pp.Substring(i, 1);
                    }
                    for (int i = 0; i < pu.Length; i++)
                    {
                        ShowUserArr[i] = pu.Substring(i, 1);
                    }
                    for (int i = 0; i < pb.Length; i++)
                    {
                        ShowPlubArr[i] = pb.Substring(i, 1);
                    }
                    for (int i = 0; i < ps.Length; i++)
                    {
                        ShowsysArr[i] = ps.Substring(i, 1);
                    }
                    for (int i = 0; i < pbi.Length; i++)
                    {
                        ShowBIArr[i] = pbi.Substring(i, 1);
                    }

                }
                if (showtype == "Forum")
                {
                    string fpd = deskarr[1];//我的工作台
                    string fb = deskarr[2];//扩展功能
                    string ff = deskarr[3];//教育模块
                    string fbi = deskarr[4];//BI应用

                    #region 全局显示
                    WorkTable = fpd;
                    if (fb.IndexOf('1') == -1)
                        ShowPlub = 0;
                    else
                        ShowPlub = 1;
                    if (ff.IndexOf('1') == -1)
                        ShowForum = 0;
                    else
                        ShowForum = 1;

                    if (fbi.IndexOf('1') == -1)
                        ShowBI = 0;
                    else
                        ShowBI = 1;
                    #endregion


                    for (int i = 0; i < fb.Length; i++)
                    {
                        ShowPlubArr[i] = fb.Substring(i, 1);
                    }
                    for (int i = 0; i < ff.Length; i++)
                    {
                        ShowForumArr[i] = ff.Substring(i, 1);
                    }
                    for (int i = 0; i < fbi.Length; i++)
                    {
                        ShowBIArr[i] = fbi.Substring(i, 1);
                    }

                }
                if (showtype == "OA")
                {
                    string od = deskarr[1];//我的工作台
                    string ou = deskarr[2];//用户社区
                    string obi = deskarr[3];//BI应用
                    #region 全局显示
                    WorkTable = od;
                    if (ou.IndexOf('1') == -1)
                        ShowUser = 0;
                    else
                        ShowUser = 1;
                    if (obi.IndexOf('1') == -1)
                        ShowBI = 0;
                    else
                        ShowBI = 1;
                    #endregion

                    for (int i = 0; i < ou.Length; i++)
                    {
                        ShowUserArr[i] = ou.Substring(i, 1);
                    }
                    for (int i = 0; i < obi.Length; i++)
                    {
                        ShowBIArr[i] = obi.Substring(i, 1);
                    }
                }
                if (showtype == "Config")
                {
                    string ccu = deskarr[1];//用户社区
                    string cp = deskarr[2];//扩展功能
                    string ccx = deskarr[3];//系统配置
                    #region 全局显示
                    if (ccu.IndexOf('1') == -1)
                        ShowUser = 0;
                    else
                        ShowUser = 1;

                    if (cp.IndexOf('1') == -1)
                        ShowPlub = 0;
                    else
                        ShowPlub = 1;

                    if (ccx.IndexOf('1') == -1)
                        Showsys = 0;
                    else
                        Showsys = 1;
                    #endregion
                    for (int i = 0; i < ccu.Length; i++)
                    {
                        ShowUserArr[i] = ccu.Substring(i, 1);
                    }
                    for (int i = 0; i < cp.Length; i++)
                    {
                        ShowPlubArr[i] = cp.Substring(i, 1);
                    }
                    for (int i = 0; i < ccx.Length; i++)
                    {
                        ShowsysArr[i] = ccx.Substring(i, 1);
                    }
                }

                if (showtype == "Safe")
                {
                    string ccu = deskarr[1];//用户社区
                    string cp = deskarr[2];//扩展功能
                    string ccx = deskarr[3];//系统配置

                    #region 全局显示
                    if (ccu.IndexOf('1') == -1)
                        ShowUser = 0;
                    else
                        ShowUser = 1;

                    if (cp.IndexOf('1') == -1)
                        ShowPlub = 0;
                    else
                        ShowPlub = 1;

                    if (ccx.IndexOf('1') == -1)
                        Showsys = 0;
                    else
                        Showsys = 1;
                    #endregion
                    for (int i = 0; i < ccu.Length; i++)
                    {
                        ShowUserArr[i] = ccu.Substring(i, 1);
                    }
                    for (int i = 0; i < cp.Length; i++)
                    {
                        ShowPlubArr[i] = cp.Substring(i, 1);
                    }
                    for (int i = 0; i < ccx.Length; i++)
                    {
                        ShowsysArr[i] = ccx.Substring(i, 1);
                    }
                }

                Response.Write("</script>");
            }
        }        
    %>
</head>
<body id="Indexbody" style="overflow: hidden; height: 100%; width: 100%" runat="server">
    <%
        if (ConfigurationManager.AppSettings["ShowedAD"].ToString() == "false" || Request.QueryString["ShowConfig"] == "true")
        { %>
    <div id="wbg">
    </div>
    <div id="img">
        <a href="javascript:void(0);" onclick="document.getElementById('wbg').style.display='none';document.getElementById('img').style.display='none'"
            style="color: #535353; font-family: Arial, Helvetica, sans-serif; font-size: 14px;
            line-height: 150%; position: absolute; z-index: 800; display: block; right: 16px;
            top: 14px; height: 20px; width: 60px; font-size: 14px; text-align: center; cursor: pointer;
            color: #7D7D7D;">关闭</a>
        <div id="oDIV1" style="border: 1px solid #014995; background-color: #FFFFFF; width: 800px;
            height: 500px">
            <form action="" method="get" name="form1">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                <tr>
                    <td height="41px">
                    </td>
                </tr>
                <tr>
                    <td height="41px">
                    </td>
                </tr>
                <tr>
                    <td height="422px" valign="top">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                            <tr>
                                <td height="24" style="background-color: #2177c2; font-size: 14px; font-weight: bold;
                                    color: #FFF">
                                    &nbsp;第一步：选择场景
                                </td>
                            </tr>
                            <tr>
                                <td height="24">
                                    <input name="Radio1" id="Allradio" type="radio" value="1" checked style="display: none">
                                    <input name="Radio1" id="Contentradio" type="radio" value="1" style="display: none" />
                                    <input name="Radio1" id="Shopradio" type="radio" value="1" style="display: none" />
                                    <input name="Radio1" id="Pageradio" type="radio" value="1" style="display: none" />
                                    <input name="Radio1" id="Forumradio" type="radio" value="1" style="display: none" />
                                    <input name="Radio1" id="OAradio" type="radio" value="1" style="display: none" />
                                    <input name="Radio1" id="Configradio" type="radio" style="display: none" />
                                    <input name="Radio1" id="Saferadio" type="radio" style="display: none" />
                                    <table width="100%" border="0" cellspacing="10" cellpadding="0">
                                        <tr>
                                            <td align="center" valign="middle">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                                                    <tr>
                                                        <td align="center" valign="middle">
                                                            <img id="AllIco" src="../App_Themes/AdminDefaultTheme/images/ControlPanel/AllIco/Show1.png"
                                                                onclick="SelectConfig(this.id)" title="全部显示" style="cursor: pointer">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="middle" style="line-height: 30px">
                                                            全部显示
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td align="center" valign="middle">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                                                    <tr>
                                                        <td align="center" valign="middle">
                                                            <img id="ContentIco" src="../App_Themes/AdminDefaultTheme/images/ControlPanel/ContentIco/Show1.png"
                                                                onclick="SelectConfig(this.id)" title="内容管理" style="cursor: pointer">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="middle" style="line-height: 30px">
                                                            内容管理
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td align="center" valign="middle">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                                                    <tr>
                                                        <td align="center" valign="middle">
                                                            <img id="ShopIco" src="../App_Themes/AdminDefaultTheme/images/ControlPanel/ShopIco/Show1.png"
                                                                onclick="SelectConfig(this.id)" title="商城管理" style="cursor: pointer">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="middle" style="line-height: 30px">
                                                            商城管理
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td align="center" valign="middle">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                                                    <tr>
                                                        <td align="center" valign="middle">
                                                            <img id="PageIco" src="../App_Themes/AdminDefaultTheme/images/ControlPanel/PageIco/Show1.png"
                                                                onclick="SelectConfig(this.id)" title="黄页系统" style="cursor: pointer">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="middle" style="line-height: 30px">
                                                            黄页系统
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" valign="middle">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                                                    <tr>
                                                        <td align="center" valign="middle">
                                                            <img id="ForumIco" src="../App_Themes/AdminDefaultTheme/images/ControlPanel/ForumIco/Show1.png"
                                                                onclick="SelectConfig(this.id)" title="教育模块" style="cursor: pointer">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="middle" style="line-height: 30px">
                                                            教育模块
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td align="center" valign="middle">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                                                    <tr>
                                                        <td align="center" valign="middle">
                                                            <img id="OAIco" src="../App_Themes/AdminDefaultTheme/images/ControlPanel/OAIco/Show1.png"
                                                                onclick="SelectConfig(this.id)" title="智能办公" style="cursor: pointer">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="middle" style="line-height: 30px">
                                                            智能办公
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td align="center" valign="middle">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                                                    <tr>
                                                        <td align="center" valign="middle">
                                                            <img id="ConfigIco" src="../App_Themes/AdminDefaultTheme/images/ControlPanel/ConfigIco/Show1.png"
                                                                onclick="SelectConfig(this.id)" title="配置场景" style="cursor: pointer">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="middle" style="line-height: 30px">
                                                            配置场景
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td align="center" valign="middle">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                                                    <tr>
                                                        <td align="center" valign="middle">
                                                            <img id="SafeIco" src="../App_Themes/AdminDefaultTheme/images/ControlPanel/SafeIco/Show1.png"
                                                                onclick="SelectConfig(this.id)" title="安全维护" style="cursor: pointer">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" valign="middle" style="line-height: 30px">
                                                            安全维护
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="37" align="center" valign="top">
                        <input id="noshow" name="noshow" type="checkbox" checked /><label for="noshow">以后不再显示</label>
                        <input id="Button0" type="button" value="下一步" class="C_input" onclick="Showtools(0);" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
        <div id="oDIV2" style="border: 1px solid #014995; background-color: #FFFFFF; width: 800px;
            height: 500px; display: none">
            <form action="" method="get" name="form1">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                <tr>
                    <td height="41px">
                    </td>
                </tr>
                <tr>
                    <td height="422px" valign="top">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                            <tr>
                                <td height="24" style="background-color: #2177c2; font-size: 14px; font-weight: bold;
                                    color: #FFF">
                                    &nbsp;第二步：场景配置<span id="ScanName"></span>
                                </td>
                            </tr>
                            <tr>
                                <td height="24">
                                    <table style="width: 100%; display: none" id="AllTable">
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;内容管理
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="c1" type="checkbox" checked />我的工作台
                                                    <input id="c2" type="checkbox" checked />内容管理
                                                    <input id="c3" type="checkbox" checked />用户社区
                                                    <input id="c4" type="checkbox" checked />扩展功能
                                                    <input id="c5" type="checkbox" checked />系统配置
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;商城管理
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="s1" type="checkbox" checked />我的工作台
                                                    <input id="s2" type="checkbox" checked />商城管理
                                                    <input id="s3" type="checkbox" checked />用户社区
                                                    <input id="s4" type="checkbox" checked />扩展功能
                                                    <input id="s5" type="checkbox" checked />系统配置
                                                    <input id="s6" type="checkbox" checked />BI应用
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;黄页系统
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="p1" type="checkbox" checked />我的工作台
                                                    <input id="p2" type="checkbox" checked />企业黄页
                                                    <input id="p3" type="checkbox" checked />用户社区
                                                    <input id="p4" type="checkbox" checked />扩展功能
                                                    <input id="p5" type="checkbox" checked />系统配置
                                                    <input id="p6" type="checkbox" checked />BI应用
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;教育模块
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="f1" type="checkbox" checked />我的工作台
                                                    <input id="f2" type="checkbox" checked />扩展功能
                                                    <input id="f3" type="checkbox" checked />教育模块
                                                    <input id="f4" type="checkbox" checked />BI应用
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;智能办公
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="o1" type="checkbox" checked />我的工作台
                                                    <input id="o2" type="checkbox" checked />用户社区
                                                    <input id="o3" type="checkbox" checked />BI应用
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;配置场景
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="d1" type="checkbox" checked />用户社区
                                                    <input id="d2" type="checkbox" checked />扩展功能
                                                    <input id="d3" type="checkbox" checked />系统配置
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table width="100%" border="0" cellspacing="10" cellpadding="0" style="display: none"
                                        id="ContentShow">
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;我的工作台
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="cd1" type="checkbox" checked />我的工作台
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;内容管理
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="cn1" name="cContent" type="checkbox" checked />按栏目管理信息
                                                    <input id="cn2" name="cContent" type="checkbox" checked />按专题管理信息
                                                    <input id="cn3" name="cContent" type="checkbox" checked />生成发布
                                                    <input id="cn4" name="cContent" type="checkbox" checked />评论管理
                                                    <input id="cn5" name="cContent" type="checkbox" checked />互动模块
                                                    <input id="cn6" name="cContent" type="checkbox" checked />信息采集
                                                    <input id="cn7" name="cContent" type="checkbox" checked />打印输出
                                                    <input id="cn8" name="cContent" type="checkbox" checked />回收站<br />
                                                    <input id="cn9" name="cContent" type="checkbox" checked />内容参数 &nbsp;&nbsp;
                                                    <input id="cn10" name="cContent" type="checkbox" checked />WAP管理
                                                 
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;用户管理
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="cu1" name="cUser" type="checkbox" checked />会员管理
                                                    <input id="cu2" name="cUser" type="checkbox" checked />管理员管理
                                                    <input id="cu3" name="cUser" type="checkbox" checked />用户角色
                                                    <input id="cu4" name="cUser" type="checkbox" checked />信息发送
                                                    <input id="cu5" name="cUser" type="checkbox" checked />订阅中心
                                                    <input id="cu6" name="cUser" type="checkbox" checked />人才招聘
                                                    <input id="cu7" name="cUser" type="checkbox" checked />社区(SNS)模块
                                                    <input id="cu8" name="cUser" type="checkbox" checked />微博管理
                                                    <input id="cu9" name="cUser" type="checkbox" checked />3D地带<br />
                                                    &nbsp;&nbsp;<input id="cu10" name="cUser" type="checkbox" checked />Nite视频面试管理
                                                    <input id="cu11" name="cUser" type="checkbox" checked />多人视频管理
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;扩展功能
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="ck1" name="cPlub" type="checkbox" checked />广告管理
                                                    <input id="ck2" name="cPlub" type="checkbox" checked />访问统计
                                                    <input id="ck3" name="cPlub" type="checkbox" checked />日志管理
                                                    <input id="ck4" name="cPlub" type="checkbox" checked />问卷调查和投票
                                                    <input id="ck5" name="cPlub" type="checkbox" checked />留言管理
                                                    <input id="ck6" name="cPlub" type="checkbox" checked />文件管理
                                                    <input id="ck7" name="cPlub" type="checkbox" checked />数据字典管理
                                                    <input id="ck8" name="cPlub" type="checkbox" checked />其他管理<br />
                                                    <input id="ck9" name="cPlub" type="checkbox" checked />其他功能
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;系统配置
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="cx1" name="cSytem" type="checkbox" checked />网站配置
                                                    <input id="cx2" name="cSytem" type="checkbox" checked />模型管理
                                                    <input id="cx3" name="cSytem" type="checkbox" checked />节点管理
                                                    <input id="cx4" name="cSytem" type="checkbox" checked />工作流配置
                                                    <input id="cx5" name="cSytem" type="checkbox" checked />流程管理
                                                    <input id="cx6" name="cSytem" type="checkbox" checked />专题管理
                                                    <input id="cx7" name="cSytem" type="checkbox" checked />模板风格
                                                    <input id="cx8" name="cSytem" type="checkbox" checked />标签管理
                                                    <input id="cx9" name="cSytem" type="checkbox" checked />在线支付平台
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table width="100%" border="0" cellspacing="10" cellpadding="0" style="display: none"
                                        id="ShopShow">
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;我的工作台
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="sd1" type="checkbox" checked />我的工作台
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;商城管理
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="ss1" name="Shop" type="checkbox" checked />商品管理
                                                    <input id="ss2" name="Shop" type="checkbox" checked />库存管理
                                                    <input id="ss3" name="Shop" type="checkbox" checked />购物订单
                                                    <input id="ss5" name="Shop" type="checkbox" checked />明细记录
                                                    <input id="ss6" name="Shop" type="checkbox" checked />销售统计
                                                    <input id="ss7" name="Shop" type="checkbox" checked />促销优惠
                                                    <input id="ss9" name="Shop" type="checkbox" checked />加盟商管理<br />
                                                    &nbsp;&nbsp;<input id="ss10" name="Shop" type="checkbox" checked />商城回收站
                                                    <input id="ss11" name="Shop" type="checkbox" checked />店铺管理
                                                    <input id="ss12" name="Shop" type="checkbox" checked />礼品管理
                                                    <input id="ss13" name="Shop" type="checkbox" checked />竞拍管理
                                                    <input id="ss14" name="Shop" type="checkbox" checked />返利管理
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;用户管理
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="su1" name="sUser" type="checkbox" checked />会员管理
                                                    <input id="su2" name="sUser" type="checkbox" checked />管理员管理
                                                    <input id="su3" name="sUser" type="checkbox" checked />用户角色
                                                    <input id="su4" name="sUser" type="checkbox" checked />信息发送
                                                    <input id="su5" name="sUser" type="checkbox" checked />订阅中心
                                                    <input id="su6" name="sUser" type="checkbox" checked />人才招聘
                                                    <input id="su7" name="sUser" type="checkbox" checked />社区(SNS)模块
                                                    <input id="su8" name="sUser" type="checkbox" checked />微博管理
                                                    <input id="su9" name="sUser" type="checkbox" checked />3D地带<br />
                                                    &nbsp;&nbsp;<input id="su10" name="sUser" type="checkbox" checked />Nite视频面试管理
                                                    <input id="su11" name="sUser" type="checkbox" checked />多人视频管理
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;扩展功能
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="sk1" name="sPlub" type="checkbox" checked />广告管理
                                                    <input id="sk2" name="sPlub" type="checkbox" checked />访问统计
                                                    <input id="sk3" name="sPlub" type="checkbox" checked />日志管理
                                                    <input id="sk4" name="sPlub" type="checkbox" checked />问卷调查和投票
                                                    <input id="sk5" name="sPlub" type="checkbox" checked />留言管理
                                                    <input id="sk6" name="sPlub" type="checkbox" checked />文件管理
                                                    <input id="sk7" name="sPlub" type="checkbox" checked />数据字典
                                                    <input id="sk8" name="sPlub" type="checkbox" checked />其他管理<br />
                                                    <input id="sk9" name="sPlub" type="checkbox" checked />其他功能
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;系统配置
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="sx1" name="sSystem" type="checkbox" checked />网站配置
                                                    <input id="sx2" name="sSystem" type="checkbox" checked />模型管理
                                                    <input id="sx3" name="sSystem" type="checkbox" checked />节点管理
                                                    <input id="sx4" name="sSystem" type="checkbox" checked />工作流配置
                                                    <input id="sx5" name="sSystem" type="checkbox" checked />流程管理
                                                    <input id="sx6" name="sSystem" type="checkbox" checked />专题管理
                                                    <input id="sx7" name="sSystem" type="checkbox" checked />模板风格
                                                    <input id="sx8" name="sSystem" type="checkbox" checked />标签管理
                                                    <input id="sx9" name="sSystem" type="checkbox" checked />在线支付平台管理
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;BI应用
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="sbi1" name="sBI" type="checkbox" checked />项目管理
                                                    <input id="sbi2" name="sBI" type="checkbox" checked />CRM管理
                                                    <input id="sbi3" name="sBI" type="checkbox" checked />有问必答
                                                    <input id="sbi4" name="sBI" type="checkbox" checked />选号系统
                                                    <input id="sbi5" name="sBI" type="checkbox" checked />客服通
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table width="100%" border="0" cellspacing="10" cellpadding="0" style="display: none"
                                        id="PageShow">
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;我的工作台
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="pd1" type="checkbox" checked />我的工作台
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;企业黄页
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="pp1" name="pPage" type="checkbox" checked />黄页申请设置
                                                    <input id="pp2" name="pPage" type="checkbox" checked />黄页审核与管理
                                                    <input id="pp3" name="pPage" type="checkbox" checked />黄页用户栏目管理
                                                    <input id="pp4" name="pPage" type="checkbox" checked />黄页内容管理
                                                    <input id="pp5" name="pPage" type="checkbox" checked />黄页模型管理
                                                    <input id="pp6" name="pPage" type="checkbox" checked />黄页样式管理
                                                    <input id="pp7" name="pPage" type="checkbox" checked />黄页风格管理
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;用户管理
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="pu1" name="pUser" type="checkbox" checked />会员管理
                                                    <input id="pu2" name="pUser" type="checkbox" checked />管理员管理
                                                    <input id="pu3" name="pUser" type="checkbox" checked />用户角色
                                                    <input id="pu4" name="pUser" type="checkbox" checked />信息发送
                                                    <input id="pu5" name="pUser" type="checkbox" checked />订阅中心
                                                    <input id="pu6" name="pUser" type="checkbox" checked />人才招聘
                                                    <input id="pu7" name="pUser" type="checkbox" checked />社区(SNS)模块
                                                    <input id="pu8" name="pUser" type="checkbox" checked />微博管理
                                                    <input id="pu9" name="pUser" type="checkbox" checked />3D地带<br />
                                                    &nbsp;&nbsp;<input id="pu10" name="pUser" type="checkbox" checked />Nite视频面试管理
                                                    <input id="pu11" name="pUser" type="checkbox" checked />多人视频管理
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;扩展功能
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="pb1" name="pPlub" type="checkbox" checked />广告管理 
                                                    <input id="pb2" name="pPlub" type="checkbox" checked />访问统计
                                                    <input id="pb3" name="pPlub" type="checkbox" checked />日志管理
                                                    <input id="pb4" name="pPlub" type="checkbox" checked />问卷调查和投票
                                                    <input id="pb5" name="pPlub" type="checkbox" checked />留言管理
                                                    <input id="pb6" name="pPlub" type="checkbox" checked />文件管理
                                                    <input id="pb7" name="pPlub" type="checkbox" checked />数据字典
                                                    <input id="pb8" name="pPlub" type="checkbox" checked />其他管理<br />
                                                    <input id="pb9" name="pPlub" type="checkbox" checked />其他功能
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;系统配置
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="ps1" name="pSystem" type="checkbox" checked />网站配置
                                                    <input id="ps2" name="pSystem" type="checkbox" checked />模型管理
                                                    <input id="ps3" name="pSystem" type="checkbox" checked />节点管理
                                                    <input id="ps4" name="pSystem" type="checkbox" checked />工作流配置
                                                    <input id="ps5" name="pSystem" type="checkbox" checked />流程管理
                                                    <input id="ps6" name="pSystem" type="checkbox" checked />专题管理
                                                    <input id="ps7" name="pSystem" type="checkbox" checked />模板风格
                                                    <input id="ps8" name="pSystem" type="checkbox" checked />标签管理
                                                    <input id="ps9" name="pSystem" type="checkbox" checked />在线支付平台
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;BI应用
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="pbi1" name="pBI" type="checkbox" checked />项目管理
                                                    <input id="pbi2" name="pBI" type="checkbox" checked />CRM管理
                                                    <input id="pbi3" name="pBI" type="checkbox" checked />有问必答
                                                    <input id="pbi4" name="pBI" type="checkbox" checked />选号系统
                                                    <input id="pbi5" name="pBI" type="checkbox" checked />客服通
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table width="100%" border="0" cellspacing="10" cellpadding="0" style="display: none"
                                        id="ForumShow">
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;我的工作台
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="fpd1" type="checkbox" checked />我的工作台
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;扩展功能
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="fb1" name="fPlub" type="checkbox" checked />广告管理 
                                                    <input id="fb2" name="fPlub" type="checkbox" checked />访问统计
                                                    <input id="fb3" name="fPlub" type="checkbox" checked />日志管理
                                                    <input id="fb4" name="fPlub" type="checkbox" checked />问卷调查和投票
                                                    <input id="fb5" name="fPlub" type="checkbox" checked />留言管理
                                                    <input id="fb6" name="fPlub" type="checkbox" checked />文件管理
                                                    <input id="fb7" name="fPlub" type="checkbox" checked />数据字典管理
                                                    <input id="fb8" name="fPlub" type="checkbox" checked />其他管理<br />
                                                    <input id="fb9" name="fPlub" type="checkbox" checked />其他功能
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;教育模块
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="ff1" name="fForum" type="checkbox" checked />组卷管理
                                                    <input id="ff2" name="fForum" type="checkbox" checked />考试管理
                                                    <input id="ff3" name="fForum" type="checkbox" checked />班级管理
                                                    <input id="ff4" name="fForum" type="checkbox" checked />学员管理
                                                    <input id="ff5" name="fForum" type="checkbox" checked />培训资源库
                                                    <input id="ff6" name="fForum" type="checkbox" checked />财务管理
                                                    <input id="ff7" name="fForum" type="checkbox" checked />考勤管理
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;BI应用
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="fbi1" name="fBI" type="checkbox" checked />项目管理
                                                    <input id="fbi2" name="fBI" type="checkbox" checked />CRM管理
                                                    <input id="fbi3" name="fBI" type="checkbox" checked />有问必答
                                                    <input id="fbi4" name="fBI" type="checkbox" checked />选号系统
                                                    <input id="fbi5" name="fBI" type="checkbox" checked />客服通
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table width="100%" border="0" cellspacing="10" cellpadding="0" style="display: none"
                                        id="OAShow">
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;我的工作台
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="od1" type="checkbox" checked />我的工作台
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;用户管理
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="ou1" name="oUser" type="checkbox" checked />会员管理
                                                    <input id="ou2" name="oUser" type="checkbox" checked />管理员管理
                                                    <input id="ou3" name="oUser" type="checkbox" checked />用户角色
                                                    <input id="ou4" name="oUser" type="checkbox" checked />信息发送
                                                    <input id="ou5" name="oUser" type="checkbox" checked />订阅中心
                                                    <input id="ou6" name="oUser" type="checkbox" checked />人才招聘
                                                    <input id="ou7" name="oUser" type="checkbox" checked />社区(SNS)模块
                                                    <input id="ou8" name="oUser" type="checkbox" checked />微博管理
                                                    <input id="ou9" name="oUser" type="checkbox" checked />3D地带<br />
                                                    &nbsp;&nbsp;<input id="ou10" name="oUser" type="checkbox" checked />Nite视频面试管理
                                                    <input id="ou11" name="oUser" type="checkbox" checked />多人视频管理
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;BI应用
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="obi1" name="oBI" type="checkbox" checked />项目管理
                                                    <input id="obi2" name="oBI" type="checkbox" checked />CRM管理
                                                    <input id="obi3" name="oBI" type="checkbox" checked />有问必答
                                                    <input id="obi4" name="oBI" type="checkbox" checked />选号系统
                                                    <input id="obi5" name="oBI" type="checkbox" checked />客服通
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table width="100%" border="0" cellspacing="10" cellpadding="0" style="display: none"
                                        id="ConfigShow">
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;用户管理
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="ccu1" name="ccUser" type="checkbox" checked />会员管理
                                                    <input id="ccu2" name="ccUser" type="checkbox" checked />管理员管理
                                                    <input id="ccu3" name="ccUser" type="checkbox" checked />用户角色
                                                    <input id="ccu4" name="ccUser" type="checkbox" checked />信息发送
                                                    <input id="ccu5" name="ccUser" type="checkbox" checked />订阅中心
                                                    <input id="ccu6" name="ccUser" type="checkbox" checked />人才招聘
                                                    <input id="ccu7" name="ccUser" type="checkbox" checked />社区(SNS)模块
                                                    <input id="ccu8" name="ccUser" type="checkbox" checked />微博管理
                                                    <input id="ccu9" name="ccUser" type="checkbox" checked />3D地带<br />
                                                    &nbsp;&nbsp;<input id="ccu10" name="ccUser" type="checkbox" checked />Nite视频面试管理
                                                    <input id="ccu11" name="ccUser" type="checkbox" checked />多人视频管理
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;扩展功能
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="cp1" name="cPlub" type="checkbox" checked />广告管理 
                                                    <input id="cp2" name="cPlub" type="checkbox" checked />访问统计
                                                    <input id="cp3" name="cPlub" type="checkbox" checked />日志管理
                                                    <input id="cp4" name="cPlub" type="checkbox" checked />问卷调查和投票
                                                    <input id="cp5" name="cPlub" type="checkbox" checked />留言管理
                                                    <input id="cp6" name="cPlub" type="checkbox" checked />文件管理
                                                    <input id="cp7" name="cPlub" type="checkbox" checked />数据字典
                                                    <input id="cp8" name="cPlub" type="checkbox" checked />其他管理<br />
                                                    <input id="cp9" name="cPlub" type="checkbox" checked />其他功能
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;系统配置
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="ccx1" name="ccSystem" type="checkbox" checked />网站配置
                                                    <input id="ccx2" name="ccSystem" type="checkbox" checked />模型管理
                                                    <input id="ccx3" name="ccSystem" type="checkbox" checked />节点管理
                                                    <input id="ccx4" name="ccSystem" type="checkbox" checked />工作流配置
                                                    <input id="ccx5" name="ccSystem" type="checkbox" checked />流程管理
                                                    <input id="ccx6" name="ccSystem" type="checkbox" checked />专题管理
                                                    <input id="ccx7" name="ccSystem" type="checkbox" checked />模板风格
                                                    <input id="ccx8" name="ccSystem" type="checkbox" checked />标签管理
                                                    <input id="ccx9" name="ccSystem" type="checkbox" checked />在线支付平台
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <table width="100%" border="0" cellspacing="10" cellpadding="0" style="display: none"
                                        id="SafeShow">
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;用户管理
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="Sacu1" name="SacUser" type="checkbox" checked />会员管理
                                                    <input id="Sacu2" name="SacUser" type="checkbox" checked />管理员管理
                                                    <input id="Sacu3" name="SacUser" type="checkbox" checked />用户角色
                                                    <input id="Sacu4" name="SacUser" type="checkbox" checked />信息发送
                                                    <input id="Sacu5" name="SacUser" type="checkbox" checked />订阅中心
                                                    <input id="Sacu6" name="SacUser" type="checkbox" checked />人才招聘
                                                    <input id="Sacu7" name="SacUser" type="checkbox" checked />社区(SNS)模块
                                                    <input id="Sacu8" name="SacUser" type="checkbox" checked />微博管理
                                                    <input id="Sacu9" name="SacUser" type="checkbox" checked />3D地带<br />
                                                    &nbsp;&nbsp;<input id="Sacu10" name="SacUser" type="checkbox" checked />Nite视频面试管理
                                                    <input id="Sacu11" name="SacUser" type="checkbox" checked />多人视频管理
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;扩展功能
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="sap1" name="SaPlub" type="checkbox" checked />广告管理
                                                    <input id="sap2" name="SaPlub" type="checkbox" checked />访问统计
                                                    <input id="sap3" name="SaPlub" type="checkbox" checked />日志管理
                                                    <input id="sap4" name="SaPlub" type="checkbox" checked />问卷调查和投票
                                                    <input id="sap5" name="SaPlub" type="checkbox" checked />留言管理
                                                    <input id="sap6" name="SaPlub" type="checkbox" checked />文件管理
                                                    <input id="sap7" name="SaPlub" type="checkbox" checked />数据字典
                                                    <input id="sap8" name="SaPlub" type="checkbox" checked />其他管理<br />
                                                    <input id="sap9" name="SaPlub" type="checkbox" checked />其他功能
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tbody>
                                            <tr>
                                                <td height="24" style="background-color: #E8F4FF; font-size: 12px; font-weight: bold">
                                                    &nbsp;系统配置
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="24" style="font-size: 12px">
                                                    &nbsp;
                                                    <input id="sacx1" name="sacSystem" type="checkbox" checked />网站配置
                                                    <input id="sacx2" name="sacSystem" type="checkbox" checked />模型管理
                                                    <input id="sacx3" name="sacSystem" type="checkbox" checked />节点管理
                                                    <input id="sacx4" name="sacSystem" type="checkbox" checked />工作流配置
                                                    <input id="sacx5" name="sacSystem" type="checkbox" checked />流程管理
                                                    <input id="sacx6" name="sacSystem" type="checkbox" checked />专题管理
                                                    <input id="sacx7" name="sacSystem" type="checkbox" checked />模板风格
                                                    <input id="sacx8" name="sacSystem" type="checkbox" checked />标签管理
                                                    <input id="sacx9" name="sacSystem" type="checkbox" checked />在线支付平台
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="37" align="center" valign="top">
                        <input id="noshow2" name="noshow" type="checkbox" checked /><label for="noshow">以后不再显示</label>
                        <input id="Button2" type="button" value="上一步" class="C_input" onclick="Showtoolsup(1)" />
                        <input id="Button3" type="button" value="保存配置" class="C_input" onclick="Showtools(1)" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </div>
    <%} %>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="3" style="height: 102px">
                <div id="content" style="text-align: center">
                    <ul id="ChannelMenuItems">
                        <%
                            if (WorkTable == "1")
                            {    
                        %>
                        <li id="Main_1" class="Main_2" onclick="ShowHideLayer(1,0);" title='我的工作台'>我的工作台</li>
                        <%
                            }

                            if (showContent == 1)
                            {
                        %>
                        <li id="Main_2" class="Main_1" onclick="ShowHideLayer(2,0);ShowMainsnew('Content/NodeTree.aspx','Content/ContentManage.aspx')"
                            title='内容管理'>内容管理</li>
                        <%
                            }

                            if (ShowShop == 1)
                            {
                        %>
                        <li id="Main_4" class="Main_1" onclick="ShowHideLayer(4,0);ShowMainsnew('Shop/ShopNodeTree.aspx','Shop/ProductManage.aspx')"
                            title='商城管理'>商城管理</li>
                        <%
                            }

                            if (ShowPage == 1)
                            {
                        %>
                        <li id="Main_6" class="Main_1" onclick="ShowHideLayer(6,0);ShowMainsnew('page/PageregGuide.aspx','page/UserModelManage.aspx')"
                            title='企业黄页'>企业黄页</li>
                        <%   
                            }

                            if (ShowForum == 1)
                            {
                        %>
                        <li id="Main_13" class="Main_1" onclick="ShowHideLayer(13,0);ShowMainsnew('Exam/QuestionGuide.aspx','Exam/QuestionManage.aspx')"
                            title="教育模块">教育模块</li>
                        <%}
                            if (ShowUser == 1)
                            {
                        %>
                        <li id="Main_3" class="Main_1" onclick="ShowHideLayer(3,0);ShowMainsnew('User/UserGuide.aspx','User/UserManage.aspx')"
                            title='用户管理'>用户管理</li>
                        <%
                            }

                            if (ShowPlub == 1)
                            {
                        %>
                        <li id="Main_9" class="Main_1" onclick="ShowHideLayer(9,0);ShowMainsnew('Plus/ADGuide.aspx','Plus/ADZoneManage.aspx')"
                            title='扩展功能'>扩展功能</li>
                        <%
                            }

                            if (Showsys == 1)    
                        %>
                        <li id="Main_8" class="Main_1" onclick="ShowHideLayer(8,0);ShowMainsnew('Config/ConfigGuide.aspx','Config/SiteInfo.aspx')"
                            title='系统配置'>系统配置</li>
                        <%
                            if (showtype == "All")
                            {
                        %>
                        <%=SiteServer%>
                        <%
                            }
                            if (ShowBI == 1)
                            {
                        %>
                        <li id="Main_5" class="Main_1" onclick="ShowHideLayer(5,0);ShowMainsnew('AddOn/ProjectGuide.aspx','AddOn/ProjectIndex.aspx')"
                            title='<%=UC_BIs%>'>
                            <%=UC_BIs%></li>
                        <%} %>
                    </ul>
                    <!-- 子菜单开始 -->
                    <div id="SubMenu">
                        <!-- 我的工作台 -->
                        <div id="Menu_1" style="width: 100%;">
                            <ul>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Profile/QuickLinks.aspx','<%=ManageUrl %>/Profile/Worktable.aspx')">
                                    工作台首页</a></li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Search/SearchGuide2.aspx','<%=ManageUrl %>/Search/SearchFunc.aspx')">
                                    便捷导航</a></li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('','<%=ManageUrl %>/Profile/ModifyPassword.aspx')">
                                    修改密码</a></li>
                                <li><a href="SignOut.aspx"><span class="SignOut">安全退出</span></a></li>
                                <li style="display: none"><a href="javascript:void(0)" title="站长留言" onclick="ShowMainsgourl('','<%=ManageUrl %>/MessageBoard.aspx')">
                                    站长留言</a></li>
                                <li style="float: right; background-image: none">
                                    <form method="GET" id="search" name="search" onsubmit="souched(search.seled.value,search.souchoption.value,search.keyword.value); return false;">
                                    <div style="float: left">
                                        <select id="seled" name="seled" style="margin-top: 1px" onchange="javascript:SelectIndexChange(this.value);">
                                            <option value="Content" selected="selected">查询内容</option>
                                            <option value="Search">功能搜索</option>
                                            <option value="User">查询用户</option>
                                        </select>
                                    </div>
                                    <div style="float: left;">
                                        <select style="margin-top: 1px" id="souchoption" name="souchoption">
                                        </select>
                                    </div>
                                    <div style="float: left;">
                                        <input type="text" id="keyword" name="keyword" title="功能搜索" /><input type="submit"
                                            value="搜 索" class="sbtn" />
                                    </div>
                                    </form>
                                </li>
                            </ul>
                        </div>
                        <!-- 内容管理 -->
                        <div id="Menu_2" style="width: 100%; display: none;">
                            <ul>
                                <%if (showContentArr[0].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/NodeTree.aspx','<%=ManageUrl %>/Content/ContentManage.aspx')">
                                    按栏目管理信息</a></li>
                                <%}
                                  if (showContentArr[1].ToString() == "1")
                                  {%>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/SpecTree.aspx','<%=ManageUrl %>/Content/SpecContent.aspx')">
                                    按专题管理信息</a></li>
                                <%
                                    }       
                                %>
                                <%=sitetype%>
                                <%if (showContentArr[2].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/CreateLink.aspx','<%=ManageUrl %>/Content/CreateHtmlContent.aspx')">
                                    生成发布</a></li>
                                <%}
                                  if (showContentArr[3].ToString() == "1")
                                  {  
                                %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/NodeTree.aspx?t=1','<%=ManageUrl %>/Content/CommentManage.aspx')">
                                    评论管理</a></li>
                                <%
                                    }
                                  if (showContentArr[4].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Pub/PubGuide.aspx','<%=ManageUrl %>/Pub/pubmanage.aspx')"
                                    onmouseover="showmenu(event,'<div class=menuitems><a onclick=open_title(\'pub/pubinfo.aspx\',\'添加互动模块\') href=\'javascript:void(0)\' >添加互动模块</a></div><div class=menuitems><a onclick=open_title(\'pub/pubmanage.aspx\',\'互动模块管理\') href=\'javascript:void(0)\'>互动模块管理</a></div><div class=menuitems><a onclick=open_title(\'pub/pubmanage.aspx\',\'互动信息管理\') href=\'javascript:void(0)\'>互动信息管理</a></div><div class=menuitems><a onclick=open_title(\'pub/pubModel.aspx\',\'互动模型管理\') href=\'javascript:void(0)\'>互动<font color=red>模型</font>管理</a></div><div class=menuitems><a onclick=open_title(\'pub/PubRecycler.aspx\',\'存档管理\') href=\'javascript:void(0)\'>存档管理</a></div>')">
                                    互动模块</a> </li>
                                <%
                                    }
                                  if (showContentArr[5].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/CollectionGuide.aspx','<%=ManageUrl %>/Content/CollectionManage.aspx')"
                                    onmouseover="showmenu(event,'<div class=menuitems><a href=\'javascript:void(0)\' onclick=MDILoadurl(\'<%=ManageUrl %>/Content/CollectionManage.aspx\')>采集项目管理</a></div><div class=menuitems><a href=\'javascript:void(0)\' onclick=MDILoadurl(\'<%=ManageUrl %>/Content/CollectionStep1.aspx\')>添加采集项目</a></div><div class=menuitems><a href=\'javascript:void(0)\' onclick=MDILoadurl(\'<%=ManageUrl %>/Content/CollectionStart.aspx\')>开始采集</a></div><div class=menuitems><a href=\'javascript:void(0)\'>采集进度</a></div><div class=menuitems><a href=\'javascript:void(0)\' onclick=MDILoadurl(\'<%=ManageUrl %>/Content/CollectionList.aspx\')>采集历史记录</a></div>')">
                                    信息采集</a> </li>
                                <%
                                    }
                                  if (showContentArr[6].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/Print_Server.aspx','<%=ManageUrl %>/Content/Print_Type.aspx')">
                                    打印输出</a></li>
                                <%
                                    }
                                  if (showContentArr[7].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/NodeTree.aspx?t=2','<%=ManageUrl %>/Content/ContentRecycle.aspx')">
                                    回收站</a></li>
                                <%}
                                  if (showContentArr[8].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('AddOn/OthersGuide.aspx','<%=ManageUrl %>/AddOn/SourceManage.aspx')">
                                    内容参数</a></li>
                                <%}
                                         if (showContentArr[8].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/HitsGuide.aspx','<%=ManageUrl %>/Content/HitsList.aspx')">
                                    访问评价</a></li>
                                <%}
                                  if (showContentArr[9].ToString() == "1")
                                  {%>
                                <li><a href="javascript:void(0);" onclick="ShowHideLayer(12,0)" style="font-weight: bold">
                                    WAP管理</a></li>
                                <%}
                                  if (showContentArr[10].ToString() == "1")
                                  {%>
                                     <%}%>
                                   
                            </ul>
                        </div>
                        <!-- wap管理 -->
                        <div id="Menu_12" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('WAP/WapTree.aspx?t=0','<%=ManageUrl %>/WAP/manageOrder.aspx?nodeid=0')">
                                    WAP栏目排版设置</a></li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('WAP/WapTree.aspx?t=1','<%=ManageUrl %>/WAP/WapArticleManage.aspx?nodeid=0')">
                                    WAP信息添加</a></li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('WAP/WapConfig.aspx','<%=ManageUrl %>/WAP/WapNodeManage.aspx')">
                                    WAP添加栏目</a></li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('WAP/Other/WapForumGuide.aspx','<%=ManageUrl %>/WAP/Other/WapForum_Class.aspx')">
                                    其他信息</a></li>
                                <li><a href="javascript:void(0);" onclick="ShowHideLayer(2,0)" style="font-weight: bold">
                                    返回菜单</a> </li>
                            </ul>
                        </div>
                        <!-- 用户社区 -->
                        <div id="Menu_3" style="width: 100%; display: none;">
                            <ul>
                                <%
                                    if (ShowUserArr[0].ToString() == "1")
                                    { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('User/UserGuide.aspx','<%=ManageUrl %>/User/UserManage.aspx')">
                                    会员管理</a></li>
                                <%
                                    }
                                    if (ShowUserArr[1].ToString() == "1")
                                    { 
                                %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('User/AdminLink.aspx','<%=ManageUrl %>/User/AdminManage.aspx')">
                                    管理员管理</a></li>
                                <%}
                                    if (ShowUserArr[2].ToString() == "1")
                                    { %>
                                <%=SiteUser%>
                                <% 
                                    } if (ShowUserArr[3].ToString() == "1")
                                    {%>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('User/MessageLink.aspx','<%=ManageUrl %>/User/Message.aspx')">
                                    信息发送</a> </li>
                                <%}
                                    if (ShowUserArr[4].ToString() == "1")
                                    { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('User/MailGuide.aspx','<%=ManageUrl %>/User/RegValidateMail.aspx')"
                                    onmouseover="showmenu(event,'<div class=menuitems><a href=\'javascript:void(0)\' onclick=MDILoadurl(\'<%=ManageUrl %>/User/EidtMailModel.aspx  \')>邮件模板编辑</a></div><div class=menuitems><a href=\'javascript:void(0)\' onclick=MDILoadurl(\'<%=ManageUrl %>/User/RegValidateMail.aspx\')>邮件内容管理</a></div><div class=menuitems><a href=\'javascript:void(0)\' onclick=MDILoadurl(\'<%=ManageUrl %>/User/SendMailList.aspx\')>发送邮件管理</a></div><div class=menuitems><a href=\'javascript:void(0)\' onclick=MDILoadurl(\'<%=ManageUrl %>/User/MailListManage.aspx\')>邮件列表管理</a></div><div class=menuitems><a href=\'javascript:void(0)\' onclick=MDILoadurl(\'<%=ManageUrl %>/User/SubscribeTypeList.aspx\')>订阅管理</a></div><div class=menuitems><a href=\'javascript:void(0)\' onclick=MDILoadurl(\'<%=ManageUrl %>/User/AddMail.aspx\')>邮件发送</a></div><div class=menuitems><a href=\'javascript:void(0)\' onclick=MDILoadurl(\'<%=ManageUrl %>/User/MailIdiographList.aspx\')>签名管理</a></div>')">
                                    订阅中心</a></li>
                                <%}
                                    if (ShowUserArr[5].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('User/JobsGuide.aspx','<%=ManageUrl %>/User/UserModelManage.aspx')">
                                    人才招聘</a> </li>
                                <%}
                                    if (ShowUserArr[6].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('zone/ModelGuide.aspx','<%=ManageUrl %>/zone/zoneManage.aspx')">
                                    社区(SNS)模块</a> </li>
                                <%}
                                if (ShowUserArr[7].ToString() == "1")
                                {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Microblog/MircGuide.aspx','<%=ManageUrl %>/Microblog/MbUser.aspx')">
                                    微博管理</a> </li>
                                <%}
                                if (ShowUserArr[8].ToString() == "1")
                                {  %>
                                <li><a href="javascript:void(0);" onclick="ShowHideLayer(7,3);ShowMainsgourl('3Dmanage/InfoGuid.aspx','<%=ManageUrl %>/3Dmanage/Infomanage.aspx')">
                                    3D地带</a> </li>
                                <%}
                                if (ShowUserArr[9].ToString() == "1")
                                {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('../CN/nite/Content/NiteGuide.aspx','../CN/nite/Content/NiteHouse.aspx')">
                                    Nite视频面试管理</a></li>
                                <%}
                                if (ShowUserArr[10].ToString() == "1")
                                {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('User/PersonsVideoGuide.aspx','<%=ManageUrl %>/User/VideoRoom.aspx')">
                                    多人视频管理</a></li>
                                <%}
                                %>

                            </ul>
                        </div>
                        <!-- 商城管理 -->
                        <div id="Menu_4" style="width: 100%; display: none;">
                            <ul>
                                <%
                                    if (ShowShopArr[0].ToString() == "1")
                                    { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Shop/ShopNodeTree.aspx','<%=ManageUrl %>/Shop/ProductManage.aspx')">
                                    商品管理</a></li>
                                <%}
                                    if (ShowShopArr[1].ToString() == "1")
                                    {%>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Shop/StockGuid.aspx','<%=ManageUrl %>/Shop/StockManage.aspx')">
                                    库存管理</a></li>
                                <%}
                                    if (ShowShopArr[3].ToString() == "1")
                                    { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Shop/OrderLink.aspx','<%=ManageUrl %>/Shop/OrderList.aspx')">
                                    购物订单</a> </li>
                                <%}
                                    if (ShowShopArr[4].ToString() == "1")
                                    { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Shop/ListGuide.aspx','<%=ManageUrl %>/Shop/BankRollList.aspx')">
                                    明细记录</a> </li>
                                <%}
                                    if (ShowShopArr[5].ToString() == "1")
                                    { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Shop/StatisticLink.aspx','<%=ManageUrl %>/Shop/TotalSale.aspx')">
                                    销售统计</a> </li>
                                <%}
                                if (ShowShopArr[6].ToString() == "1")
                                { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Shop/PromotionGuide.aspx','<%=ManageUrl %>/Shop/PresentProject.aspx')">
                                    促销优惠</a> </li>
                                <%}
                                if (ShowShopArr[8].ToString() == "1")
                                { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Shop/ConfigGuide.aspx','<%=ManageUrl %>/Shop/DeliverType.aspx')">
                                    商城配置</a> </li>
                                <%}
                                        if (ShowShopArr[9].ToString() == "1")
                                        { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Shop/ConfigGuide.aspx','<%=ManageUrl %>/boss/Bosstree.aspx')">
                                    加盟商管理</a> </li>
                                <%}
                                        if (ShowShopArr[10].ToString() == "1")
                                        { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Shop/RecyclerNodeTree.aspx','<%=ManageUrl %>/Shop/ShopRecycler.aspx')">
                                    商城回收站</a> </li>
                                <%}
                                        if (ShowShopArr[11].ToString() == "1")
                                        { %>
                                <li><a href="javascript:void(0);" onclick="ShowHideLayer(11,4)" onmouseover="showmenu(event,'<div class=menuitems><a href=javascript:void(0) onclick=MDILoadurl(\'<%=ManageUrl %>/UserShopManage/ApplyStyle.aspx\')>店铺申请设置</a></div><div class=menuitems><a href=javascript:void(0) onclick=MDILoadurl(\'<%=ManageUrl %>/UserShopManage/StoreManage.aspx\')>商家店铺管理</a></div><div class=menuitems><a href=javascript:void(0) onclick=MDILoadurl(\'<%=ManageUrl %>/UserShopManage/StoreStyleManage.aspx\')>商家店铺模板管理</a></div><div class=menuitems><a href=javascript:void(0) onclick=MDILoadurl(\'<%=ManageUrl %>/UserShopManage/ProductManage.aspx\')>商家商品管理</a></div><div class=menuitems><a href=javascript:void(0) onclick=MDILoadurl(\'<%=ManageUrl %>/UserShopManage/ManageModel.aspx\')>商品模型管理</a></div><div class=menuitems><a href=javascript:void(0) onclick=MDILoadurl(\'<%=ManageUrl %>/UserShopManage/ShopinfoManage.aspx\')>店铺配置</a></div>')"
                                    style="font-weight: bold">店铺管理</a> </li>
                                <%}
                                        if (ShowShopArr[12].ToString() == "1")
                                        { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Flex/FlexGuide.aspx','<%=ManageUrl %>/Flex/ClassManage.aspx')">
                                    礼品管理</a></li>
                                <%}
                                        if (ShowShopArr[13].ToString() == "1")
                                        { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Shop/BidManage/CompleteGuid.aspx','<%=ManageUrl %>/Shop/BidManage/BidComplete_Manage.aspx')">
                                    竞拍管理</a></li>
                                <%}
                                        if (ShowShopArr[14].ToString() == "1")
                                        { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Shop/profile/ProfileGuide.aspx','<%=ManageUrl %>/Shop/profile/ProfileManage.aspx')">
                                    返利管理</a></li>
                                <%} %>
                            </ul>
                        </div>
                        <!-- 3D地带 -->
                        <div id="Menu_7" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('3Dmanage/InfoGuid.aspx','<%=ManageUrl %>/3Dmanage/Infomanage.aspx')">
                                    参数配置</a></li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('3Dmanage/AfficheGuid.aspx','<%=ManageUrl %>/3Dmanage/Affiche.aspx')">
                                    公告管理</a> </li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('3Dmanage/UserGuid.aspx','<%=ManageUrl %>/3Dmanage/UserManage.aspx')">
                                    用户社区</a></li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('3Dmanage/boothGuide.aspx','<%=ManageUrl %>/3Dmanage/boothManage.aspx')">
                                    摊位管理</a> </li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('3Dmanage/SceneGuide.aspx','<%=ManageUrl %>/3Dmanage/SceneManage.aspx')">
                                    场景管理</a> </li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('3Dmanage/WareGuide.aspx','<%=ManageUrl %>/3Dmanage/Waremanage.aspx')">
                                    商品管理</a></li>
                                <li><a href="javascript:void(0);" onclick="ShowHideLayer(3,0);ShowMainsgourl('User/AdminLink.aspx','<%=ManageUrl %>/User/AdminManage.aspx')">
                                    返回菜单</a></li>
                            </ul>
                        </div>
                        <!-- SiteServer -->
                        <div id="Menu_10" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('SiteServer/ServerGuid.aspx','<%=ManageUrl %>/SiteServer/APIConfig.aspx')">
                                    主站配置管理</a> </li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('SiteServer/ClinetGuid.aspx','<%=ManageUrl %>/SiteServer/SitesManage.aspx')">
                                    子站管理</a></li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('SiteServer/FGuide.aspx','<%=ManageUrl %>/SiteServer/FManage.aspx')">
                                    共享池管理</a> </li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('SiteServer/FinanceGuide.aspx','<%=ManageUrl %>/SiteServer/Todaydetail.aspx')">
                                    财务管理</a></li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('SiteServer/LogGuid.aspx','<%=ManageUrl %>/SiteServer/LogManage.aspx')">
                                    日志管理</a> </li>
                            </ul>
                        </div>
                        <!-- 项目管理 -->
                        <div id="Menu_5" style="width: 100%; display: none;">
                            <ul>
                                <%if (ShowBIArr[0].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('AddOn/ProjectGuide.aspx','<%=ManageUrl %>/AddOn/ManageProjects.aspx')">
                                    项目管理</a></li>
                                <%}
                                  if (ShowBIArr[1].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('AddCRM/Customer.aspx','<%=ManageUrl %>/AddCRM/CustomerList.aspx?usertype=0')">
                                    CRM管理</a></li>
                                <%}
                                  if (ShowBIArr[2].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('iServer/ServerSite.aspx','<%=ManageUrl %>/iServer/BiServer.aspx?num=-3&strTitle=')">
                                    有问必答</a></li>
                                <%}
                                  if (ShowBIArr[3].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('SelectNum/Sconfig.aspx','<%=ManageUrl %>/SelectNum/NumManage.aspx')">
                                    选号系统</a></li>
                                <%}

                                  if (ShowBIArr[4].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('User/CustomerGuide.aspx','<%=ManageUrl %>/User/ServiceSeat.aspx')"
                                    onmouseover="showmenu(event,'<div class=menuitems><a href=\'javascript:void(0);\' onclick=ShowMainsgourl(\'User/CustomerGuide.aspx\',\'<%=ManageUrl %>/User/ServiceSeat.aspx\')>客服管理</a></div><div class=menuitems><a href=\'javascript:void(0)\' onclick=\'OpenOnline();\'>开启客服</a></div>')">
                                    客服通</a></li>
                                <%} %>
                            </ul>
                        </div>
                        <!-- 企业黄页 -->
                        <div id="Menu_6" style="width: 100%; display: none;">
                            <ul>
                                <%
                                    if (ShowPageArr[0].ToString() == "1")
                                    { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('page/PageregGuide.aspx','<%=ManageUrl %>/page/UserModelManage.aspx')">
                                    黄页申请设置</a></li>
                                <%}
                                    if (ShowPageArr[1].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('page/PageGuide.aspx','<%=ManageUrl %>/page/PageManage.aspx')">
                                    黄页审核与管理</a></li>
                                <%}
                                    if (ShowPageArr[2].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('page/CorporationGuide.aspx','<%=ManageUrl %>/page/PageAudit.aspx')">
                                    黄页用户栏目管理</a></li>
                                <%}
                                    if (ShowPageArr[3].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('page/NodeTree.aspx','<%=ManageUrl %>/page/PageContent.aspx')">
                                    黄页内容管理</a></li>
                                <%} if (ShowPageArr[4].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('page/ModelGuide.aspx','<%=ManageUrl %>/page/PageModelManage.aspx')">
                                    黄页模型管理</a></li>
                                <%}
                                    if (ShowPageArr[5].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('page/PageStyleGuide.aspx','<%=ManageUrl %>/page/PageStyle.aspx')">
                                    黄页样式管理</a></li>
                                <%}
                                    if (ShowPageArr[6].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('page/StyleGuide.aspx','<%=ManageUrl %>/page/StyleManage.aspx')">
                                    黄页风格管理</a></li>
                                <%} %>
                            </ul>
                        </div>
                        <%-- 考试管理--%>
                        <div id="Menu_13" style="width: 100%; display: none;">
                            <ul>
                                <%if (ShowForumArr[1].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Exam/QuestionGuide.aspx','<%=ManageUrl %>/Exam/QuestionManage.aspx')">
                                    考试管理</a></li>
                                <%}
                                  if (ShowForumArr[2].ToString() == "1")
                                  {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Exam/ClassGuide.aspx','<%=ManageUrl %>/Exam/ClassManage.aspx')">
                                    班级管理</a></li>
                                <%}
                                  if (ShowForumArr[3].ToString() == "1")
                                  {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Exam/TrainGuide.aspx','<%=ManageUrl %>/Exam/Audit.aspx')">
                                    学员管理</a></li>
                                <%}
                                  if (ShowForumArr[4].ToString() == "1")
                                  {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Exam/ResourceLibaryGuide.aspx','<%=ManageUrl %>/Exam/ExTeacherManage.aspx')">
                                    培训资源库</a></li>
                                <%}
                                  if (ShowForumArr[5].ToString() == "1")
                                  {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Exam/FinanceGuide.aspx','<%=ManageUrl %>/Exam/FinanceManage.aspx')">
                                    财务管理</a></li>
                                <%}

                                  if (ShowForumArr[6].ToString() == "1")
                                  {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Exam/AttendanceGuide.aspx','<%=ManageUrl %>/Exam/ExAttendance.aspx')">
                                    考勤管理</a></li>
                                <%}

                                  if (ShowForumArr[0].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Question/QuestionGuide.aspx','<%=ManageUrl %>/Question/QuestionManage.aspx')">
                                    组卷管理</a></li>
                                <%}%>
                            </ul>
                        </div>
                        <!-- 店铺管理 -->
                        <div id="Menu_11" style="width: 100%; display: none;">
                            <ul>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('UserShopManage/ApplySetTree.aspx','<%=ManageUrl %>/UserShopManage/ApplyStyle.aspx')">
                                    店铺申请设置</a> </li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('UserShopManage/StoreTree.aspx','<%=ManageUrl %>/UserShopManage/StoreManage.aspx')">
                                    商家店铺管理</a> </li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('UserShopManage/StoreStyleTree.aspx','<%=ManageUrl %>/UserShopManage/StoreStyleManage.aspx')">
                                    商家店铺模板管理</a> </li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('UserShopManage/ShopNodeTree.aspx','<%=ManageUrl %>/UserShopManage/ProductManage.aspx')">
                                    商家商品管理</a> </li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('UserShopManage/TreeModel.aspx','<%=ManageUrl %>/UserShopManage/ManageModel.aspx')">
                                    商品模型管理</a> </li>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('UserShopManage/UspManageGuide.aspx','<%=ManageUrl %>/UserShopManage/ShopinfoManage.aspx')">
                                    店铺配置</a> </li>
                                <li><a href="javascript:void(0);" onclick="ShowHideLayer(4,0)" style="font-weight: bold">
                                    返回菜单</a> </li>
                            </ul>
                        </div>
                        <!-- 系统配置 -->
                        <div id="Menu_8" style="width: 100%; display: none;">
                            <ul>
                                <%
                                    if (ShowsysArr[0].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Config/ConfigGuide.aspx','<%=ManageUrl %>/Config/SiteInfo.aspx')">
                                    网站配置</a></li>
                                <%}
                                    if (ShowsysArr[1].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/ModelGuide.aspx','<%=ManageUrl %>/Content/ModelManage.aspx')">
                                    模型管理</a></li>
                                <%}
                                    if (ShowsysArr[2].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/SetNodeTree.aspx','<%=ManageUrl %>/Content/NodeManage.aspx')">
                                    节点管理</a></li>
                                <%}
                                    if (ShowsysArr[3].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/AuditingLink.aspx','<%=ManageUrl %>/Content/AuditingState.aspx')">
                                    工作流配置</a></li>
                                <%}
                                    if (ShowsysArr[4].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/FlowLink.aspx?type=1','<%=ManageUrl %>/Content/FlowManager.aspx')">
                                    流程管理</a></li>
                                <%}
                                    if (ShowsysArr[5].ToString() == "1")
                                    {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Content/SpecLink.aspx','<%=ManageUrl %>/Content/SpecialManage.aspx')">
                                    专题管理</a></li>
                                <%}
                                if (ShowsysArr[6].ToString() == "1")
                                {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Template/TemplateLink.aspx','<%=ManageUrl %>/Template/TemplateSet.aspx')">
                                    模板风格</a></li>
                                <%}
                                        if (ShowsysArr[7].ToString() == "1")
                                        {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Template/TemplateLink.aspx','<%=ManageUrl %>/Template/LabelManage.aspx')">
                                    标签管理</a></li>
                                <%}
                                        if (ShowsysArr[8].ToString() == "1")
                                        {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('AddOn/PayPlatLink.aspx','<%=ManageUrl %>/AddOn/PayPlatManage.aspx')">
                                    在线支付平台</a></li>
                                <%} %>
                            </ul>
                        </div>
                        <!-- 附件管理 -->
                        <div id="Menu_9" style="width: 100%; display: none;">
                            <ul>
                                <%if (ShowPlubArr[0].ToString() == "1")
                                  {  %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Plus/ADGuide.aspx','<%=ManageUrl %>/Plus/ADZoneManage.aspx')">
                                    广告管理</a></li>

                                <%}
                                  if (ShowPlubArr[1].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Counter/PageLeft.aspx','<%=ManageUrl %>/Counter/Counter.aspx')">
                                    访问统计</a></li>
                                <%}
                                  if (ShowPlubArr[2].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Plus/LogGuide.aspx','<%=ManageUrl %>/Plus/LogManage.aspx')">
                                    日志管理</a></li>
                                <%}
                                  if (ShowPlubArr[3].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Plus/SurveyGuide.aspx','<%=ManageUrl %>/Plus/SurveyManage.aspx')">
                                    问卷调查和投票</a></li>
                                <%}
                                  if (ShowPlubArr[4].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('GuestBook/BbsGuide.aspx','<%=ManageUrl %>/GuestBook/GuestCateMana.aspx')">
                                    留言管理</a></li>
                                <%}
                                  if (ShowPlubArr[5].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('File/FileGuide.aspx','<%=ManageUrl %>/File/UploadFile.aspx')">
                                    文件管理</a></li>
                                <%}
                                  if (ShowPlubArr[6].ToString() == "1")
                                  { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('AddOn/DictionaryGuide.aspx','<%=ManageUrl %>/AddOn/DictionaryManage.aspx')">
                                    数据字典</a></li>
                                <%}
                                        if (ShowPlubArr[7].ToString() == "1")
                                        { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('AddOn/OthersGuide.aspx','<%=ManageUrl %>/AddOn/CorrectManage.aspx')">
                                    其他管理</a></li>
                                <%}

                                        if (ShowPlubArr[8].ToString() == "1")
                                        { %>
                                <li><a href="javascript:void(0);" onclick="ShowMainsgourl('Pub/PubGuide.aspx','<%=ManageUrl %>/Pub/pubmanage.aspx')"
                                    onmouseover="showmenu(event,'<div class=menuitems><a href=\'javascript:void(0);\' onclick=ShowMainsgourl(\'Iplook/IplookGuide.aspx\',\'<%=ManageUrl %>/Iplook/IPManage.aspx\') >IP识别系统</a></div><div class=menuitems><a href=\'javascript:void(0);\' onclick=ShowMainsgourl(\'File/Addlinkname.aspx\',\'<%=ManageUrl %>/File/Addlinkhttp.aspx\')>站内链接</a></div><div class=menuitems><a href=\'javascript:void(0);\' onclick=ShowMainsgourl(\'Search/SearchGuide.aspx\',\'<%=ManageUrl %>/Search/DirectoryManage.aspx\')>全文检索</a></div><div class=menuitems><a href=\'javascript:void(0);\' onclick=ShowMainsgourl(\'AddOn/FileseeGuide.aspx\',\'<%=ManageUrl %>/AddOn/FileseeManage.aspx\')>文件比较</a></div>')">
                                    其他功能</a> </li>
                                <%} %>
                                <!--<li><a href="javascript:void(0);" onclick="ShowMainsgourl('Pub/PubGuide.aspx','Pub/pubmanage.aspx')" onmouseover="showmenu(event,'<div class=menuitems><a href=\'javascript:void(0);\' target=_blank onclick=ShowMainsgourl(\'GuessGame/GuessGameGuide.aspx\',\'GuessGame/GuessGameManage.aspx\') >竞猜游戏管理</a></div><div class=menuitems><a href=\'javascript:void(0);\' target=_blank onclick=ShowMainsgourl(\'Iplook/IplookGuide.aspx\',\'Iplook/IPManage.aspx\') >IP识别系统</a></div><div class=menuitems><a href=\'javascript:void(0);\' onclick=ShowMainsgourl(\'File/Addlinkname.aspx\',\'File/Addlinkhttp.aspx\')>站内链接</a></div><!--<div class=menuitems><a href=\'javascript:void(0);\' onclick=ShowMainsgourl(\'AddOn/OnlineKillGuide.aspx\',\'AddOn/OnlineKillManage.aspx\')>在线查(杀)毒</a></div><div class=menuitems><a href=\'javascript:void(0);\' onclick=ShowMainsgourl(\'Search/SearchGuide.aspx\',\'Search/DirectoryManage.aspx\')>全文检索</a></div><div class=menuitems><div class=menuitems><a href=\'javascript:void(0);\' onclick=ShowMainsgourl(\'AddOn/FileseeGuide.aspx\',\'AddOn/FileseeManage.aspx\')>文件比较</a></div>')">其他功能</a> </li>-->
                                <%--onclick=ShowMainsgourl(\'Iplook/IplookGuide.aspx\',\'Iplook/IPManage.aspx\')--%>
                                <%--<a href=\'javascript:void(0);\' onclick=ShowMainsgourl(\'AddOn/DataGuide.aspx\',\'AddOn/DataManage.aspx\')>数据库管理</a></div> --%>
                            </ul>
                        </div>
                    </div>
                    <!-- 子菜单结束 -->
                    <div id="Announce">
                        <%--<span><a onclick="OpenOnline()" href="javascript:void(0)">在线客服</a></span>--%>
                        <a href="javascript:void(0)" onclick="OpenNewWin('/')" title="网站首页">网站首页</a> |
                        <%= SiteCon%>
                        <a href="?ShowConfig=true" title="场景切换">场景切换</a> | <a href="javascript:void(0)" onclick="OpenNewWin('http://help.zoomla.cn')"
                            title="在线帮助">在线帮助</a> | <a href="SignOut.aspx" target="_top" title="安全退出">安全退出</a><a
                                href="javascript:void(0)" style="cursor: pointer;" title='Alt+Q锁定屏幕' onclick="showWindow(900,460);"><img
                                    src="../App_Themes/AdminDefaultTheme/images/lock_closed.jpg" style="vertical-align: middle;" /></a>
                    </div>
                </div>
            </td>
        </tr>
    </table>
    <table cellpadding="0" cellspacing="0" summary="逐浪官方" class="main">
        <tr>
            <td style="width: 200px">
                <div id="frameLeft" class="t_l" style="left: 0px">
                    <div class="t_l_bor">
                        <div class="t_l_c">
                            <iframe frameborder="0" id="left" name="left" scrolling="auto" src="Profile/QuickLinks.aspx"
                                style="width: 195px; visibility: visible; z-index: 2;" height="100%">浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>
                            <script language="javascript" type="text/javascript">
                                var fState = -1;
                                var maxNum = 200;
                                var minNum = 12;
                                var fDelay = 12;
                                var frameObj = document.getElementById("frameLeft");
                                function leftMenuMove() {
                                    var maxLeft = maxNum - minNum;
                                    var fLeft = parseInt(frameObj.style.left);
                                    fLeft += fDelay * fState;
                                    if (fLeft < (-maxLeft)) { fLeft = -maxLeft; }
                                    if (fLeft > 0) { fLeft = 0; }
                                    if (fLeft <= 0 && fLeft >= (-maxLeft)) {
                                        frameObj.style.left = fLeft + "px";
                                        if (fLeft < 0 && fLeft > (-maxLeft)) {
                                            setTimeout("leftMenuMove();", 5);
                                            return;
                                        }
                                    }
                                    if (fState < 0) {
                                        frameObj.parentNode.style.width = minNum + "px";
                                        onresizeH();
                                    } else {
                                        frameObj.parentNode.style.width = maxNum + "px";
                                        onresizeH();
                                    }
                                    document.getElementById("frameBar").className = (fState < 0) ? "bar_o" : "bar_c";
                                    document.getElementById("frameBar").title = (fState < 0) ? "打开菜单" : "关闭菜单";
                                    fState *= -1;
                                    if (fState < 0) {
                                        document.getElementById("main_right").width = document.body.offsetWidth - document.getElementById("left").offsetWidth - 14;
                                        document.getElementById("left").height = document.body.offsetHeight - 110;
                                    } else {
                                        document.getElementById("main_right").width = document.body.offsetWidth - 21;
                                        document.getElementById("left").height = document.body.offsetHeight - 110;
                                    }
                                }
                                setInterval("loadaction();", 500);

                                function loadaction() {
                                    if (frameObj.parentNode.style.width == minNum + "px") {
                                        document.getElementById("main_right").width = document.body.offsetWidth - 21;
                                        document.getElementById("left").height = document.body.offsetHeight - 110;
                                    }
                                    else {
                                        document.getElementById("main_right").width = document.body.offsetWidth - document.getElementById("left").offsetWidth - 14;
                                        document.getElementById("left").height = document.body.offsetHeight - 110;
                                    }
                                }
                            </script>
                            <div title="关闭菜单" id="frameBar" class="bar_c" onclick="leftMenuMove();return false;">
                                关闭菜单</div>
                        </div>
                    </div>
                </div>
            </td>
            <td class="t_r">
                <table cellpadding="0" cellspacing="0" class="right">
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" summary="ZoomLatools" class="tool_bar">
                                <tr>
                                    <td style="width: 2px">
                                    </td>
                                    <td style="width: auto">
                                        <iframe width="100%" height="28" frameborder="0" framespacing="0" marginwidth="0"
                                            marginheight="0" scrolling="no" allowtransparency="true" src="ManageMenu.aspx"
                                            name="tabs" id="main_menu"></iframe>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 100%">
                            <iframe width="100%" height="100%" frameborder="0" marginwidth="0" marginheight="0"
                                scrolling="no" src="about:blank" allowtransparency="true" id="main_right" name="main_right"
                                style="z-index: 2; padding-left: 4px"></iframe>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <script language="javascript" type="text/javascript">
        function souched(seld, souchopton, keyword) {
            switch (seld) {
                case "User":
                    MDIOpen('User/UserManage.aspx?souchtype=' + souchopton + '&keyword=' + keyword); return false;
                    break;
                case "Content":
                    MDIOpen('Content/ContentManage.aspx?type=' + souchopton + '&title=' + keyword); return false;
                    break;
                case "Search":
                    MDIOpen('Search/SearchFunc.aspx?' + souchopton + '=' + keyword); return false;
                    break;
            }
        }

        function SelectIndexChange(val) {
            switch (val) {
                case "User":
                    var select1 = document.getElementById("souchoption");
                    select1.innerHTML = "";

                    var newOption1 = new Option("选择查询", "");
                    select1.options.add(newOption1);

                    var newOption2 = new Option("按用户名", "4");
                    select1.options.add(newOption2);

                    var newOption3 = new Option("按用户ID", "3");
                    select1.options.add(newOption3);

                    var newOption4 = new Option("按Email", "5");
                    select1.options.add(newOption4);

                    break;
                case "Content":
                    var select1 = document.getElementById('souchoption');
                    select1.innerHTML = "";

                    var newOption1 = new Option("选择查询", "");
                    select1.options.add(newOption1);

                    var newOption2 = new Option("按内容标题", "0");
                    select1.options.add(newOption2);

                    var newOption3 = new Option("按内容ID", "1");
                    select1.options.add(newOption3);

                    var newOption4 = new Option("按内容作者", "2");
                    select1.options.add(newOption4);

                    break;
                case "Search":
                    var select1 = document.getElementById('souchoption');
                    select1.innerHTML = "";

                    var newOption1 = new Option("模糊搜索", "name");
                    select1.options.add(newOption1);

                    var newOption2 = new Option("按名称", "name");
                    select1.options.add(newOption2);

                    var newOption3 = new Option("按文件名称ID", "fileUrl");
                    select1.options.add(newOption3);


                    break;
                default:
                    var select1 = document.getElementById('souchoption');
                    select1.innerHTML = "";

                    var newOption1 = new Option("选择查询", "");
                    select1.options.add(newOption1);

                    break;
            }
        }
        setTimeout("onContentLoad();", 10);
        document.onclick = onclickME;
        

        //main_right.document.onkeydown = "alert('ok');"; //.window.document.onkeydown = "alert('ok');";
        //main_right.contentWindow.document.addEventListener("keydown", "alert('huo');", true);

    </script>
    <style>
        #tranDiv{background-color: #1C6297;}
        #infoDiv{ }
    </style>
    <!--实际输出层 -->
    <div align='center' style="position: absolute; left: 0px; top: 0px; z-index: 1" id="infoDiv">
    </div>
    <div style="position: absolute; display: none; left: 0px; top: 0px; z-index: 0" id="tranDiv"
        class="insbox">
        <div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; filter: alpha(Opacity=20)"
            id="tranDivBack">
        </div>
    </div>
</body>
</html>
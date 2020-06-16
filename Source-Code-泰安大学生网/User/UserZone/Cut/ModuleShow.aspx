<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Cut_ModuleShow, App_Web_k3p0ohfx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
<title><%=CutClass().Comtitle%>组件</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style/widget.css" type="text/css">
<link rel="stylesheet" href="style/reset.css" type="text/css">
<script src="style/js/jquery-1.5.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery-1.4.js"></script>
<link href="/App_Themes/UserThem/cut.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
    $(function () {
        $(".setiframe").css("width", window.screen.width + "px");
    });
</script>
</head>
<body>
  <div class="header">
  <div class="headWrap">
    <div class="headTop"> <span class="logo"><a href="ModuleTerrace.aspx"><img alt="逐浪软件组件平台" title="逐浪软件组件平台" src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>"></a></span>
      <div class="navBox">
        <ul class="mainNav">
          <li><a class="ie6Png" href="ModuleTerrace.aspx">首页</a></li>
          <li><a class="ie6Png " href="#">工具</a></li>
          <li><a class="ie6Png " href="#">游戏</a></li>
          <li><a class="ie6Png " href="#">资讯</a></li>
          <li><a class="ie6Png " href="#">视频</a></li>
          <li><a class="ie6Png " href="#">商务</a></li>
          <li><a class="ie6Png " href="#">生活服务</a></li>
          <li><a class="ie6Png  none " href="#">专辑</a></li>
        </ul>
      </div>
      <span class="topLink"><a href="ModulePut.aspx" class="link3" target="_blank">组件提交</a></span> </div>
    <!--end headTop-->
    <div class="headBottom">
      <div class="h_searchBox">
        <select id="search_type" class="s_type">
          <option selected="selected" value="">全部</option>
          <option value="1">工具组件</option>
          <option value="2">游戏组件</option>
          <option value="3">资讯组件</option>
          <option value="4">视频组件</option>
          <option value="6">商务组件</option>
          <option value="8">生活服务组件</option>
          <option value="7">专辑</option>
        </select>
        <input class="s_key" id="search_key" name="input" value="请输入你要搜索的关键字..." onkeydown="if(event.keyCode == 13){$('search_button').onclick();}" onfocus="if(this.value == '请输入你要搜索的关键字...'){this.value = '';}" type="text">
        <input class="b_search" name="input" id="search_button" src="style/images/btn_search.png" onclick="search();" type="image">
      </div>
      <script src="style/js/head.js"></script> 
      <script src="style/js/open.js"></script>
      <div class="h_linkBox"> <a href="#">搜索查询</a>&nbsp;&nbsp;<a href="#">词典</a>&nbsp;&nbsp;<a href="#">电视</a>&nbsp;&nbsp;<a href="#">广播</a>&nbsp;&nbsp;<a href="#">时钟</a>&nbsp;&nbsp;</div>
    </div>
  </div>
  <!--end headWrap--> 
</div>
    <div class="blank10">
    </div>
    <div class="mainWrap">
        <div class="leftWrap play_l">
            <div class="leftBox video" id="previewBox">
                <h4 class="boxTop">
                    <span class="business"></span><strong>
                        <asp:Label ID="comusertop" runat="server"></asp:Label></strong>
                    <p>
                        <a id="refresh" class="refresh" href="javascript:void(0);">刷新</a> 
                        <a id="full" class="full" href="javascript:void(0);">全屏</a> 
                        <a id="hide_show" class="shrink" href="javascript:void(0);"> 收缩</a>
                    </p>
                    <b class="rightBg">&nbsp;</b>
                </h4>
                <div id="fullCont">
                    <div id="pContainer" class="moduleContent">
                        <%=getCutDiv()%>
                    </div>
                </div>
                <div class="leftLine">
                    <b class="rightBg">&nbsp;</b>
                </div>
            </div>
            <div class="blank10">
            </div>
        </div>
        <div class="rightWrap">
            <div id="specialhere">
            </div>
            <div class="rightBox">
                <h4>
                    <span class="bg_all2"></span><strong>组件信息</strong></h4>
                <ul class="w_intro">
                    <li class="m_detail"><strong>组件介绍：</strong><div id="m_detail1">
                        <asp:Label ID="comtitle" runat="server"></asp:Label></div>
                    </li>
                    <li class="m_operater"><span class="bg_all3 m_type">类型：<em><%= CutClass().ComType%></em></span>
                    </li>
                    <li class="m_operater"><span class="bg_all3 m_class">分类：<em><%=classtitle%></em></span></li>
                    <li class="m_operater"><span class="bg_all3 m_time">时间：<em><%=CutClass().ComDateTitle %></em></span>
                    </li>
                    <li class="m_sub bg_all3">提交者：<em><asp:Label ID="comuser" runat="server"></asp:Label></em>
                    </li>
                </ul>
                <div class="rightLine">
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $("#full").toggle(function () {
            $("html,body").css({ "height": "100%", "overflow": "hidden" });
            $(".mainWrap,.leftWrap").css({ "width": "100%", "height": "100%" });
            $("#previewBox").addClass("fullBox");
            $("#fullCont").height($("body").height() - 35);
            $(this).html("还原");
            $("#hide_show").hide();
        },
	function () {
	    $("html,body").css({ "height": "", "overflow": "" });
	    $(".mainWrap,.leftWrap").css({ "width": "", "height": "" });
	    $("#previewBox").removeClass("fullBox");
	    $("#fullCont").height("auto");
	    $(this).html("全屏");
	    $("#hide_show").show();
	    if ($("#hide_show").html() === "展开") {
	        $("#fullCont").css({ "height": "1px", "overflow": "hidden" });
	    }
	}
)

        var IsShow = true;
        $("#hide_show").click(
        function () {
            if (IsShow) {
                $("#fullCont").hide("slow");
                $("#hide_show").html("展开");
                IsShow = false;
            } else {
                $("#fullCont").show("slow");
                $("#hide_show").html("收缩");
                IsShow = true;
            }
        })


        $("#refresh").click(function () {
            location.href = location.href;
        })
    </script>
</body>
</html>

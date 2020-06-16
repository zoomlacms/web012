<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Cut_ModuleTerrace, App_Web_k3p0ohfx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>组件平台</title>
<link rel="stylesheet" href="style/widget.css" type="text/css"/>
<link rel="stylesheet" href="style/reset.css" type="text/css"/>
<link rel="stylesheet" href="style/common.css" type="text/css"/>
<link rel="stylesheet" href="style/control.css" type="text/css"/>
<link rel="stylesheet" href="style/font.css" type="text/css"/>
<script src="style/js/common.js"></script>
<script src="style/js/util.js"></script>
</head>
<body>
<link rel="shortcut" href="http://www.codyy.com/public/img/common/logo.ico" type="image/x-icon">
<link rel="icon" href="http://www.codyy.com/public/img/common/logo.ico" type="image/x-icon">
<script src="style/js/jquery-1.5.1.min.js"></script> 
<script src="style/js/common.js"></script> 
<script src="style/js/head.js"></script> 
<script src="style/js/String.js"></script> 
<script>
    var stype = "", skey = "", ssort = "", surl = "/search/.htm", apache_rewrite = "1";
    G.WIDGET_IMG_URL = "http://widget.codyy.net/"; G.FACE_URL = "http://img.codyy.net/";
</script>
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
      <span class="topLink"><a href="/User/login.aspx" class="link3">登录&nbsp;|</a> <a href="/User/Register.aspx" class="link3" target="_blank">注册</a> <a href="ModulePut.aspx" class="link3" target="_blank">组件提交</a></span> </div>
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

<div class="blank10 area1"> </div>
<div class="mainWrap">
  <div class="leftWrap">
    <div class="leftBox">
      <h4>精彩聚焦</h4>
      <div id="topBanner" class="topBanner">
        <div class="banner_stage">
          <p style="display: none;" id="ban_1" title="2010中国十大盘点"> <a href="#" target="_blank"><img src="style/images/3f19e.jpg" alt="" onerror="G.setImgError(this,1);" height="242" width="460"></a> </p>
          <p style="display: none;" id="ban_2" title="娱乐八卦2010精彩盘点"> <a href="#" target="_blank"><img src="style/images/50d3e.jpg" alt="" onerror="G.setImgError(this,1);" height="242" width="460"></a> </p>
          <p style="" id="ban_3" title="2011年春运"> <a href="#" target="_blank"><img src="style/images/892d2.jpg" alt="" onerror="G.setImgError(this,1);" height="242" width="460"></a> </p>
        </div>
        <ul class="banner_stick">
          <li class="none" id="sti_1" onmouseover="Switch.move(1);" onmouseout="Switch.goTure = true;" title="2010中国十大盘点"> <a href="#" target="_blank"><img src="style/images/9b039.jpg" alt="" onerror="G.setImgError(this,1);" height="76" width="194"></a> </li>
          <li class="none" id="sti_2" onmouseover="Switch.move(2);" onmouseout="Switch.goTure = true;" title="娱乐八卦2010精彩盘点"> <a href="#" target="_blank"><img src="style/images/31a7d.jpg" alt="" onerror="G.setImgError(this,1);" height="76" width="194"></a> </li>
          <li class="current" id="sti_3" onmouseover="Switch.move(3);" onmouseout="Switch.goTure = true;" title="2011年春运"> <a href="#" target="_blank"><img src="style/images/263a9.jpg" alt="" onerror="G.setImgError(this,1);" height="76" width="194"></a> </li>
        </ul>
      </div>
<style type="text/css">
 	.topBanner .banner_stick li{margin:3px;height:76px;overflow:hidden;}
	.banner_stick li a{border:3px solid #fff;border-width:0;}
	.banner_stick #sti_1 a{border:3px solid #6de580;}
	
	.banner_stick #sti_1 a img{width:188px;height:69px;}
	.banner_stick #sti_2 a{border-color:#2298d8;}
	.banner_stick #sti_3 a{border-color:#20def3;}
	.banner_stick .none a{border:0 !important;}
	.banner_stick .none a img{width:194px !important;height:76px !important;}
	.banner_stick .current a{border-width:3px;}
	.banner_stick .current img{width:188px;height:70px;}
</style>
<script>
          var Switch = {
              cur: 1,
              goTure: true,
              change: function (i) {
                  $("ban_" + Switch.cur).style.display = "none";
                  $("sti_" + Switch.cur).className = 'none';
                  Switch.cur = i;
                  $("ban_" + Switch.cur).style.display = "";
                  $("sti_" + Switch.cur).className = 'current';
              },
              move: function (i) {
                  Switch.goTure = false;
                  Switch.change(i);
              },
              time: function () {
                  if (Switch.goTure) {
                      Switch.change(Switch.cur == 3 ? 1 : Switch.cur + 1);
                  }
                  setTimeout(Switch.time, 3000);
              }
          };
          setTimeout(Switch.time, 3000);
	
</script> </div>
    <div class="blank10"> </div>
    <div class="leftBox">
      <h4>组件分类目录</h4>
      <div class="cLeft">
        <table class="w_classify">
          <tbody>
            <tr class="w_h w_tool">
              <td><span class="bg_all"></span> <a href="#" target="_blank">工具组件</a></td>
            </tr>
            <tr class="w_bg">
              <td><span></span></td>
            </tr>
            <tr class="w_detail">
              <td><span><a href="#">工具组件</a>|<a href="#">工具组件</a>|<a href="#">工具组件</a>|<a href="#">工具组件</a>|<a href="#">工具组件</a>|<a href="#">更多</a></span></td>
            </tr>
            <tr class="w_h w_game">
              <td><span class="bg_all"></span> <a href="#" target="_blank">游戏组件</a></td>
            </tr>
            <tr class="w_bg">
              <td><span></span></td>
            </tr>
            <tr class="w_detail">
              <td><span><a href="#">游戏组件</a>|<a href="#">游戏组件</a>|<a href="#">游戏组件</a>|<a href="#">游戏组件</a>|<a href="#">游戏组件</a>|<a href="#">游戏组件</a>|<a href="#">更多</a></span></td>
            </tr>
            <tr class="w_h w_business">
              <td><span class="bg_all"></span> <a href="#" target="_blank">商务组件</a></td>
            </tr>
            <tr class="w_bg">
              <td><span></span></td>
            </tr>
            <tr class="w_detail">
              <td><span><a href="#">商务组件</a>|<a href="#">商务组件</a>|<a href="#">商务组件</a>|<a href="#">商务组件</a>|<a href="#">商务组件</a>|<a href="#">商务组件</a>|<a href="#">更多</a></span></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="cRight">
        <table class="w_classify">
          <tbody>
            <tr class="w_h w_info">
              <td><span class="bg_all"></span> <a href="#" target="_blank">资讯组件</a></td>
            </tr>
            <tr class="w_bg">
              <td><span></span></td>
            </tr>
            <tr class="w_detail">
              <td><span><a href="#">资讯组件</a>|<a href="#">资讯组件</a>|<a href="#">资讯组件</a>|<a href="#">资讯组件</a>|<a href="#">资讯组件</a>|<a href="#">资讯组件</a>|<a href="#">更多</a></span></td>
            </tr>
            <tr class="w_h w_video">
              <td><span class="bg_all"></span> <a href="#" target="_blank">视频组件</a></td>
            </tr>
            <tr class="w_bg">
              <td><span></span></td>
            </tr>
            <tr class="w_detail">
              <td><span><a href="#">视频组件</a>|<a href="#">视频组件</a>|<a href="#">视频组件</a>|<a href="#">视频组件</a>|<a href="#">视频组件</a>|<a href="#">更多</a></span></td>
            </tr>
            <tr class="w_h w_life">
              <td><span class="bg_all"></span> <a href="#" target="_blank">生活服务组件</a></td>
            </tr>
            <tr class="w_bg">
              <td><span></span></td>
            </tr>
            <tr class="w_detail">
              <td><span><a href="#">生活服务组件</a>|<a href="#">生活服务组件</a>|<a href="#">生活服务组件</a>|<a href="#">生活服务组件</a>|<a href="#">生活服务组件</a>|<a href="#">更多</a></span></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="leftLine"> </div>
    </div>
    <div class="blank10"> </div>
    <div class="leftBox">
      <h4><span class="w_title">人气组件</span><a href="#" class="more" target="_blank"></a></h4>
      <div class="wgt_detail">
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/8dd09.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">265学习导航</a> </dd>
          <dd> <span>人气：523</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
        </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/11197.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">老人硫酸画清明上河图</a> </dd>
          <dd> <span>人气：6056</span>&nbsp;&nbsp;<span>评论：1</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/511a4.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">电视剧古装美女大汇演</a> </dd>
          <dd> <span>人气：7933</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/102b8.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">挑甜橘子的小窍门</a> </dd>
          <dd> <span>人气：6045</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
      </div>
      <div class="leftLine"> </div>
    </div>
    <div class="blank10"> </div>
    <div class="leftBox">
      <h4><span class="w_title">游戏组件</span><a href="#" class="more" target="_blank"></a></h4>
      <div class="wgt_detail">
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/88836.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">小月月大战小W</a> </dd>
          <dd> <span>人气：26041</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/20071016162354.gif" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">可爱宠物连连看</a> </dd>
          <dd> <span>人气：1156</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/2081e.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">宠物岛</a> </dd>
          <dd> <span>人气：78</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/11342HO7.gif" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">黄金矿工双人版</a> </dd>
          <dd> <span>人气：13134</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
      </div>
      <div class="leftLine"> </div>
    </div>
    <div class="blank10"> </div>
    <div class="leftBox">
      <h4><span class="w_title">视频组件</span><a href="#" class="more" target="_blank"></a></h4>
      <div class="wgt_detail">
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/11ff3.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">膜拜小月月-拜月神教主题曲</a> </dd>
          <dd> <span>人气：66</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/730f9.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">山楂树之恋 电影</a> </dd>
          <dd> <span>人气：39496</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/3032e.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">实习医生格蕾第七季04</a> </dd>
          <dd> <span>人气：48</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/787cf.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">蔡依林Jolin-黑发尤物</a> </dd>
          <dd> <span>人气：6647</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
      </div>
      <div class="leftLine"> </div>
    </div>
    <div class="blank10"> </div>
    <div class="leftBox">
      <h4><span class="w_title">工具组件</span><a href="#" class="more" target="_blank"></a></h4>
      <div class="wgt_detail">
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/91743.png" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">星座运程查询</a> </dd>
          <dd> <span>人气：81</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/303c5.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">路透社记者手册</a> </dd>
          <dd> <span>人气：4925</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/43a32.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">城市生活搜索-365地图</a> </dd>
          <dd> <span>人气：163</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/6805c.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">世博游上海</a> </dd>
          <dd> <span>人气：4915</span>&nbsp;&nbsp;<span>评论：10</span> </dd>
          </dl>
      </div>
      <div class="leftLine"> </div>
    </div>
    <div class="blank10"> </div>
    <div class="leftBox">
      <h4><span class="w_title">资讯组件</span><a href="#" class="more" target="_blank"></a></h4>
      <div class="wgt_detail">
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/59ca1.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">海外新闻-财经网</a> </dd>
          <dd> <span>人气：94</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/3d607.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">【rss订阅】社会新闻-腾讯网</a> </dd>
          <dd> <span>人气：551</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/7e042.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">国内时政要闻-新浪</a> </dd>
          <dd> <span>人气：977</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/9764b.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">华讯财经基金频道</a> </dd>
          <dd> <span>人气：294</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
      </div>
      <div class="leftLine"> </div>
    </div>
    <div class="blank10"> </div>
    <div class="leftBox">
      <h4><span class="w_title">商务组件</span><a href="#" class="more" target="_blank"></a></h4>
      <div class="wgt_detail">
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/313ac.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">手机软件推荐-天极软件站 </a> </dd>
          <dd> <span>人气：96</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/92195.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">网站关注排行-第一分类目录</a> </dd>
          <dd> <span>人气：1062</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
        </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/73ab1.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">外汇牌价 </a> </dd>
          <dd> <span>人气：48</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
        </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/902c5.png" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">热门车型论坛-汽车论坛</a> </dd>
          <dd> <span>人气：639</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
      </div>
      <div class="leftLine"> </div>
    </div>
    <div class="blank10"> </div>
    <div class="leftBox">
      <h4><span class="w_title">生活服务组件</span><a href="#" class="more" target="_blank"></a></h4>
      <div class="wgt_detail">
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/94f94.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">糖水冻品四季皆宜</a> </dd>
          <dd> <span>人气：61</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/7d134.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="# target="_blank">干燥秋日启动你的换季排毒计划</a> </dd>
          <dd> <span>人气：48</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/36e0d.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">Valentine - Kina Grannis----她唱出了最美的情人节</a> </dd>
          <dd> <span>人气：44</span>&nbsp;&nbsp;<span>评论：1</span> </dd>
          </dl>
        <dl>
          <dt class="pic pic136"> <a href="#" class="corner" target="_blank"></a> <img src="style/images/3a7ac.jpg" onerror="G.setImgError(this,1);" alt="" height="97" width="137"> </dt>
          <dd> <a href="#" target="_blank">盘点全球十大最具浪漫风情旅馆</a> </dd>
          <dd> <span>人气：16903</span>&nbsp;&nbsp;<span>评论：0</span> </dd>
          </dl>
      </div>
      <div class="leftLine"> </div>
    </div>
  </div>
  <!--end leftWrap-->
  <div class="rightWrap">
    <div class="w_submit">
      <h4>欢迎进入逐浪软件组件平台</h4>
      <p> 逐浪软件组件平台是个开放给所有网民的、网民参与管理的资源共享平台，如果你有好的小游戏、视频、各类小工具、资讯或你的博客等等愿意与人共享的，那么请提交到这里，你也可以从这里把你认为不错的组件复制出去。 </p>
      <a class="btn_sub" href="#" target="_blank"></a> <a class="how" href="#" target="_blank">如何提交组件<em>？</em></a> </div>
    <!--end w_submit-->
    <div class="rightBox" style="margin-top: 4px;">
      <h4><span class="w_title">推荐组件</span><a href="#" class="more2" target="_blank">更多</a></h4>
      <div class="w_recommend_box">
        <dl>
          <dt class="pic pic88"> <a class="corner" href="#" target="_blank"></a> <img src="style/images/6a213.jpg" onerror="G.setImgError(this,2);" alt="" height="89" width="89"> </dt>
          <dd> <a class="w_r_title" href="#" target="_blank">爱英伦风就要了解他的全部</a> </dd>
          <dd> <span class="w_r_pop">人气：7455</span> </dd>
        </dl>
      </div>
      <div class="rightLine"> </div>
    </div>
    <div class="blank10"> </div>
    <div class="rightBox w_top">
      <h4><span class="w_title">本周组件排行榜</span><span class="w_top10"></span></h4>
      <div class="w_top_box"> 
        <dl id="week_1" class="top1">
          <dt> <em class="bg_all num"></em> <a href="#" target="_blank">《再见古惑仔》又名：黑势力（国语）</a> </dt>
          <dd> <em class="bg_all star"></em> <span>人气：1271</span> </dd>
        </dl>
        <div id="week_detail_1" class="top1_detail" style="display: none;"> <a href="#" target="_blank"><img src="style/images/0100011F46481A296949DA0042CCAF6FF067AB-19E9-FB23-CAC6-5E027.jpeg" alt="" onerror="G.setImgError(this,2);" height="75" width="75"></a>
          <p>《再见古惑仔》又名：黑势力（国语）</p>
        </div>
        <dl id="week_2" class="top2">
          <dt> <em class="bg_all num"></em> <a href="#" target="_blank">侏罗纪公园1国语版-A</a> </dt>
          <dd> <em class="bg_all star"></em> <span>人气：811</span> </dd>
        </dl>
        <div id="week_detail_2" class="top1_detail" style="display: none;"> <a href="#" target="_blank"><img src="style/images/p_008.jpg" alt="" onerror="G.setImgError(this,2);" height="75" width="75"></a>
          <p>侏罗纪公园1国语版-A</p>
        </div>
        <dl id="week_3" class="top3">
          <dt> <em class="bg_all num"></em> <a href="#" target="_blank">释小龙电影《无敌反斗星》DVD国语</a> </dt>
          <dd> <em class="bg_all star"></em> <span>人气：531</span> </dd>
        </dl>
        <div id="week_detail_3" class="top1_detail" style="display: none;"> <a href="#" target="_blank"><img src="style/images/0100011F464B43CBAD4EBA0064FE5ED8873A19-F80E-5B3E-B32A-C136E.jpeg" alt="" onerror="G.setImgError(this,2);" height="75" width="75"></a>
          <p>释小龙电影《无敌反斗星》DVD国语</p>
        </div>
        <dl id="week_4" class="top4">
          <dt> <em class="bg_all num"></em> <a href="#" target="_blank">香港电影【天魔僵尸】国语版</a> </dt>
          <dd> <em class="bg_all star"></em> <span>人气：483</span> </dd>
        </dl>
        <div id="week_detail_4" class="top1_detail" style="display: none;"> <a href="#" target="_blank"><img src="style/images/0100641F464BB2A4D2439601F182DC1C5DD07A-B156-1F83-2C9B-65FF6.jpeg" alt="" onerror="G.setImgError(this,2);" height="75" width="75"></a>
          <p>香港电影【天魔僵尸】国语版</p>
        </div>
      </div>
      <div class="rightLine"> </div>
    </div>
    <img style="position: absolute; width: 0pt; height: 0pt; visibility: hidden;" src="style/images/a.htm"> 
    <script>
        var selul = "";
        try {
            $j(".w_top_box > dl").mouseover(function (n, o) {
                if (!selul) selul = "1";
                $j("#week_detail_" + selul).css("display", "none");
                selul = this.id.replace("week_", "");
                $j("#week_detail_" + selul).css("display", "");
            });
        } catch (e) { }
</script>
    <div class="blank10"> </div>
    <div class="rightBox">
      <h4><span class="w_title">热门资讯</span><a target="_blank" href="#" class="more2">更多</a></h4>
      <div class="w_hot_box">
        <dl>
          <dt class="pic pic75"> <a class="corner" href="#" target="_blank"></a> <img onerror="G.setImgError(this,3)" src="style/images/6_003.gif" alt="港中旅积极参与海南国际旅游岛投资建设 - 搜狐" height="75" width="75"></dt>
          <dd title="港中旅积极参与海南国际旅游岛投资建设 - 搜狐" style="width: 90px;"><a class="w_h_title" href="#" target="_blank">港中旅积极参与海南国际旅游岛投资建设 - 搜狐</a></dd>
          <dd style="width: 90px;"><span>新华网港中旅积极参与海南国际旅游岛投资建设搜狐此举表明中国港中旅集团作为中国最大的旅游企业将积极响应…</span></dd>
        </dl>
        <div class="hot_detail">
          <ul>
            <li><a href="#" title="视频：学校雇优秀生当枪手 高考得高分后弃读" target="_blank">视频：学校雇优秀生当枪手 高考得高分后弃读</a></li>
            <li><a href="# title="视频：广州辅警掌掴女车主 因查车起纷争" target="_blank">视频：广州辅警掌掴女车主 因查车起纷争</a></li>
            <li><a href="#" title="视频：故宫保和殿匾额现“到此一游” 距地30米" target="_blank">视频：故宫保和殿匾额现“到此一游” 距地30米</a></li>
            <li><a href="#" title="视频：监控记录诡异车祸 老人自己钻车底被碾死" target="_blank">视频：监控记录诡异车祸 老人自己钻车底被碾死</a></li>
            <li><a href="#" title="网爆旅行社50个景点陷阱：不要赴港随导游买表" target="_blank">网爆旅行社50个景点陷阱：不要赴港随导游买表</a></li>
            <li><a href="#" title="朱学勤:大众传媒不应对学术问题本身充任审判官" target="_blank">朱学勤:大众传媒不应对学术问题本身充任审判官</a></li>
          </ul>
        </div>
      </div>
      <div class="rightLine"></div>
    </div>
    <div class="blank10"> </div>
    <div class="rightBox">
      <h4><span class="w_title">大家在干什么</span><a target="_blank" href="#" class="more2">更多</a></h4>
      <div class="w_what_box">
        <dl>
          <dt class="pic pic88"> <a class="corner" href="#" target="_blank"></a><img src="style/images/p_011.jpg" alt="" onerror="G.setImgError(this,2)" height="88" width="88"> </dt>
          <dd> <a class="w_w_title" href="#" target="_blank">《综艺节目》2008年12月13日节目第五部分</a> </dd>
          <dd> <span class="w_w_user">正在使用：0</span> <!-- 这里应为添加次数 --> 
          </dd>
          <dd> <span class="w_w_pop">人气：150</span> </dd>
        </dl>
      </div>
      <div class="rightLine"></div>
    </div>
    <img style="position: absolute; width: 0pt; height: 0pt; visibility: hidden;" src="style/images/a_003.htm">
    <div class="blank10"> </div>
    <div class="w_tab"> <a id="a_m" href="javascript:void(0);" onmousemove="changeTab(this,'a_m','a_f');return false;"><span>你可能会喜欢</span></a> </div>
    <script>
        var changeTab = function (o, a, b) {
            $(b).className = "t_current";
            o.className = "";
            $(b + "_d").style.display = "none";
            $(a + "_d").style.display = "";
        }
</script>
    <div class="tab_top"> </div>
    <img style="position: absolute; width: 0pt; height: 0pt; visibility: hidden;" src="style/images/a_002.htm">
    <div class="tab_bottom"> </div>
  </div>
  <!--end rightWrap--> 
</div>
<!--end mainWrap-->
<div style="display:none">

<div class="blank10 area1"> </div>
<div class="coopBar"> <a class="moreLink" href="#" target="_blank">更多</a> </div>
<div class="blank10 area1"> </div>
<div class="linkBar"> <span> <a href="#" target="_blank">服务条款</a> | <a href="http://www.codyy.com/guides/privacy.htm" target="_blank">隐私政策</a> | <a href="#" target="_blank">加入逐浪</a> | <a href="#" target="_blank">合作推广</a> | <a href="#" target="_blank">RSS合作</a> | <a href="#" target="_blank">联系我们</a> | <a href="#" target="_blank">告诉逐浪</a> | <a href="#" target="_blank">友情链接</a> | <a href="#" target="_blank">关于阔地</a> | <a href="#" target="_blank">功能特色</a> </span> </div>
<!--end linkBar-->
<div class="footWrap">
  <p class="copyRight"> Copyright © 2008-2011 <a class="f_green" href="#" target="_blank">逐浪软件·组件平台</a> All Rights Reserved. </p>
  <p class="icp"> <img src="style/images/ICP.jpg" alt="逐浪软件" height="37" width="86"><a class="f_ICP" href="http://www.miibeian.gov.cn/" target="_blank">浙ICP备08001097号</a> </p>
</div>
<div style="display: none;"> 
  <script src="style/images/stat.htm" charset="gb2321" language="JavaScript"></script><a href="#" target="_blank" title="站长统计">站长统计</a><img src="style/images/stat.gif" border="0" height="0" width="0"> 
  <script type="text/javascript" src="style/images/tongji.js" charset="gb2312"></script><img src="style/images/tongji.gif" border="0" height="1" width="1"><a href="#" target="_blank"><img src="style/images/icon1.gif" alt="量子统计" border="0"></a>
  <noscript>
  <a href=" http://www.linezing.com"><img src=" http://img.tongji.linezing.com/1616284/tongji.gif"style="visibility:hidden;position:absolute;"/></a>
  </noscript>
</div>

</div>
<!--end footWrap--> 
<script type="text/javascript">
    ~function ($) {
        if ($) {
            $(function () {
                parent.setHeight ? parent.setHeight($(document.body).height()) : "";
            }
		);
        }
    } (window.$j);

</script>
</body>
</html>
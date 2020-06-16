<%@ page language="C#" debug="true" autoeventwireup="true" inherits="User_UserZone_Cut_ModulePut, App_Web_k3p0ohfx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>组件提交</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style/widget.css" type="text/css">
<link rel="stylesheet" type="text/css" href="style/fonts.css" >
<link rel="stylesheet" type="text/css" href="style/zjtj.css">
<script src="style/js/jquery-1.5.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery-1.4.js"></script>
<script type="text/javascript" src="style/js/ZuJianTJ.js"></script>
<link href="/App_Themes/UserThem/cut.css" type="text/css" rel="stylesheet" />

<script type="text/javascript">
    $(document).ready(function () {
        uploadcreate($("#uploadbox"));
        $("#upPhoto").click(function () {
            $("#ifUpload").contents().find("#file1").click();
        });
    });

    var hideDiv = function (idName) {
        $("#" + idName).fadeOut("fast");
    };

    //载入中的GIF动画
    var loadingUrl = "style/images/ajax-loader.gif";
    //选择文件后的事件,iframe里面调用的
    var uploading = function (imgsrc) {
        var el = $("#uploading");
        $("#ifUpload").fadeOut("fast");
        el.fadeIn("fast");
        $("#txtImgUrl").val("图片上传中...");
        //el.html("<img src='" + loadingUrl + "' align='absmiddle' /> 上传中...");
        return el;
    };

    //重新上传方法    
    var uploadinit = function () {
        $("#uploading").fadeOut("fast", function () {
            $("#ifUpload").fadeIn("fast");
        });

    };

    //上传时程序发生错误时，给提示，并返回上传状态
    var uploaderror = function () {
        alert("程序异常，上传未成功。");
        uploadinit();
    };

    //上传成功后的处理
    var uploadsuccessA = function (newpath) {
        $("#txtContent").append("<img src=\"" + newpath + "\" onload=\"if(this.width>300){this.width=300;}\" />");
        var el = $("#uploading");
        el.html("上传成功,<a href=\"javascript:void(0);\" onclick=\"uploadinit();\">[重新上传]</a>.");
    };

    var uploadsuccess = function (newpath) {
        $("#preview").attr("src", newpath); // src("" + newpath + "")
        $("#txtImgUrl").val(newpath);
    };

    //创建一个上传控件
    var uploadcreate = function (el) {
        var strContent = "<div class='uploadcontrol'><iframe src=\"upload.aspx\" id=\"ifUpload\" frameborder=\"no\" scrolling=\"no\" style=\"width:400px; height:28px;\"></iframe>";
        strContent += "<div class=\"uploading\" id=\"uploading\" style=\"display:none;\" ></div>";
        strContent += "<div class=\"image\" id=\"panelViewPic\" style=\"display:none;\"></div></div>";
        el.append(strContent);
    };
	</script>
<script type="text/javascript">
    function gethtml(h, w,u,t,l) {
        var str = "<div id='divUrl' class='divUrl' style='height:" + h + "px;'><div  id='cuthidden' style='width:" + w + "px;height:" + h
        + "px;overflow:hidden;margin: auto;'><iframe id='iframecut' class='setiframe'  frameborder='0' scrolling='no' src='" + u
        + "'  style='width:1024px;height:1500px;margin-top:" + (0 - t) + "px;margin-left:" + (0 - l) + "px;></iframe></div></div>";

        alert(str);

        document.getElementById("txtHCode").val= str;
    }
</script>
</head>
<body >
 
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
<div class="blank10 area1"> </div>
<div class="mainWrap" style="top:10px;">
  <div >
    <!-- 组件提交开始  -->
    <div class="subs">
    <div class="subs_main">
    	<div class="subs_top"><h4><strong>开始提交</strong></h4></div>
        <p class="subs_info">
        逐浪组件平台是个开放给所有网民的、网民参与管理的资源共享平台，如果你有好的小游戏、视频、各类小工具、资讯或你的博客等等愿意与人共享的，那么请提交到这里，你也可以从这里把你认为不错的组件复制出去。
        </p>
        <div class="subs_btn_main">
            <div class="tab_btn">
                <a id="JiBenTJ" href="#" hidefocus="true" class="tab_btn_move">基本提交</a>
                <a id="GaoJiTJ" href="#" hidefocus="true" class="tab_btn_out" >高级提交</a>
                <a href="#" hidefocus="true" class="help" target="_blank" >提交帮助</a>
            </div>
            <div class="tab_btn_center">
            <!-- 基本提交 -->
             <div id="tabJiBen">
                <table>
                <tr>
                    <td><label class="target">资源地址：</label></td>
                    <td>
                    <input class="input_url" type="text" size="60" id="url" name="url" 
                    value="http://" onKeyDown="if(event.keyCode==13){}" onFocus="this.select();"/>
                    </td>
                </tr>
                <tr>
                    <td colspan=2>
                    <div id="tip" style="text-align:center;margin:15px;display:none;">fdsa</div>
                    </td>
                </tr>
                <tr>
                    <td colspan=2 align=center>
                    <br/><a hidefocus="true"  href="javascript:void(0);"  id="JBSubmit" class="bgs_all2 btn_common">提交</a>
                    </td>
                </tr>
                </table>
                </div>
            <!--  高级提交  -->
            <div  id="tabGao" style="display:none;">
                <div>
                <span class="span1">组件的类型：</span><span class="span2">
                <input checked="checked" value="0" name="RadioGroup2" class="in_radio" type="radio">
                <label>Flash网址</label>
                  <input  value="1" name="RadioGroup2" class="in_radio" type="radio">
                <label>RSS网址</label>
                  <input  value="2" name="RadioGroup2" class="in_radio" type="radio">
                <label>小工具网址</label>
                  <input value="3" name="RadioGroup2" class="in_radio" type="radio">
                <label>小程序</label>
                  <input value="4" name="RadioGroup2" class="in_radio" type="radio">
                <label>HTML代码</label></span>
                </div>
                  <!--组件类型-->
                  
                <div id="FWeb" >
                <span class="span1"></span>
                <span class="span2">
                Flash网址：<input id="txtFWeb" class="in_text" type="text"/>
                <font class="required">*</font>
                </span>
                </div>
                <div id="RSSWeb" class="hiddenDiv">
                <span class="span1"></span>
                <span class="span2">
                RSS网址：<input id="txtRWeb" class="in_text" type="text"/>
                <font class="required">*</font>
                </span>
                </div>
                <div id="ToolsWeb" class="hiddenDiv">
                <span class="span1"></span>
                <span class="span2">
                小工具网址：<input id="txtTWeb" class="in_text" type="text" style="width:280px;"/>
                <font class="required">*</font>
                <select id="flag" name="D1">
                <option value="0">选择形式</option>
                <option value="1" selected="selected">局部形式</option>
                <option value="2">整站形式</option>
                </select>
                </span>
                </div>
                <div id="ProgramWeb" class="hiddenDiv">
                <span class="span1"></span>
                <span class="span2">
                小程序：<input id="txtPWeb" readonly class="in_text" type="text" style="width:280px;"/>
                <img src="style/images/loadFile.jpg" class="loadimg"/>
                <font class="required">*</font>
                </span>
                <span class="span3">(rar压缩包、swf文件)</span>
               
                </div>
                <div id="HtmlCode" class="hiddenDiv" >
                  <div style="width:100%;">
                  <span class="span1"></span>
                  <span class="span2" style="width:400px;">
                  组件的HTML代码：<a href="javascript:void();" id="GaoHtml"  style="margin-left: 5px; cursor: pointer; color: rgb(67, 96, 156);">(使用网页剪取功能进行辅助添加)</a><font class="font2"></font></span>
                  </div>
                <div style="width:100%">
                  <span class="span1" style="height:200px;"></span>
                <span class="span2">
                <textarea id="txtHCode" class="in_tarea" cols="20" name="S1" rows="1" >
                  </textarea>
                  <font class="required" style=" width:10px; height:350px; vertical-align:top;padding-top:200px;">*</font>
                </span></div>
                </div>
             
                <!--组件分类，预览图，标题-->   
                <div>
                <table width="100%"  style="width:580px; border:0px; margin:10px 0px; padding:0px;">
                <tr>
                <td width="79%"><span class="span1">组件的分类：</span>
                <span class="span2" >
                <select id="type" name="D2">
                <option value="1" selected >工具组件</option><option value="2">游戏组件</option>
                <option value="3">资讯组件</option><option value="4">视频组件</option>
                <option value="6">商务组件</option><option value="7">生活服务组件</option>
                <option value="8">专辑</option>
                </select>
                </span></td>
                <td rowspan="3">
                <span class="tabGao_right"><img alt="预览" id="preview" src="style/images/widget.gif" /></span>
                </td>
                </tr>
                <tr>
                <td> <span class="span1">组件预览图：</span>
                <span class="span2">
                <input id="txtImgUrl" disabled="disabled" class="txtImgUrl" type="text"/>
                <span id="upPhoto" style="cursor:hand;">
                <img src="style/images/loadFile.jpg" class="loadimg"/></span><font class="required">*</font>
                </span></td>
                <td  id="uploadbox">
                 </td>
                </tr>
                <tr>
                <td><span class="span1">组件的标题：</span>
                <span class="span2">
                <input id="txtTitle" class="in_text" style="width:285px;"  type="text"/>
                <font class="required">*</font>
                </span></td></tr>
                <tr>
                <td  colspan="2"> <span class="span1">关键字标签：</span>
                <span class="span2" style="width:480px;">
                <input id="txtKeyword" class="in_text" style="width:285px;"  type="text"/>
                </span>(多个标签用空格分开)
                </td></tr>
                </table>
                </div>
                
               <div>
               <table>
               <tbody>
               <tr>
               <td valign="top">
               <span class="span1" style="vertical-align:bottom;">组件的说明：</span>
               </td>
               <td>
                <span class="span2"> 
                <textarea id="txtDescription" class="tarea_desc" cols="20" name="S2" rows="1"></textarea>
                </span>
               </td>
               <td>
               <font class="required">*</font>
               </td>
               </tr>
               </tbody>
               </table>
               </div>
               <div style=" height:30px; text-align:center; padding-top:20px;">
                <a hidefocus="true" onClick="return false;" href="javascript:void(0);"
                 id="btnPreview" class="bgs_all2 btn_common">预览</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a hidefocus="true" onClick="return false;" href="javascript:void(0);" id="btnGaoSub"
                class="bgs_all2 btn_common">提交</a>
               </div>
            </div>
            </div>
            <div class="tab_btn_line" ></div>
        </div>
    </div>
    <div class="subs_bottom"></div>
    </div>
    <!--组件提交结束-->
   </div>

  <div class="rightbox">
     <div class="right_main">
        <div class="righttop"><h4><strong>我已提交的</strong></h4></div>
        <div id="mysubmit" class="hotgamebox">   
            <%
                if (showCount > Mcme.Count)
                {
                    showCount = Mcme.Count;
                }
                else
                {
                   showCount=16;
                }
                for (int i = 0; i < showCount; i++)
                {
                    
                    mcm = Mcme[i];
             
            %>
            <%=GetDiv(mcm)%>
            <%
                }
                if (Mcme.Count <= 0)
                {
                %>
            <span>您还没有提交过组件</span>
            <%} %>
         </div>
        </div>
        <div class="rightline"></div>
    </div>
</div>
<!--浮动box开始-->
<div id="#popupbox" class="popupbox" >
        <div class="box_top">
            <span class="box_name_left" ></span>
            <span class="box_name">网页剪取</span><span></span>
            <span class="box_name_right"></span>
            <a title="点此关闭此窗口" href="javascript:void(0);" class="box_close" ></a>
        </div>
        <div  class="box_main">
        <iframe id="box_url" frameborder="0" marginwidth="0" marginheight="0"
         width="100%" height="100%" src="">
        </iframe>
        </div>
	</div>
    <!--浮动box结束-->
</body>
</html>

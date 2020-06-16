// JavaScript Document
//组件提交

//第一次加载时判断选中的radio
$(function(){  
		  var valradio = $(".in_radio[@name='RadioGroup2']:checked").val(); //选中项 
		   var types=$("#FWeb,#RSSWeb,#ToolsWeb,#ProgramWeb,#HtmlCode");
		   for(var i=0;i<types.length;i++)
		   {
			   if(i==valradio)
			   {
				 $(types[i]).show();
			   }else{
				   $(types[i]).hide();
			   }
		   }
})
//判断浏览器
function isIE(){
      return (document.all && window.ActiveXObject && !window.opera) ? true : false;
}


$(function () {
    //选择基本提交
    $("#JiBenTJ").bind("click", function () {
        $("#JiBenTJ")[0].className = "tab_btn_move";
        $("#GaoJiTJ")[0].className = "tab_btn_out";
        $("#tabGao").hide();
        $("#tabJiBen").show(500);
        return false;
    });
    //选择高级提交
    $("#GaoJiTJ").bind("click", function () {
        $("#JiBenTJ")[0].className = "tab_btn_out";
        $("#GaoJiTJ")[0].className = "tab_btn_move";
        $("#tabJiBen").hide();
        $("#tabGao").show(500);
        return false;
    });
    //Radio选择改变
    $(".in_radio").click(function () {
        var valradio = $(".in_radio[@name='RadioGroup2']:checked").val(); //选中项 
        var types = $("#FWeb,#RSSWeb,#ToolsWeb,#ProgramWeb,#HtmlCode");
        for (var i = 0; i < types.length; i++) {
            if (i == valradio) {
                $(types[i]).show();
            } else {
                $(types[i]).hide();
            }
        }
    });
    //基本提交-确定
    $("#JBSubmit").click(function () {
        $("body").append("<div id='boxCover'></div>");
        var dw = $(document).width();
        var dh = $(document).height();
        var url = $("#url").val();
        $("#boxCover").css("width", dw);
        $("#boxCover").css("height", dh);
        $("#boxCover").css({ "position": "absolute", "top": "0px", "left": "0px", "z-index": 98 });
        $("#boxCover").css("background", "#ccE6cc");
        $("#boxCover").css("display", "");
        $("#boxCover").css("opacity", "0.6");

        $("body").css("overflow", "hidden");

        $("body").append("<div id='popupbox2'></div>");
        $("#popupbox2").css({ "width": "850px", "height": "auto", "background": "#FFF" });
        $("#popupbox2").css("border", "#e6e6e6 8px solid");
        $("#popupbox2").css({ "position": "absolute", "top": "50px", "left": "150px", "z-index": 99 });
        $("#popupbox2").html("<div class='box_top'><span class='box_name_left' ></span>" +
            "<span class='box_name'>网页剪取</span><span></span>" +
            "<span class='box_name_right'></span>" +
            "<a id='box_end' title='点此关闭此窗口' href='javascript:box_close();void(0);'  class='box_close' ></a>" +
            "</div>");
        $("#popupbox2").append("<div  class='box_main'><iframe id='box_url' frameborder='0' " +
			" marginwidth='0' marginheight='0' width='100%' height='100%' " +
			" src='ModulePcuting.aspx?url=" + url + "'></div>");
        // $("#popupbox2").show();
        $("#popupbox2").css("z-index", 99);


    });
    //基本提交-关闭box
    $("#box_end").click(function () {
        $("body").remove($("#boxCover")); //删除boxCover
        $("body").css("overflow", "auto");
        $("body").remove("#popupbox2");
    });
})

//基本提交-关闭box
function box_close() {
    $("body").remove($("#boxCover")); //删除boxCover
    $("body").css("overflow", "auto");
    $("body").remove("#popupbox2");
}

//高级提交
$(function(){
    $("#GaoHtml").bind("click",function(){
        $("body").append("<div id='boxCovers'></div>");
        var dw = $(document).width();
        var dh = $(document).height();
        var url = $("#url").val();
        $("#boxCovers").css("width", dw);
        $("#boxCovers").css("height", dh);
        $("#boxCovers").css({ "position": "absolute", "top": "0px", "left": "0px", "z-index": 98 });
        $("#boxCovers").css("background", "#ccE6cc");
        $("#boxCovers").css("display", "");
        $("#boxCovers").css("opacity", "0.6");

        $("#boxCovers").append("<div id='boxCovera' style='text-align: center;'></div>");




        $("#boxCovers").append("<div id='boxCovera' style='text-align: center;'>网址：<input id='cURL' style='width: 200px;' value='http://' />"
							   + "<button value='打开' id='btnoper' class='btnoper'>&nbsp;</button>"
							   + "<button id='cOK' value='确定' class='cOK'>&nbsp;</button>"
							   +"<span> (部分JS、CSS站剪取功能将会受到影响。)，剪取双击等同于确定。</span></div>");
          
		$("#boxCovera").css("z-index",99);
        $("body").css("overflow", "hidden");

        $("body").append("<div id='popupboxs'></div>");
        $("#popupboxs").css({ "width": "850px", "height": "auto", "background": "#FFF" });
        $("#popupboxs").css("border", "#e6e6e6 8px solid");
        $("#popupboxs").css({ "position": "absolute", "top": "50px", "left": "150px", "z-index": 99 });
        $("#popupboxs").html("<div class='box_top'><span class='box_name_left' ></span>" +
            "<span class='box_name'>网页剪取</span><span></span>" +
            "<span class='box_name_right'></span>" +
            "<a id='box_end' title='点此关闭此窗口' href='javascript:box_close();void(0);'  class='box_close' ></a>" +
            "</div>");
//        $("#popupboxs").append("<div  class='box_main'><iframe id='box_url' frameborder='0' " +
//			" marginwidth='0' marginheight='0' width='100%' height='100%' " +
//			" src='ModulePcuting.aspx?url=" + url + "'></div>");
        // $("#popupbox2").show();
      $("#popupboxs").css("z-index", 99);
    });


})


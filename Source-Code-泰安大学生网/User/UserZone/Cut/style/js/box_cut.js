// JavaScript Document

//加载时创建一个div
$(function(){
	$("body").html("<div id='boxCover'></div>");

	  var dw=$(document).width();
	  var dh=$(document).height();
	  $("#boxCover").css("width", dw);
	  $("#boxCover").css("height", dh);
	  $("#boxCover").css({"position":"absolute","top":"0px","left":"0px","z-index":10});
	  $("body").css("overflow", "hidden"); 
	  $(".popupbox").show();
	})

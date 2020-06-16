$j('#full').toggle(function(){
		$j('html,body').css({'height':'100%','overflow':'hidden'});
		$j('.mainWrap,.leftWrap').css({'width':'100%','height':'100%'});
		$j('#previewBox').addClass('fullBox');
		$j('#fullCont').height($j('body').height()-35);
		$j(this).html('还原');
		$j('#hide_show').hide();
	},
	function(){
		$j('html,body').css({'height':'','overflow':''});
		$j('.mainWrap,.leftWrap').css({'width':'','height':''});
		$j('#previewBox').removeClass('fullBox');
		$j('#fullCont').height('auto');
		$j(this).html('全屏');
		$j('#hide_show').show();
		if($j('#hide_show').html()==='展开'){
			$j('#fullCont').css({'height':'1px','overflow':'hidden'});
		}
	}
)

$j('#hide_show').toggle(
	function(){
		$j('#fullCont').css({'height':'1px','overflow':'hidden'});
		$j(this).html('展开');
	},
	function(){
		$j('#fullCont').css({'height':'auto','overflow':'hidden'});
		$j(this).html('收缩');
	}
)

$j('#refresh').click(function(){
	location.href = location.href;
})

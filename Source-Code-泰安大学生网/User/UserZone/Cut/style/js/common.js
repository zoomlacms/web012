window.onerror = function(){return true;};

try { document.execCommand('BackgroundImageCache', false, true);} catch(e) {}
if(typeof(G) == "undefined"){
	G = {};	
}
Global = G;

G.DOMAIN = document.domain;
G.HOST = "http://" + document.domain;

G.SERVER_DOMAIN = function(){
	return document.location.protocol + "//" + document.domain;
};

random = G.random = function (num,endN)
{
	var s="";
	if(endN==null)
	{
		for(var i=0;i<num;i++)
		{
		s+="0";
		}
		var number=parseInt("1"+s);
		return parseInt(Math.random()*number).toString();
	}
	else
	{
		return Math.round(Math.random()*endN);
	}
}

/**
 * 生成15位ID
 */
G.getRID = function(l){l=l||5;var x="123456789qwertyuioplkjhgfdsazxcvbnmQWERTYUIOPLKJHGFDSAZXCVBNM";var a="";for(var i=0;i<l;i++){a+=x.charAt(Math.ceil(Math.random()*100000000)%x.length)}return a};

/**
 * 通过ID获取元素
 * @param {Object} n
 */
var $ = function(n){
    return document.getElementById(n);
};

G.$ = $;

$d = function(o){
	var a=document.createElement("DIV");
	a.appendChild(o);
	a.innerHTML="";
	a=null;
};

/**
 * 取某对象的value属性，比如文本框，文本域
 * @param {Object} n
 */
var $v = function(n){
	return $(n).value;
};

String.prototype.r=function(f,r)
{
	var c=this+"";
	if(f instanceof Array)
	{
		for (var i=0; i<f.length; i++)
		{
			c=c.replace(f[i],r[i]);
		}
	}
	else
	{
		c=c.replace(f,r);
	}
	return c;
};

String.prototype.trim = function(){
    return this.r(/^\s*(.*?)\s*$/, "$1"); // 两端空白字符贪婪匹配，中间字符非贪婪匹配。
};

/**
 * 取文本框值长度
 * @param {Object} o
 */
var vl = function(o){
	var r = ll(o.value);
	try{if(!r){o.value = "";}}catch(e){}
	return r;
};

/**
 * 取字符串长度
 * @param {Object} v
 */
var ll  = function(v){
	var t = v.replace(/&nbsp;/ig,"");
	return t.trim().length;
};

/**
 * 动态给富文本编辑器赋值
 * @param {Object} v
 */
G.def = function(o,v){
	try{
		G.setEditor(o,v);
	}catch(e){
		setTimeout(function(){G.def(o,v);},1000);
	}
};

/**
 * 得到富文本编辑器的值
 * @param {Object} o
 */
G.getEditor = function(o){
    return FCKeditorAPI.GetInstance(o).GetXHTML(true);
};

/**
 * 设置富文本编辑器的值
 * @param {Object} o
 * @param {Object} t
 */
G.setEditor = function(o,t){
    setTimeout(function(){FCKeditorAPI.GetInstance(o).SetHTML(t);},1000);
};

var desk = {};

desk.getTopIndex = function(){return 100;};

desk.posxy=function(d,w){
    var e=[0,0];
    el=d;
    while(el)
    {
		if(!el.parentNode||!el.parentNode.style)
		{
			break;
		}
		if(!w&&el.parentNode.style.position=="relative")
			break;

        e[0]=e[0]+el.offsetLeft;
        e[1]=e[1]+el.offsetTop;
        el=el.offsetParent;
    }
    return e;
};

desk.absxy=function(d) {
    return desk.posxy(d,1);
};

/**
 * 获得元素属性值
 * @param {Object} o
 * @param {Object} a
 */
$a = function(o,a){return o.getAttribute(a);};

G.FlashPlayer = function(url, id, c, d, wh){
    var d = d || ["", ""];
    var l = d[2] ? "1" : "";
    return '<div style=""><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="' + (wh ? wh[0] : "100%") + '" height="' + (wh ? wh[1] : "100%") + '" id="' + id + '"><param name="allowFullScreen" value="true"><param name="movie" value="' + url + '" ><param name="wmode' + l + '" value="Transparent"><param name="quality" value="high"><param name="allowScriptAccess" value="always"><param name="FlashVars" value="' + url.replace(/^[^\?]+\?/, '') + '"><param name="' + d[0] + '" ' + (d[1] || " ").replace(d[0], "value") + '><embed src="' + url + '" quality="high" name="' + id + '" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"  type="application/x-shockwave-flash" allowScriptAccess="always" FlashVars="' + url.replace(/^[^\?]+\?/, '') + '" wmode' + l + '="Transparent" height="' + (wh ? wh[1] : "100%") + '" width="' + (wh ? wh[0] : "100%") + '" ' + c + '></embed></object></div>';
};

var ie = document.all;
G.g = function(o,t){try{return o.getAttribute(t) || "";}catch(e){return "";}};

G.DOM = function(s){
    try {
        var dom_soap = new ActiveXObject("Microsoft.XMLDOM");
        dom_soap.async = false;
        dom_soap.loadXML(s);
        return dom_soap;
    } 
    catch (e) {
        var soap = new DOMParser();
        var dom_soap = soap.parseFromString(s.replace(/>\s+</g, '><'), "text/xml");
        return dom_soap;
    }
}

G.DOM.getRoot = function(d){
    return G.ie ? d.documentElement : d.firstChild;
};

G.lswf = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="100px" height="105px"><param name="allowFullScreen" value="true"><param name="wmode" value="Transparent" /><param name="movie" value="/public/flash/loading.swf"><param name="quality" value="high"><param name="allowScriptAccess" value="always"><embed src="/public/flash/loading.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"  type="application/x-shockwave-flash" allowScriptAccess="always" width="100px" height="105px" wmode="Transparent"></embed></object>';

G.loading = '<table id="loading" valign=center height=100% width=100% style="clear:both;"><tr><td style="width:100%;text-align:center;">' + G.lswf + '</td><tr></table>';

G.load = function(s){return '<table id="loading" valign=center height=100% width=100%><tr><td style="width:100%;text-align:center;font-size:12px;">' + G.lswf + '<br/>' + (s||'') + '</td><tr></table>';};

G.tip = function(s){return '<table id="loading" valign=center height=100px width=100%><tr><td style="width:100%;text-align:center;font-size:12px;vertical-align:middle;">' + s + '</td><tr></table><div style="clear:both;"></div>';}; 

var desk = {};

desk.cs = function(s){return '<table valign=center height=100% align=center><tr><td><div style=filter:alpha(opacity=10);opacity:10;background:#000;color:#FFF>' + s + '</div></td><tr></table>';};

desk.cover = function(){
	var d = $("cover");
	if (d) {
		d.style.display = "";
	}else {
		d = document.createElement("div");
		d.id = "cover";
		with (d.style) {
			position = "absolute";
			top = "0";
			left = "0";
			width = "100%";
			backgroundColor = "green";
			filter = "alpha(opacity=20)";
			opacity = 0.2;
		}
		document.body.appendChild(d);
	}
	var oh = document.documentElement.offsetHeight ,dh = document.documentElement.scrollHeight , odh = oh + dh;
	//d.style.height = dh < odh ? odh : dh + "px";
	d.style.height = (document.all ? odh : dh) + "px";
};

desk.uncover = function(){$("cover").style.display = "none";};

G.setImgError = function(o,i){
	var eimg = "/public/img/widget/";
	var ei = "";
	switch(i){
		case 1 :
			ei = eimg + "big.gif";
			break;
		case 2 :
		case 3 :
			ei = eimg + "middle.gif";
			break;
		//case 3 :
			//ei = eimg + "small.gif";
	}
	
	o.src = ei;
	
	o.onerror = function(){}
}

G.resizeIframe = function(o){
	//alert(o.contentWindow.document.body.scrollHeight);
	var oh = o.contentWindow.document.body.offsetHeight ,dh = o.contentWindow.document.body.scrollHeight , odh = oh + dh;
	o.style.height = (o.contentWindow.document.body.scrollHeight + 20) + "px";//(dh + 100) + "px";//((document.all ? odh : dh) + 0) + "px";
}

/**
 * 获得框架访问地址：alert(G.url('widget/user/add',[["a","1"],["b","2"],["c","3"]]));      //index.php?r=widget/user/add&a=1&b=2&c=3
 * @param {Object} u
 * @param {Object} p
 */
G.url = function(u, p){
	var aw = false;
	try{
		aw = typeof(apache_rewrite) == "undefined" || !(document.location && /\.htm/.test(document.location.href)) ? "" : apache_rewrite;
	}catch(e){}
	
	p = p || [];
	u = u.replace("::", "/");
	
	if (aw) {
		switch (u) {
			case 'widget/view/index':
				u = '/v/';
				p = p[0][1];
				var sp = /s/.test(p);
				p = p.replace("s","");
				u += ((sp ? 's' : '') + (parseInt(p) * 3 + 100)).b64(1) + ".htm";
				p = [];
				break;
			case 'widget/search/search':
				u = '/serach/';
				break;
			case 'widget/special/search':
				u = '/special/';
				break;
			default :
				u = "/?r=" + u + "&";
				aw = 0;
				break;
		}
	}else {
		u = "/?r=" + u + "&";
	}

	var h = [];

	for(var i = 0 ; i < p.length ; i ++){
		h.push(aw ? p[i].join("-").replace("_","|").replace("-","_").replace("|","-") : p[i].join("="));			
	}
	return u + (h.length > 0 ? h.join(aw ? '_' : '&') : "");
}

/**
 * 加载某人社区信息
 * @param {Object} u  : {"username":"nick","nickname":"nick"}
 */
G.loadHome = function(u){
	window.location.href = G.url("home/user/index",[["uid",u.username]]);
	return;
	alert("加载的" + u.nickname + "（" + u.username + "）社区信息，待实现，先不用管，出现此提示即为正常！");
};

/**
 * 打开某人门户
 * @param {Object} u
 */
G.loadPortal = function(u){
	G.open([],"http://" + u + ".codyy.com","_blank"); 
};

/**
 * 头像图片加载错误处理
 * @param {Object} o
 * @param {Object} i
 */
G.setHeadError = function(o,i){
	var eimg = "/public/img/common/unknow.gif";
	var ei = "";
	switch(i){
		case 1 :
			ei = eimg + "big.gif";
			break;
		case 2 :
			ei = eimg + "middle.gif";
			break;
		case 3 :
			ei = eimg + "small.gif";
			break;
	}
	
	o.src = eimg;
	
	o.onerror = function(){}
};

/**
 * 相册封面图片加载出错处理
 * @param {Object} o
 * @param {Object} i
 */
G.setAlbumError = function(o,i){
	var eimg = "/public/img/common/unknow_cover.gif";
	var ei = "";
	/*switch(i){
		case 1 :
			ei = eimg + "big.gif";
			break;
		case 2 :
			ei = eimg + "middle.gif";
			break;
		case 3 :
			ei = eimg + "small.gif";
			break;
	}*/
	
	o.src = eimg;
	
	o.onerror = function(){}
};

/**
 * 相片加载出错处理
 * @param {Object} o
 * @param {Object} i
 */
G.setPhotoError = function(o,i){
	var eimg = "/public/img/common/un_photo.gif";
	var ei = "";
	switch(i){
		case 1 :
			ei = eimg + "big.gif";
			break;
		case 2 :
			ei = eimg + "middle.gif";
			break;
		case 3 :
			ei = eimg + "small.gif";
			break;
	}
	
	o.src = eimg;
	
	//o.onerror = function(){}
};

/**
 * 是否是一个合法的网址，HTTP、HTTPS、FTP等
 * @param {Object} u
 */
G.isURL = function(u){ 

	var strRegex = "^((https|http|ftp|rtsp|mms)?://)"  
					+ "?(([0-9a-z_!~*'().&=+$%-]+: )?[0-9a-z_!~*'().&=+$%-]+@)?" //ftp的user@  
					+ "(([0-9]{1,3}\.){3}[0-9]{1,3}" // IP形式的URL- 199.194.52.184  
					+ "|" // 允许IP和DOMAIN（域名） 
					+ "([0-9a-z_!~*'()-]+\.)*" // 域名- www.  
					+ "([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\." // 二级域名  
					+ "[a-z]{2,6})" // first level domain- .com or .museum  
					+ "(:[0-9]{1,4})?" // 端口- :80  
					+ "((/?)|" // a slash isn't required if there is no file name  
					+ "(/[0-9a-z_!~*'().;?:@&=+$,%#-]+)+/?)$";  
	
	var re=new RegExp(strRegex);  
	
	if (re.test(u)){ 
		return (true);  
	}else{  
		return (false);  
	} 
};

/**
 * 好友选择控件
 * @param {Object} e
 * @param {Object} b
 */
G.chooseFriend = function(e,b){
	$j("#cf_con").remove();
	var top=$j('#selectFriend').offset().top + $j('#selectFriend').outerHeight(true);
		$j(document.body).append('<div id="cf_con" class="getFriends" style="background:#f4f4f4;position:absolute;top:' + top + 'px;left:' + (e.pageX - 240) + 'px;"><h4>选择好友：<a class="close" href="javascript:void($j(\'#cf_if\').parent().remove());">&nbsp;</a></h4><div id="if_load">' + G.load("正在加载好友列表，请稍候……") + '</div><iframe id="cf_if" frameborder=no src="' + G.url("home/user/getFriends",[["box",b]]) + '" style="display:bloclk;width:0;height:0;" onload="$j(\'#if_load\').remove();this.style.width=\'100%\';this.style.height = \'195px\';"></iframe></div>');
		};


String.prototype.cdate=function(s,z)
{
	var dt=new Date(this.r(/\-/g,'/'));
	var now=new Date();
	if(isNaN(dt) )
	{
		return this;
	}
	var dts;
				var y=dt.getFullYear();
			var m=dt.getMonth();
			var d=dt.getDate();
			var h=dt.getHours();
			var i=dt.getMinutes();
			if(y!=now.getFullYear())
			{
				y=dt.getFullYear()+'年';
				y=y.replace("20","");
				m=dt.getMonth()+1+'月';
				d=dt.getDate()+'日';
			}
			else
			{
				y='';
				if(m==now.getMonth())
				{
					m='';
					if(d==now.getDate())
					{
						d='';
					}
					else
					{
						d=dt.getDate()+'日';
					}
				}
				else
				{
					m=(m+1)+'月';
					d=d+'日';
				}
			}
		var dts=parseInt((now-dt)/1000/60);
		if(dts<0)
		{
			return this;
		}
		dts=dts<0?0:dts;
		var t=function(s){return (s?s.replace("y",y).replace("m",m).replace("d",d).replace("h",h<10?"0"+h:h).replace("i",i<10?"0"+i:i):y+m+d+h+':'+(i<10?"0"+i:i))};
		if(z)
		{
			return t(s);
		}
		if (dts<60){
			if(dts==0)
			{
				dts='刚刚';
			}
			else
			{
				dts=dts+'分钟前';
			}
			
		}else if(dts<(60*24)){
		    dts=parseInt(dts/60)+'小时前';
		}else if(dts<(60*24*2)){

		    dts='昨天'+t(s?" ":"&nbsp;h:i");
		}else if(dts<(60*24*3)){

		    dts='前天'+t(s?" ":"&nbsp;h:i");
		}else {
		    dts=t(s);
		}
		return dts;
};

/**
 * CoCo消息发送接口，传入消息对象，稍后实现
 * @param {Object} o
 */
G.sendData = function(o){
	//"<root p2p='1' say='"+o.say+"' />"),o.to,o.type
};

/**
 	通用模板替换
 	var astr = function(v){
		return "---" + v + "---";		
	};
	var s = "a{0},b{1},c{2},";
	var d = [['aaa','bbb','ccc'],['aaa','bbb','ccc'],['aaa','bbb','ccc']];	
	alert(G.parseData(s,d));

	var s = "a{id[astr]},b{name},c{age},";
	var d = [{id:111,name:'myname',age:444},{id:111,name:'myname',age:444},{id:111,name:'myname',age:444}];
	alert(G.parseData(s,d));
 */
/**
 *
 G.parseData = function(template,data){
	var result = [];
	for(var i in data){
			template.replace(/\{(.*?)\}/ig,function(a,b,c){
				var bb = a.match(/\[(.*)\]/);
				var fun = '';
				if(bb){
					fun = bb[1];						
				}
				b = b.replace(/\[(.*)\]/,'');	
				var da = '';
				if(/-/.test(b)){
					b = b.split("-");
					da = data[i][b[0]] + "-" + data[i][b[1]];
				}else{
					da = data[i][b];
				}
				template = template.replace(a,eval(fun + "('" + da + "')"));
			});	
			result.push(template);
		}
	return result.join("");
 };
G.parseData = function(template,data){
	var result = [];
	for(var i in data){
			template.replace(/\{(.*?)\}/ig,function(a,b,c){
				template = template.replace(a,eval((function(){var bb = a.match(/\[(.*)\]/);return bb ? bb[1] : '';})(a) + "('" + data[i][b.replace(/\[(.*)\]/,'')] + "')"));
			});	
			result.push(template);
		}
	return result.join("");
}
 */;

/**
 * 深化，支持函数及多变量参数
 *
 
 var astr = function(v){
		return "---" + v + "---";		
	};
	
	var joinname = function(v){
		v = v.split("---");
		return "---" + (v[0] || v[1]) + "---" + v[2] + "---";		
	};
 
 var s = "a_{id---name---age[joinname]},b_{name},c_{age},";
	var d = [{id:111,name:'nick',age:444},{id:'',name:'fish',age:444},{id:333,name:'frank',age:444}];
	alert(G.parseData(s,d));
 */
G.parseData = function(template,data){
	var result = [];
	for(var i in data){
		    if(typeof(data[i]) == "function") continue;
			var tmp = template;
			tmp.replace(/\{(.*?)\}/ig,function(a,b,c){						
				tmp = tmp.replace(a,eval((function(a){var bb = a.match(/\[(.*)\]/);return bb ? bb[1] : '';})(a) + "('" + (function(b,data){
					b = b.replace(/\[(.*)\]/,'');var da = '';
					if(/-/.test(b)){
						b = b.split("---");
						var ibv = [];
						for(var ib = 0 ; ib < b.length ; ib ++){
							ibv.push(data[i][b[ib]]);								
						}
						da = ibv.join("---");
					}else{
						da = data[i][b];
					}
					if(null !==da ){
						da = da.replace(/'/g,"&#39;");//屏蔽单引号导致的错误
					}
				
					return da ;
				})(b,data) + "')"));
			});	
			result.push(tmp);
		}
	return result.join("");
};

/**
 * 组件平台预览器显示
 * @return 
 * @param path Object
 * @param size Object[optional]
 */
G.wimg = function(path, size){
	var size = size || '';
	var path = (path || "").trim();
	if(/unknow\.gif/i.test(path) || path.length < 1)
	{
		return "/public/img/widget/big.gif";
	}
	if(/http\:\/\//i.test(path) || /\/public\/img\//i.test(path))
	{
	   return path;
	}
	if(/\/thumb\//i.test(path) || /\/viewImg\//i.test(path)){
		return G.WIDGET_IMG_URL + path;
	}
	var tp = path;
	path = path.split("/");
	f = path.pop();
	if(!/uploadDir\//i.test(tp)){
		size = size.replace(/b/i,"128").replace(/s/i,"").replace(/b/i,"128");
		if(size){
			tp = G.WIDGET_IMG_URL + path.join("/") + "/thumb/" + size + "_" + f;
		}else{
			tp = G.WIDGET_IMG_URL + tp;	
		}
	}else{
		if(size){
			size = size.replace(/128/,"b").replace(/64/,"m").replace(/32/,"s");
			tp = path.join("/") + "/" + size + "/" + f;
		}else{
			path = tp;	
		}
	}
	return  tp;
};

/**
 * 社区头像处理
 * @param {Object} path
 * @param {Object} size
 */
G.f = function(path,size){
		var size = size || '';
		var path = (path || "").trim();
		if(/unknow\.gif/i.test(path) || path.length < 1)
		{
			return "/public/img/common/unknow.gif";
		}
		if(/http\:\/\//i.test(path) || /img\/face/i.test(path))
		{
		   return path;
		}
		if(/\/thumb\//i.test(path) || /\/viewImg\//i.test(path)){
			return G.FACE_URL + path;
		}
		var tp = path;
		path = path.split("/");
		f = path.pop();
		if(!/uploadDir\//i.test(tp)){
			size = size.replace(/b/i,"128").replace(/s/i,"128").replace(/m/i,"128");
			if(size && size != "o"){
				tp = G.FACE_URL + path.join("/") + "/thumb/" + size + "_" + f;
			}else{
				tp = G.FACE_URL + tp;	
			}
		}else{
			if(size){
				if(size == "o"){
					return tp;
				}
				size = size.replace(/128/,"b").replace(/64/,"m").replace(/32/,"s");
				tp = path.join("/") + "/" + size + "/" + f;
			}else{
				path = tp;	
			}
		}
		return  tp;
	};
/**	
G.FL = false;
G.frameResize = function(o){
	if(G.FL) return;
	G.FL = true;
	var oh = o.contentWindow.document.documentElement.offsetHeight ,dh = o.contentWindow.document.body.scrollHeight , odh = oh + dh;
	o.style.height = (dh + 100) + "px";//((document.all ? odh : dh) + 0) + "px";
};	
*/

/**
 * 居中提示
 * @param {Object} s
 */
G.ch = function(s){
	return '<center style="margin:10px;">' + s + '</center>';
};
/**
 * 去除字符中空白和多余的逗号
 * var str = " 111,222,,,,,,333,444,444,  ,  , 555";
 * alert(G.au(str));
 * @param {Object} arr
 */
G.au = function(str){// remove multi comma and whitespace
	return (str ? str.replace(/\s+/g,"").replace(/^,+|,+$/g,"").replace(/,+/g,",") : '');
};
/**
 * 返回 (去空 => encodeURIComponent编码)后的字符串
 * @param {Object} text
 */
G.en = function(text){
	return ( typeof text !== "string" )? "": encodeURIComponent( text.replace(/^\s+|\s+$/g, ""));
};
/**
 *  传true:汉字算两个
 *  默认是汉字算一个
 *	alert( G.len(str) );
 * @param {Object} str
 */
G.len = function(str){
	return !arguments[1]? str.length: str.replace( /[^\x00-\xff]/g, "gb" ).length;
};
/**
 * 截取str #位置从start开始的length长度的字符串（汉字算两个）
 * @param {Object} str
 * @param {Object} start
 * @param {Object} length
 */
G.sub = function(str,start,length){
	var size = length,temp = str.substr(start,length);
	while( G.len(temp) > length ){
		temp = str.substr(start,--size);
	}
	return temp;
};
/**
 * 对表单中的表单元素进行数据合法性验证
 * @param {Object} 参数传递的是一个DOM对象
 * @return CheckResult 验证合法返回true,失败返回false
 * @AddDate 2010-07-01 
 * 使用次方法说明
 * 表单元素要添加三个属性 
 * (1) reg="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 要验证的正则表达式
 * (2) group="group1" 表示该元素要进行验证
 * (3) allownull="Yes" 表示该值可以不填，即可以为空值,但如果要填写的话,数据格式就一定要合法
 * <input id="text306" type="text" onfocus="select();" class="textBase" group="group1"
    allownull="Yes" reg="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" tip="只能输入E-Mail"
    value="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
 */
G.DataValidate=function(Obj){			
	var ObjValue= document.getElementById(Obj.getAttribute("id")).value;
    var strGroup=Obj.getAttribute("group");
    var CheckResult=false;
   if(Obj.getAttribute("group")!==undefined && Obj.getAttribute("group").indexOf(strGroup)>-1) //表示该文本框要验证
   {
       if(Obj.getAttribute("allownull")===undefined)  /*表是文本框中不存在allownull属性*/
       {
             if(ObjValue!=="" && ObjValue !==null)  /*在文本框的值不为空的情况下进行验证*/
             {
                var thisRegStr=new RegExp(Obj.getAttribute("reg"));
                if(!thisRegStr.test(ObjValue)) /*表示填写的数据不合法*/
                    CheckResult=false;
                else
                   CheckResult=true;
             }
             else  /*如果文本框中要求不能为空但却赋了空值的话*/
                CheckResult=false;
      }
      else     // 表是文本框中存在allownull属性  allownull!=undefined属性表示次文本框可以为空值
      {
         if(ObjValue==="" || ObjValue===null) 
           CheckResult=true;
         else
         {
            var RegStr=new RegExp(Obj.getAttribute("reg"));
            if(!RegStr.test(ObjValue)) //表示填写的数据不合法
               CheckResult=false;
            else
               CheckResult=true;
         }
      }
   }
  return CheckResult;
};

/**
 * 说明:把要复制的文本文件复制到系统的黏贴板中
 * @return 返回值 true,false
 * 适合Firefox和IE的复制到剪切板JS通用方法 
 */
G.copyToClipboard=function(txt){   
    if(window.clipboardData) 
    {   
       window.clipboardData.clearData();   
       window.clipboardData.setData("Text", txt);
       return true;  
    } 
    else if (window.netscape) 
    {   
         try 
         {   
              netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");   
         } 
         catch (e) 
         {   
              alert("被浏览器拒绝！\n请在浏览器地址栏输入'about:config'并回车\n然后将'signed.applets.codebase_principal_support'设置为'true'");   
         }   
         var clip = Components.classes['@mozilla.org/widget/clipboard;1'].createInstance(Components.interfaces.nsIClipboard);   
          if (!clip)   
               return;   
          var trans = Components.classes['@mozilla.org/widget/transferable;1'].createInstance(Components.interfaces.nsITransferable);   
          if (!trans)   
              return;   
          trans.addDataFlavor('text/unicode');   
          var str = new Object();   
          var len = new Object();   
          var str = Components.classes["@mozilla.org/supports-string;1"].createInstance(Components.interfaces.nsISupportsString);   
          var copytext = txt;   
         str.data = copytext;   
          trans.setTransferData("text/unicode",str,copytext.length*2);   
          var clipid = Components.interfaces.nsIClipboard;   
          if (!clip)   
               return false;   
          clip.setData(trans,null,clipid.kGlobalClipboard);   
               return true;  
     }   
 }
 /**
  * 判断浏览器的类型和版本号
  * @return 返回类型及版本号
  */
 G.getBV=function(){
 	    var Sys = {};
        var ua = navigator.userAgent.toLowerCase();
        var s;
        (s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] :
        (s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] :
        (s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] :
        (s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] :
        (s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;
        if (Sys.ie) 
        {
          return "IE"+"-"+Sys.ie;
        }
        if (Sys.firefox){
           return "firefox"+"-"+Sys.firefox;
        }
        if (Sys.chrome){
          return "chrome"+"-"+Sys.chrome;
        }
        if (Sys.opera) {
          return "opera"+"-"+Sys.opera;
        }  
        if (Sys.safari){
         return "safari"+"-"+Sys.safari;
        }
 };
 /**
  *  方法名:G.replaceSpecialChar() 对输入的字符串中有Html标签的进行相关字符的过滤
  * 
  */
 G.replaceSpecialChar=function(s){
	var reg ="<([^\s]+).*?/?>(?:.*?</\1>)?";  //匹配HTML标签的通用正则表达式
	var ObjReg=new RegExp(reg);
	if(ObjReg.test(s))
	{
	    s = s.replace(">", "&gt;");
	    s = s.replace("<", "&lt;");
	    s = s.replace(" ", " &nbsp;");
	    s = s.replace("\"", "&quot;");
	    s = s.replace("\'", "&#39;");
	    s = s.replace("\n", "<br/> ");
	}
	return s;
 };
 /**
  * 功能:比较两个时间是的大小,精确到秒
  * 比较格式:2010-07-12 14:54:25 
  * @param {Object} d1  比较的第一个时间
  * @param {Object} d2  比较的第二个时间
  */
 G.comparedate=function(d1,d2) 
 {
 	if(Date.parse(d2.toString().replace("-","/")) > Date.parse(d1.toString().replace("-","/")))
    {
       return true;
    }
    else 
    {
      return false;
    } 
}
/// 模板转换
	/// @param {String} 模板代码
	/// @param {Object} 值集合
	/// @param {Boolean} 是否缓存模板，默认为是
	/// @return {String} 转换后的代码
	
	
/**
 * 例子:
 * <div id="test">
	<!--
	<ul>
	<# for (var i = 0; i < datas.length; i++) { #>
	<li><a href="http://<#=datas[i].url#>"><#=datas[i].title#></a></li>
	<# } #>
	</ul>
	-->
	</div>
	<div id="getTable">
	</div>
 * <script type="text/javascript">
    var values = {
　　    datas : [
	　　   { url : "www.codyy.com", title : "阔地网络" },
	　　　　{ url : "g.cn", title : "谷歌" },
	　　　　{ url : "163.com", title: "网易" },
	　　　　{ url : "discuz.com", title : "康盛" },
	　　　　{ url : "www.baidu.com", title : "百度" },
	　　　　{ url : "www.sina.com", title : "新浪网络" },
	　　　　{ url : "www.qq.com", title : "腾讯科技" }
　　]
};  
$("#test").html( G.parseTpl($("#test").html().replace(/(?:^\s*<!--)|(?:-->\s*$)/g, ""), values,true)); // 把注释符干掉
</script>
 (1)  @param {Object} tpl 表示模板代码,这个是事先定好在页面上的模块
        如 <div id='test'> 中内容就是tpl
 (2)  @param {Object} JsonArr 表示的是传递的一个Json格式的数组   
        如上列中 JsonArr=values;
 (3)  @param {Object} isCached  该参数表示是否要缓存 默认为是
        如上例中的G.parseTpl($("#test").html().replace(/(?:^\s*<!--)|(?:-->\s*$)/g, ""), values,true) 中的true 可以省掉
 (4)   返回值为一个把Json数组的数据填充到模板后的一串html代码 
        格式为:  <ul> 
                    <li><a href="http://www.codyy.com">阔地网络codyy</a></li>    
                    <li><a href="http://g.cn">谷歌</a></li>    
                    <li><a href="http://163.com">网易</a></li>    
                    <li><a href="http://discuz.com">康盛</a></li>    
                    <li><a href="http://www.baidu.com">百度</a></li>    
                    <li><a href="http://www.sina.com">新浪网络</a></li>    
                    <li><a href="http://www.qq.com">腾讯科技</a></li>    
                </ul>  
          然后再把这些返回的代码贴到<div id='test'>中去,让浏览器解析    
   
   如果把上面的数据瓶装成一个表格,G.parseTpl()同样试用,则再<div id="getTable"></div> 中应该拼如下模块就可以了
   <!--
	<table style="width:100%;border:1px solid blue;">
	<tr><td>公司名称</td><td>网站地址</td></tr>
	<# for(var i=0;i<datas.length;i++) { #>
	    <tr>
	    <td><#=datas[i].title#></td>
	    <td><a href="http://<#=datas[i].url#>"><#=datas[i].url#></a></td>
	    </tr>
	<# } #>
	</table>
-->
                    
 */	
var tplCache = {}		// 模板缓存 
G.parseTpl=function(tpl, JsonArr, isCached) 
{
 if (null===tpl) { return; }
 if (null===JsonArr) { return tpl; }
 var fn = tplCache[tpl];
 if (!fn) 
 {
	fn = new Function("obj", "var _=[];with(obj){_.push('" +
			tpl.replace(/[\r\t\n]/g, " ")
			.replace(/'(?=[^#]*#>)/g, "\t")
			.split("'").join("\\'")
			.split("\t").join("'")
			.replace(/<#=(.+?)#>/g, "',$1,'")
			.split("<#").join("');")
			.split("#>").join("_.push('")
			+ "');}return _.join('');");
	isCached !== false && (tplCache[tpl] = fn);
 }
return fn(JsonArr);
}
//创建一个XmlDom对象
G.createXmlDom=function() 
{
	var a = [
	    "MSXML4.DOMDocument",
	    "MSXML3.DOMDocument",
	    "MSXML2.DOMDocument",
	    "MSXML.DOMDocument",
	    "Microsoft.XmlDom"
	 ];
	for (var i = 0; i < a.length; i++) 
	{
	    try 
		{
	        var o = new ActiveXObject(a[i]);
	        return o;
	    } catch (e) { }
		
    }
     return false;
};
/**
    XPath.loadXML(path)
    加载xml文件
    path为xml文件路径;
    返回值为xml的根节点
*/
G.L_Xml_F=function(path) 
{
       var xmlDoc = null;
       if (window.ActiveXObject) {
           xmlDoc = G.createXmlDom();
       } else if (document.implementation && document.implementation.createDocument) {
           xmlDoc = document.implementation.createDocument("", "", null);
       } else {
           alert('Your browser cannot handle this script');
       }
       xmlDoc.async = false;
       xmlDoc.load(path);
       return xmlDoc;
}
/** <summary>
    把Xml字符串转化为Xml
    </summary>
    <param name="s" type="String">Xml字符串</param>
    <param type="object">Xml文档</param> 
*/
G.ToXml=function(s)
{
	var XmlD;
	if ($.browser.msie) {
	    XmlD = new ActiveXObject("Microsoft.XMLDOM");
	    XmlD.loadXML(s);
	} else if ($.browser.mozilla) {
	    XmlD = new DOMParser().parseFromString(s, "text/xml");
	};
	return XmlD;
}
 /** 
    <summary>
    把Xml文档转化为字符串
    </summary>
    <param name="xmlDocument" type="object">Xml文档</param>
    <param type="String">Xml字符串</param>
*/
G.XmlDocumentToString=function(d) 
{
	if (d != undefined) 
	{
	    if ($.browser.msie) 
		{              //这里调用的是jQuery判断浏览器类型的方法
	        return d.xml;
	    } 
		else if ($.browser.mozilla) 
		{
	        return new XMLSerializer().serializeToString(d);
	    }
	}
}
/**
    读取当前节点的内容
    */
G.getNodeValue=function(o) {
	var s = "";
	for (var i = 0; i < o.childNodes.length; i++) 
	{
		if (o.childNodes[i].hasChildNodes())  //如果当前子节点还存在子节点的话
		{ 
		    s += G.getNodeValue(o.childNodes[i]); //递归读取子节点包含的内容
		}
		else 
		{
		    s += o.childNodes[i].nodeValue;
		}
	}
	return s;
}
/**
 * 利用String类的prototype原型属性对数组方法进行扩展toCheck(ArrayName) 
 * @param {Object} SpecArr 为一个含有特殊字符(非法字符的数组)
 * 如:var SpecialArr=["<","%","\"",">","~","&","'","^","+","-","$","@","#","￥"]; 
 * 返回值:
 * (1) 如果在text,textarea这种文本框中输入的字符串中没有用户认为的非法字符的话那么reArr=[CheckRest],即数组元素只有一个.
 * (2) 如果text,textarea在文本框输入中含有非法字符的话(可能存在重复非法字符),通过扩展的方法Str.toCheck(UnLegalArrName)
 *     可以返回用户输入的字符串中有那些非法字符,通过下面对Array扩展的方法RemoveExists()可以消除返回非法字符数组中重复项目.
 * (3)下面是在页面中调用此方法
 *       var v = $j.trim($j("#quick_type").val());
 *       var str="";
		 var SpecialArr=["<","%","\"",">","~","&","'","^","+","-","$","@","#","￥","\\","\/"];
		 var returnAr=v.toCheck(SpecialArr);
		if(returnAr.length>1 && !returnAr[returnAr.length-1])
		{
			for(var i=0;i<returnAr.length-1;i++){
				str+=returnAr[i]+" ";
			}
			alert("不能含有"+str+"非法字符");
			return;
		}    
 */
String.prototype.toCheck=function(SpecArr){
     var CheckResult=true;
	 var reArr=[];
     for(Count = 0; Count < this.length; Count++) 
     {
         TempChar = this.substring(Count, Count + 1); //对输入的每个字符进行截取
         for(var i=0;i<SpecArr.length;i++)
         {
            if (SpecArr[i].indexOf(TempChar, 0) === 0) 
            {
				CheckResult = false;
				reArr.push(TempChar);
			}
         }
     }
	 if (reArr.length > 0) {
	 	reArr = reArr.RemoveExists();
	 }
     reArr.push(CheckResult);
     return reArr;
};
/**
 *  String的扩展方法toLegalChar()
 *  说明:
 *  (1) 此方法是对用户输入的一些特殊字符全部转换为全角.
 *  (2) 对数字,小写字母,大些字母不进行转换,进行转换的字符如下:!,@,#,$,%,^,*,(,),[,],<,>,{,},+,-,=,~,`
 *  (3) 对' "" 也进行转换
 *    例子:
 *    var str="0123456789!()[]<>下面请你回答问题，中国@#人民$%解放^&*军&6%$,于何时建立?"; 
 *        str=str.toLegalChar();
 *    转换之后的内容为:str=0123456789！（）［］＜＞下面请你回答问题，中国＠＃人民＄％解放＾＆＊军＆6％＄，于何时建立？    
 */
String.prototype.toLegalChar=function(){
     var tmp = ""; 
     for(var i=0;i<this.length;i++) 
     { 
       if(this.charCodeAt(i)==32) 
       { 
           tmp+=String.fromCharCode(12288); 
       }
       else if(this.charCodeAt(i)<127) 
       {
	   	   if(this.charCodeAt(i)===44 || this.charCodeAt(i)===61)//对,，. 。不进行转换
           {
             tmp+=this.substr(i,1);
           }
           else if(this.charCodeAt(i)>=48 && this.charCodeAt(i)<=57) //对0-9不进行转换
           {
              tmp+=this.substr(i,1);
           }
		   else if(this.charCodeAt(i)>=65 && this.charCodeAt(i)<=90) //对大写字母不进行转换
           {
             tmp+=this.substr(i,1);
           }
           else if(this.charCodeAt(i)>=97 && this.charCodeAt(i)<=122) //对小写字母不进行转换
           {
             tmp+=this.substr(i,1);
           }
           else
           { 
              tmp+=String.fromCharCode(this.charCodeAt(i)+65248); 
           }
       }
       else 
          tmp+=this.substr(i,1);
     } 
     return tmp;
}

/**
 *
 *  利用Array类的prototype原型属性对数组方法进行扩展RemoveExists() 
 *  功能:去除数组中相同的项
 *  如Var ExampleArr=["11","22","11","33","44","55","55","22","88","66","44","11",false]
 *  ExampleArr数组中存在很多重复的项,通过ExampleArr=ExampleArr.RemoveExists()方法可以消除重复元素
 *  并重新返回一个新的数组.
 */
Array.prototype.RemoveExists=function(){
    var EmArr=[];
    for(i=0;i<this.length;i++)
    {
      if(this[i]!==null)
      { 
          for(j=i+1;j<this.length;j++) //枚举并用被比较元素的后面的元素与被比较元素来比较
          {
               if(this[j]!==null)
               {
                   if(this[i]===this[j])  //如果被比较后面有元素与被比较数相同
                   { 
                     this[j]=null;  //被比较后面所有与被比较数相同的元素都变为null
                   }
               }
               else{ 
                  continue;   
              }
          }
      }
      else{ 
        continue;
      }
    }
    for(i=0;i<this.length;i++)
    {
     if(this[i]===null){continue;}  //如果元素中有null值，那么跳出该轮循环，接着去执行下一轮循环。
       EmArr.push(this[i]);
    }
    return EmArr;
}

/**
 * 功能:
 *    动态删除数组中指定位置的元素,并返回一个新的数组.
 *    @param {Object} Index 表示要删除的元素在数组中的下标,从0开始  
 */
Array.prototype.removeByIndex=function(Index) 
{  
  if(parseInt(Index)<0 || parseInt(Index)>this.length-1)  //如果Index<0,或者大于数组的最大下标,则不进行任何操作。
    return this;
  else
    return this.slice(0,Index).concat(this.slice(Index+1,this.length));
}






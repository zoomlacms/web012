/*
增加eval方法，用于执行js代码2009-1-6
string.load()方法用于加载外部js资源，同步方式。load()函数为异步加载
*/

/*<![CDATA[*/
SP=String.prototype;
/**
 *显示字符串省略
 */
SP.skip=function(l)
{
	return this.length>l?this.substr(0,l)+"……":this;
};
SP.frag=function(c)
{
	var a=[];
	this.replace(eval("/[\s|\S]{"+c+"}/g"),function(all)
	{
		a.push(all);
	}
	);
	a.length==0?a=[this]:0;
	return a;
};
SP.load=function(t)
{
	window.jsPatch?jsPatch.push(t):0;
	new Ajax().send(t||(this.r(/\./g,"/")+".js"),function(a,b,c){
			a.eval();
		},"get","",false);//同步请求
};
SP.md5=function(t)
{
var r;
	new Ajax().send("/php/plugin/md5.php?text="+this,function(a,b,c){
			r=a;
		},"get","",false);//同步请求
		return r;
};
SP.eval=function()
{
	var h = document.getElementsByTagName('HEAD').item(0);
        var s = document.createElement( "script" );
        s.language = "javascript";
        s.type = "text/javascript";
        s.defer = true;
        s.text = this;
        h.appendChild( s );
};
/**
 * 判断字符串中是否不包含另一个子字符串。
 * @param {String} str 指定的子字符串。
 * @return {Boolean} true, 如果不包含；反之,false
 * @copyright (c) 2008 by Codyy.
 */
SP.no = function(str){
    return !this.contains(str);
    //return this.indexOf(str)==-1;
};
/**
 * 判断字符串是否包含有指定的子字符串。
 * @param {String} str 指定的子字符串。
 * @return {Boolean}
 */
SP.contains = function(str){
    return this.indexOf(str) >= 0;
};
/**
 * 获取地址栏中的URL地址参数的值。键值对。
 * @param {String} strname key, 关键字，必选项。id是要获取的参数的变量名。如a=123中的a。
 * @return {String} 键值对的值，如a=123中的123。
 * @deprecated 推荐使用Request.getParam和Request.getParams方法。
 */
SP.request = function(key){
    var v = this.r(new RegExp(".*(?:\\?|&|\\b)" + key + "=(.*?)(?:&|#|$).*", "i"), "$1");
    return v === this.valueOf() || v === "&" || v === "#" ? "" : v;

};
/**
 * 以指定键获取形如key1=value1&key2=value2的键值对中的对应值。
 * @param {String} key 指定的键。
 * @return {String} 返回指定键所对应的值。
 * @deprecated 推荐使用Request.getParam和Request.getParams方法。
 */
SP.getRequestParam = function(key){
    return this.request(key);
};
/**
 * 替换字符串中所有的形如{var}样的字符串成变量var的值。
 * 仅支持全局变量，尚未支持局部变量
 * @return {String} 返回解析后的字符串。
 */
SP.mode = function(){
    var r = this.toString();
    if (/{[\w|\.]+}/.test(this)) {
        var matches = this.match(/{([\w|\.]+)}/g);
        for (var i = 0; i < matches.length; i++) {
            try {
                r = r.r(matches[i], eval(matches[i].r("{", "").r("}", "")));
            }
            catch (e) {
            }
        }
    }
    return r;
};
/**
 * 字符串批量替换
 * @param 数组
 * @return string
 * @type string
 */
SP.alter = function(arr, order){
    var str = this.toString();
    for (var i = 0; i < arr.length; i++) {
        try {
            if (order) {
                str = str.r(typeof(arr[i][1]) == "object" ? arr[i][1] : new RegExp(arr[i][1].r(/([\(\)\[\]\{\}\^\$\+\-\*\?\.\"\'\|\/\\])/g, "\\$1"), "g"), arr[i][0]);
            }
            else {
                str = str.r(typeof(arr[i][0]) == "object" ? arr[i][0] : new RegExp(arr[i][0].r(/([\(\)\[\]\{\}\^\$\+\-\*\?\.\"\'\|\/\\])/g, "\\$1"), "g"), arr[i][1])
            }
        }
        catch (e) {
        }
    }
    return str;
};
/**
 * 去掉字符串左右两边无效空格。
 * @return {String}
 */
SP.trim = function(){
    return this.r(/^\s*(.*?)\s*$/, "$1"); // 两端空白字符贪婪匹配，中间字符非贪婪匹配。
    //return this.toString().r(/^\s*(\S|\S.+\S)?\s*$/,"$1");
};

/**
 * 检查当前字符串对象是否是空白字符串（全部是空格，回车，换行，换页等）。
 * @return {Boolean} 如果全部是空白字符串，则返回true，否则返回false。
 */
SP.isBlank = function(){
    return /^\s*$/.test(this);
};

/**
 * 将类似"#ff0000"这样的字符串解析为颜色值，并将该值以指定系数转为较浅的颜色值。
 * @exception {SyntaxError, RangeError} 颜色字符串或alpah系数不合法时抛出异常。
 * @param {Number} a 指定alpha系数，范围在[0,1]之间。
 * @return {String} 转换后的字符串，由于特殊字符传输问题，返回值没有#前缀。
 */
SP.alphaColor = function(a){
    if (!/^#[0-9a-fA-F]{6}$/.test(this))
        return;
    if (!(a instanceof Number || typeof a === "number") || a < 0 || a > 1)
        return;
    var c = this.r("#", "").match(/../g);
    for (var i = 0, l = c.length, t; i < l; i++) {
        t = parseInt(0xFF - (0xFF - parseInt(c[i], 16)) * a); // parseInt(parseInt(c[i],16)*a + 0xFF*(1-a));
        c[i] = (t < 16 ? "0" : "") + t.toString(16);
    }
    return "" + c.join("");
};

/**
 * 对字符串进行base64编码。
 * @param {Object} s 可选项。true 或 false，true则为base64编码，false则为 “_______base64”+base64编码，指明为base64编码，以便解码时识别。
 */
SP.b64 = function(s){
    var input = this;
    //var arr=[["＜br＞","\n"],["│","|"],["＆","&"],["＝","="],["＋","+"],["＜quot＞","'"],["＇","'"],["＂",'"']];
    //return input.alter(arr,1);
    var keyStr = "ABCDEFGHIJKLMNOP" + "QRSTUVWXYZabcdef" + "ghijklmnopqrstuv" + "wxyz0123456789+/" + "=";
    //input = input.r(/[\']/g,"\'").r(/\"/g,'\"');
    var output = "";
    input = encodeURI(input);
    var chr1, chr2, chr3 = "";
    var enc1, enc2, enc3, enc4 = "";
    var i = 0;
    do {
        chr1 = input.charCodeAt(i++);
        chr2 = input.charCodeAt(i++);
        chr3 = input.charCodeAt(i++);
        enc1 = chr1 >> 2;
        enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
        enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
        enc4 = chr3 & 63;
        if (isNaN(chr2)) {
            enc3 = enc4 = 64;
        }
        else
            if (isNaN(chr3)) {
                enc4 = 64;
            }
        output = output + keyStr.charAt(enc1) + keyStr.charAt(enc2) + keyStr.charAt(enc3) + keyStr.charAt(enc4);
        chr1 = chr2 = chr3 = "";
        enc1 = enc2 = enc3 = enc4 = "";
    }
    while (i < input.length);
    return (s ? "" : "_______base64") + output;
};
SP.ub64 = function(){
    var input = this.toString();
    //return (input);
    if (input.trim().indexOf("_______base64") != 0) {
        return input;
    }
    input = input.r("_______base64", "");
    var keyStr = "ABCDEFGHIJKLMNOP" + "QRSTUVWXYZabcdef" + "ghijklmnopqrstuv" + "wxyz0123456789+/" + "=";
    var output = "";
    var chr1, chr2, chr3 = "";
    var enc1, enc2, enc3, enc4 = "";
    var i = 0;
    var base64test = /[^A-Za-z0-9\+\/\=]/g;
    input = input.r(/[^A-Za-z0-9\+\/\=]/g, "");
    do {
        enc1 = keyStr.indexOf(input.charAt(i++));
        enc2 = keyStr.indexOf(input.charAt(i++));
        enc3 = keyStr.indexOf(input.charAt(i++));
        enc4 = keyStr.indexOf(input.charAt(i++));
        chr1 = (enc1 << 2) | (enc2 >> 4);
        chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
        chr3 = ((enc3 & 3) << 6) | enc4;
        output = output + String.fromCharCode(chr1);
        if (enc3 != 64) {
            output = output + String.fromCharCode(chr2);
        }
        if (enc4 != 64) {
            output = output + String.fromCharCode(chr3);
        }
        chr1 = chr2 = chr3 = "";
        enc1 = enc2 = enc3 = enc4 = "";
    }
    while (i < input.length);
	try{var s=decodeURI(output);}catch(e){
	var s=output;
	}
    if (s.length < 2) {
        return "";
    }
    return s;
};

SP.content = function(arg, feed,method){
	var r;
    new Ajax().send(this,function(a,b,c){r=a;},method,arg,false);//同步请求
    feed ? feed(r) : "";
    return r;
};

SP.id = function(){
    var s = this;
    return s.r("dialog", "").split("_")[0];
};

/**
 * 取得汉字对应的拼音。取ASCII码部分使用VBScript实现，且只有常用字的拼音，甚至连“麒麟”都没有。
 * @param {Boolean} full 是否返回全拼。
 * @return {String} 返回字符串对应的拼音。
 * @deprecated 建议使用SP.pinyin()
 */
SP.spell = function(full){
	var r;
	new Ajax().send("/php/plugin/getspell.php?"+now(),function(a,b,c){r=a;},"post","sg="+full+"&words="+this,false);//同步请求
	return r;
};

/**
 * 返回字符串中汉字对应的拼音，
 *   如果指定分隔符，则每个拼音以分隔符间隔（不能找到拼音的字符保持原样，包括间隔），否则各拼音相连；
 *   如果要求不返回全拼，则返回拼音首字母；否则返回全拼；
 *   如果指定处理函数，则在不能找到拼音时（包括英文字符），使用指定函数处理并返回，否则原样返回。
 * @param {String} p 指定分隔符。
 * @param {Boolean} b 指定全拼要求。
 * @param {Function} f 指定处理函数。
 * @return {String} 返回字符串的拼音。
 * @example <code>
 * "你好，hotoo.".pinyin(" ", true, function(c){
 * 		return "?";
 * });
 * </code>
 * result : "ni hao，hotoo."
 */
SP.pinyin = function(){
    return this.spell();
};

String.prototype.fullpin = function(p){
	return this.r(/it/i,"aaattt").pinyin(p).r(/1/g,"yi").r(/2/g,"er").r(/3/g,"san").r(/4/g,"si").r(/5/g,"wu").r(/6/g,"liu").r(/7/g,"qi").r(/8/g,"ba").r(/9/g,"jiu").r(/0/g,"ling");
};


SP.clearChar = function(){
    return this.r(/[-\~!@#\$%\^&\*\.\(\)\[\]\{\}<>\?\\\/\"\'\s]/g, "");
};

SP.clearCharTrim = function(){
    return this.r(/[-\~!@#\$%\^&\*\.\(\)\[\]\{\}<>\?\\\/\"\']/g, "").trim();
};

SP.transChar = function(){
    return this.r(/\'/g, "@apos;").r(/&/g, "@and").r(/\?/g, "@why").r(/\"/g, '@quot;');
};

SP.restoreChar = function(){
    return this.r(/\@apos\;/g, "\'").r(/\@and/g, "&").r(/\@why/g, "?").r(/\@quot\;/g, '"');
};

SP.mE=function(d)
{
	if(d)
	{
		return "[msn]"+encodeURI(this.replace(/#/g,'%23')).replace(/%/g,'#');
	}
	return "[me]"+escape(this.r(/(.)(.)(.)/g,"$2$3$1")).r(/\%/g,"#");//
};
SP.mD=function()
{
	if(this.indexOf("[msn]")==0)
	{
		try{return unescape(decodeURI(this.r("[msn]","").r(/\#/g,"%"))) ;}catch(e){return unescape(this.r("[msn]","").r(/\#/g,"%"));}
	}
	if(this.indexOf("[me]")==0)
	{
		return unescape(this.substring(4).r(/\#/g,"%")).r(/(.)(.)(.)/g,"$3$1$2");
	}
	return this;
};
SP.mEE=function(d)
{
	if(d)
	{
		return this;
	}
	return "[mee]"+escape(this).r(/\%/g,"#");
};
mE=function(s){return s.mE()};
mD=function(s){return s.mD()};
/**
 * 得到字符串的真实长度 (双字节换算为两个单字节)
 * @ return {Number, Integer}
 */
SP.cnlen = function(){
	return this.r(/[^\x00-\xff]/g,"xx").length;
};

 /**
 * 将HTML转换成纯文本（去掉标签）使用text更简短易理解
 * @ return {String}
 * @ example "<h3>titles</h3><p>content texts</p>others.".text();
 * result:"titlescontent textsothers."
 */
SP.text = function(){
	return this.r(/<[^>]*>/g, '');
};


SP.proxyHttp=function(s,php)
{
	return this.r(s,(php?php:"http://comic.qihoo.com/discuz/proxy.php?sid=195306&code=Q9vaZ99pXXwODxVWydFt%2BKaE9jaucRvfgKvMfW6cOzxeyCq3nA&url=")+"$1");
};

/**
 * 字符串样式清理，style,class
 */
SP.cStyle = function(){
	return this.r(/position:/ig,"positino:").r(/<a /ig,"<a target=_blank ");
};

/**
 * 字符串数据分段发送截取
 */
SP.subData = function(chr){
	var as = this.length / 1014;
	var ass = parseInt(as);
	as = ass ? ass + 1 : ass;
	as = as < 1 ? 1 : as;
	var arr = [];
	for(var i = 0 ;i < as ; i ++ ){
		arr[i] = this.substring(i * 1016,(i + 1)* 1016) + (chr?"":"[back]");
	}
	arr[arr.length - 1] = arr[arr.length - 1].r("[back]","[end]");
	return arr;
};
SP.isMail=function()
{
	var a=this.split(/[^\d\w\.\@]+/);
	var b=1;
	for (var i=0; i<a.length; i++)
	{
		b=b&&/[\w|\d|\.]+@[\w|\d]+\.[\w|\d|\.]+/.test(a[i]);
	}
	return b;
};

SP.unicode = function(){
	return this.r(/[^\u0000-\u00FF]/g,function($0){return escape($0).r(/(%u)(\w{4})/gi,"&#x$2;")});
}
SP.r=function(f,r)
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
SP.reScript = function(){

    var html = this;
    var arr = [];
    var i = 0;
	if(1)
	{
    try {
        var src = html.match(/<script [^>]*src\s*\=\s*[\'|\"]?[^<|^>|^\s]+[\'|\"]?[\s|\>]/gi);
		var s=[];
		for (var i=0; i<src.length; i++)
		{
			s[i]=src[i].r(/<script [^>]*src\s*\=/gi, "").r(/[\s|\|\'|\">]/g, "");
		}
		// alert(src)
        imports(s);
    }
    catch (e) {
    }
	}
    try {
		var r=/\<script[^>]*>([\s|\S]+?)\<\/script\>/gi;
        var ms=html.match(r);
		if(!ms)
		{
		  return;
		}
		for (var i=0; i<ms.length; i++)
		{
			ms[i]?arr[i] = ms[i].r(r,"$1"):0;
		}

        var shell = arr.join(";");
    }
    catch (e) {
    }
    try {
        eval(shell);
    }
    catch (e) {
		try{DM( "name: " + e.name ,
" message: " + e.message ,
" lineNumber: " + e.lineNumber ,
" fileName: " + e.fileName ,
" stack: " + e.stack ,"\n"+shell);}catch(e){}
        return shell;
    }
    return shell;
};

/**
 * 字符串批量替换
 * @param 数组
 * @return string
 * @type string
 */
String.prototype.alter = function(arr, order){
    var str = this.toString();
    for (var i = 0; i < arr.length; i++) {
        try {
            if (order) {
                str = str.replace(typeof(arr[i][1]) == "object" ? arr[i][1] : new RegExp(arr[i][1].replace(/([\(\)\[\]\{\}\^\$\+\-\*\?\.\"\'\|\/\\])/g, "\\$1"), "g"), arr[i][0]);
            }
            else {
                str = str.replace(typeof(arr[i][0]) == "object" ? arr[i][0] : new RegExp(arr[i][0].replace(/([\(\)\[\]\{\}\^\$\+\-\*\?\.\"\'\|\/\\])/g, "\\$1"), "g"), arr[i][1])
            }
        } 
        catch (e) {
        }
    }
    return str;
};

function now(f,t)
{
    var D=t?t:new Date();
    var y=D.getFullYear();
    var m=D.getMonth()+1;
	var w=D.getDay();
    m=m<10?"0"+m:m;
    var d=D.getDate();
    d=d<10?"0"+d:d;
    var h=D.getHours();
    h=h<10?"0"+h:h;
    var i=D.getMinutes();
    i=i<10?"0"+i:i;
    var s=D.getSeconds();
    s=s<10?"0"+s:s;
    var ms=D.getMilliseconds();
    if(!f)
    {
        return y+"-"+m+"-"+d+" "+h+":"+i+":"+s;
    }
    var c=":";
    var p=" ";
    var l="-";
    var r="";
    if(f!=null)
    {
        try
        {
            l=f.match(/^\w(\W?)\w/)[1];
        }catch (e)
        {
            l="-";
        }
    }
    r=f.alter([["ms",ms],["m",m],["y",y],["d",d],["h",h],["i",i],["s",s],["w",w]]);
    return r;
};

ndate = now;
/*]]>*/
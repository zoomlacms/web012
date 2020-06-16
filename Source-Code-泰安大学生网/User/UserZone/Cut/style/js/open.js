/**
 * <p>
 * file.js Created on date time
 * </p>
 * 
 * <p>
 * Title:  打开新窗口
 * </p>
 * 
 * <p>
 * Description:   用POST方式打开新窗口，避免浏览器的拦截
 * </p>
 * 
 * <p>
 * Copyright: Copyright (c) codyy.com
 * </p>
 * 
 * <p>
 * Company: Codyy
 * </p>
 * 
 * @author <a href=mailto:nick@codyy.com>Nick Yau</a>
 * @version 1.0
 * 
 * @example : G.open([["userName","nick"],["address","china"]],"http://widget.codyy.com","_blank");
 */

/**
 * 打开新窗口
 * @param {Array}  v	需要传递过去的数组，二维数组形式存储，参数名：值，目标页面需要用POST方式来获取数据
 * @param {String} u	目标地址（URL）
 * @param {String} t	窗口打开形式：新开：_blank，当前：留空，指定目标：目标ID
 */
G.open = function(v, u, t, m){
	v = v || [];
	t = t || "";
	m = m || "GET";
	var f = document.getElementById("open");
	if(f){
		f.innerHTML = "";
	} else {
		f = document.createElement("FORM");
		f.id = "open";
		f.name = "open";
		f.method = m;
		document.body.appendChild(f);
	}
	
	f.target = t;
	
	var uu,us;
	
	if(u.indexOf("?")){
		uu = u.split("?");
		if(uu.length > 1){
			uu = uu[1];		
			uu = uu.split("&");
			for(var i = 0 ;i < uu.length ; i ++){
				var si = uu[i];			
				si = si.split("=");
				v.push([si[0],si[1]]);
			}
		}
	}
	var aw = false;
	try{
		aw = typeof(apache_rewrite) == "undefined" && document.location && /\.htm/.test(document.location.href) ? "" : apache_rewrite;
	}catch(e){}
	var p = /web\/widget\/preview\/index.php/.test(u);
	//u = u.replace("index.php","index.htm");
	//u = p ? u.replace("index.php","index.htm") : u;
	var s = "";
	if (p) {
		u = u.replace("web/widget/preview/index.htm",G.pPath(v[0][1]));
	}else if (/web\/widget\/view\/index.htm/.test(u)){
		var ss = [];
		var rc = ['A','B','C','D','E','F','G'];
		for (var i = 0, j = v.length; i < j; i++) {
			var v0 = v[i][0];
			var v1 = v[i][1];
			ss[ss.length] = v0 + "_" + v1;
		}
		u = u.replace("web/widget/view/index.htm",ss.join("_") + rc[random(0,6)]  +  ".htm");
	}else if(aw && /\/\.htm/.test(u)){
		var ru = [];
		for(var i = 0 ; i < v.length ; i ++){
			ru.push(v[i].join("-").replace("_","|").replace("-","_").replace("|","-"));
		}
		u = u.replace("/.htm","/" + ru.join("_") + ".htm")
	}else {
		var ut = "";
		
		var s = "";
		for (var i = 0, j = v.length; i < j; i++) {
			var v0 = v[i][0];
			var v1 = v[i][1];
			s += '<input type="hidden" name="' + v0 + '" id="' + v0 + '" value="' + v1 + '"/>';
			
		//if(p && v0 == "lid") ut += v0 + "=" + v1;
		}
	}
	
	f.action = u;// + (ut ? "?" + ut : "")
	f.innerHTML = s;
	f.submit();
};
/**
 * <p>
 * head.js Created on date time
 * </p>
 * 
 * <p>
 * Title:  ***
 * </p>
 * 
 * <p>
 * Description:   ***
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
 */

G.H = {
	m : "请输入你要搜索的关键字...",
	trim: function( text ) {
		return (text || "").replace( /^\s+|\s+$/g, "" );
	},
	search : function(){
			var st = G.$("search_type").value;
			var sk = this.trim(G.$("search_key").value);
			sk = sk.replace("请输入你要搜索的关键字...",'');
			if(false && sk.length < 1){
				alert("请输入搜索关键字！");
				G.$("search_key").focus();
				return;
			}
			//关键字长度控制
			if(sk.length > 32){
				alert("关键字长度不能超过32个字符");
				G.$("search_key").select();
				return false;
			}
			if(["&","'",'"'].checkStr(sk)){
				alert("输入的含有非法字符");
				return false;
			}
			var ss = "";
			try {
				ss = G.$("search_sort").value;
			} 
			catch (e) {
				ss = ssort;
			}
			
			var u = [];
			
			if(st){
				u.push(["stype",st]);
			}
			
			if(sk && sk != G.H.m){
				u.push(["skey",sk]);
			}
			
			if(ss){
				u.push(["ssort",ss]);
			}
			
			if(st == 7){
				surl = surl.replace("/search/","/special/");
			}else{
				surl = surl.replace("special","search");
			}
			
			G.open(u,surl);
	},
	init : function(){
		var sk = G.$("search_key");
		if(skey){
			sk.value = skey;
		}else{
			var m = G.H.m;
			sk.onfocus = function(){
				this.value == m ? this.value = "" : "";
			}
			
			sk.onblur = function(){
				this.value == "" ? this.value = m : "";
			}
		}
	}
};

window.onload = G.H.init;

//Array area
/*
 * check in array whether string have substring in 
 * ["@","#',"<",">"].checkStr("abcdeft@#lk<>");
 * return #have: true, #not have: 0
 */
Array.prototype.checkStr = function(string){
	return (string.indexOf(this[0]) !== -1)? true: this.length && this.slice(1).checkStr(string);
}
/*
 * change array's element by method fn
 * var arr = [1,2,3].each(function(x){return x*x});//arr = [1,4,9]
 */
Array.prototype.each = function(fn){
		return this.length? [fn(this[0])].concat(this.slice(1).each(fn)): [];
};

//String area
/**
 * return string's times :num
 * "a".times(3);//output: aaa
 */
String.prototype.times = function(num){
	return (num <= 0)? "": this.concat(this.times(--num));
};

//Number area
/**
 * padding number with 0
 * (13).padding(3);//output: 013
 */
Number.prototype.padding = function(length){
	return '0'.times(length-(this.toString().length)) + this.toString();
};

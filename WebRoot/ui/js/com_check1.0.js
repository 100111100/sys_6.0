//自定义校验框架v1.0
//功能:对文本框进行非空校验
//错误提示(obj待校验的对象,msg提示信息)
function cerr(obj,msg){
	var errObj = document.createElement("span");
	errObj.setAttribute("class", "err");
	//相当errObj.className = "err";
	errObj.innerHTML = msg;
	//下下个兄弟，注意文本节点,有则删除
	if(obj.nextSibling.nextSibling){//不为空相当返回true
	   obj.parentNode.removeChild(obj.nextSibling.nextSibling);
	}
	//追加错误提示框
	obj.parentNode.appendChild(errObj);
	return false;	
}
//校验成功
function csuc(obj){
	//下下个兄弟，注意中间的文本节点
	if(obj.nextSibling.nextSibling){//不存在返回false
	   obj.parentNode.removeChild(obj.nextSibling.nextSibling); 
	}
	obj.className = "ipt";//修改样式类
	return true;
}
/*获取焦点事件时触发*/
function cfocus(obj){
	obj.className = "focus";//修改样式类名
}
//通用文本框非空校验
function creq(obj){
	if(obj.value.trim().length ==0){
		return cerr(obj,obj.alt + "不能为空");
	}else{
		return csuc(obj);
	}
}
//
var narr;
//页面校验初始化功能
//carr参数为待校验的对象的name，如:["username:用户名","password:密码"]
function cinit(carr){
	narr = carr;
	//给From动态绑定提交事件
	document.getElementById("f1").onsubmit=function(){return checkAll();};
	//
	for (var i in carr) {
		var a = carr[i].split(":");
		var obj = document.getElementsByName(a[0])[0];
		//把中文名写到alt属性，作为载体传到校验方法中
		obj.alt = a[1];
		//事件动态绑定
		obj.onfocus = function(){cfocus(this);};
		obj.onblur = function(){creq(this);};
	}	
}
//通用提交校验方法
function checkAll(){
	var is = true;
	for (var i in narr) {//循环每表单元素并执行校验
		var a = narr[i].split(":");
		var obj = document.getElementsByName(a[0])[0];
		is = creq(obj) && is;
	}
	return is;
}














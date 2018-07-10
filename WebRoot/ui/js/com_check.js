//自定义校验框架v2.0
//功能:
//1.对文本框进行非空校验
//2.在非空格文本框后加必填标志
//3.对文本框实现正则表达校验
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
	var a = obj.alt.split(":");
	if(obj.value.trim().length ==0){
		return cerr(obj,a[1] + "不能为空");
	}else{
		return csuc(obj);
	}
}


//文本框正则校验
function cregex(obj){
	var a = obj.alt.split(":");
	var regex = new RegExp(a[3]);//创建正则表达式对象
	//先做非空校验，不为空再做正则表达式校验
	if(obj.value.trim().length ==0){
	   return cerr(obj,a[1] + "不能为空");
	}else if(!regex.test(obj.value.trim())){
	   return cerr(obj,a[1] + "格式有误");
	}else{
	   return csuc(obj);
	}
}


/*
var isAjax=false;
//ajax检验用户名是否在数据库存在（username:用户名:cajax:user_unExist）
function cajax(obj){

	var a = obj.alt.split(":");
	//先做非空校验，不为空再做正则表达式校验
	if(obj.value.trim().length ==0){
		return cerr(obj,a[1] + "不能为空");
	}else {
		$.ajax(
				{
				type:"POST",
				url: _cxt + "/"+a[3],
				async:false,
				data: "username="+obj.value.trim(),
				success:function(state){
					if('1'===state){
						isAjax=false;
						return cerr(obj,a[1] + "已存在");
					}else{
						isAjax=true;
						return csuc(obj);
					}
					
				}
			}
		);
		return true;
	}	
}

*/


//
var narr;
//页面校验初始化功能
//carr参数为待校验的对象的name，
//如:["username:用户名","password:密码","birthday:出生日期:cregex:^\\d{4}-\\d{2}-\\d{2}$"]
function cinit(carr){
	narr = carr;
	//给From动态绑定提交事件
	document.getElementById("f1").onsubmit=function(){return checkAll();};
	//
	for (var i in carr) {
		var a = carr[i].split(":");
		var obj = document.getElementsByName(a[0])[0];
		//加必填标记*
		cerr(obj,"*");
		//把配置信息写到alt属性，作为载体传到校验方法中
		obj.alt = carr[i];
		//事件动态绑定
		obj.onfocus = function(){cfocus(this);};
		if(a.length ==2){//有两段配置说明是非空
		   obj.onblur = function(){creq(this);};
		}else if(a.length ==4 && a[2]=='cregex'){
		   obj.onblur = function(){cregex(this);};
		   
		}		
	}	
}



//通用提交校验方法
function checkAll(){
	var is = true;
	for (var i in narr) {//循环每表单元素并执行校验
		var a = narr[i].split(":");
		var obj = document.getElementsByName(a[0])[0];
		if(a.length ==2){//有两段配置说明是非空
		  is = creq(obj) && is;
		}else if(a.length ==4 && a[2]=='cregex'){
		  is = cregex(obj) && is;
		}		
	}
	return is ;
}














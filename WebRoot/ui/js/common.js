//公共JS库
//清除查询条件并提交表单
function clean(){
	$("input[class=ipt]").val("");
	$("select[class=ipt] > option[value=0]").attr("selected",true);
	//清空完提交查询请求
	$("#f1").submit();
}



//弹出窗口的公共方法
var dialog;
function openDialog(title,url){//打开弹出窗口
   dialog = $.dialog({
     title: title,
     width: '750px',
     height: '420px',
     content: 'url:'+url
   });
}
//关闭窗口
function closeDialog(msg){//关闭窗口
   $("#tip").html(msg);
   dialog.close();//关闭窗口
   if(msg!=''){//没有做增删改就不能刷新
	 clist();//刷新页面
   }
}


//记录新增公共方法,在add.jsp页面提交的时候传了一个网址过来，下面的序列化就是获取这个from表单的数据格式化
//然后在提交的时候调用关闭窗口并将结果传回去
function cadd(addUrl){
	  var data = $("#f1").serialize();
    $.ajax(
	          {
	            type:"POST",
	            url: addUrl,
	            data: data,
	            dataType:"json",
	            success:function(jobj){
	               parent.closeDialog(jobj.msg);
	            }          
	          }      
	      );	  
} 


//记录新增公共方法(可上传的)
function caddul(addUrl){
	//把表单封装成FormData对象,FormData在主流浏览器的高版本中才有
    var fd = new FormData($("#f1")[0]); 
	$.ajax(
		{
		  type: 'POST',
		  //以下属性设置为false
		  data: fd, 
		  url:addUrl,
		  async: false,  
		  cache: false,  
		  contentType: false,  
		  processData: false,  
		  dataType:"json",
		  success:function(jobj){
			parent.closeDialog(jobj.msg);
		 }          
	    }      
	);	  
}   		





//记录删除公共方法
function cdel(url){
	   $.ajax(
		   {
			 type:"POST",
			 url: url,
			 dataType:"json",
			 success:function(jobj){
				$("#tip").html(jobj.msg);
				clist();
			 }
		    }      
		);	   	   
}	



//记录更新初始化公共方法
function cupdateInit(id,url){
	      $.ajax(
		          {
		            type:"POST",
		            url: url,
		            data: "id="+id,
		            dataType:"json",
		            success:function(jobj){
		            //循环对象，根据属性名找到表单元素并赋值
		               $.each(jobj,function(n,v){
		            	   //alert(n + " : " + v);
		            	   //经理说如果长度不等于1的话会出错。
		            	   if($("input[name="+n+"][type!=file]").size()==1){
		            		  $("input[name="+n+"][type!=file]").val(v);  
		            	   }else if($("select[name="+n+"]").size()==1){
		            		   $("select[name="+n+"] > option[value="+ v +"]")
		            		   .attr("selected",true); 
		            	   }
		               });		               
		            }          
		          }      
		      );	  	  
		  
	  }   
//记录更新公共方法
function cupdate(url){
		  var data = $("#f1").serialize();
		  alert(data);
	      $.ajax(
		          {
		            type:"POST",
		            url: url,
		            data: data,
		            dataType:"json",
		            success:function(jobj){
		               parent.closeDialog(jobj.msg);
		            }          
		          }      
		      );	  
	  }    
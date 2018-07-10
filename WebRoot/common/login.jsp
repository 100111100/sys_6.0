<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${_title}</title>
<script  type="text/javascript" src="${_plugins}/jquery/jquery-1.7.2.js"></script>

<style type="text/css">
   body{
      margin: 0px;
      padding: 0px;
      background-image: url(${_img}/timg.jpg);
      background-repeat: no-repeat;
      background-size:100%;/* 拉伸满屏   */
   }
   #login{
      width: 560px;
      height: 300px;
      background-color: #801a1a;
      margin: 120px auto;
      border-radius:10px;/* 圆角边框  */
      opacity:0.75;/* 0-1越小越透明 */
      font-family: 华文中宋;
   }
   #title{
      font-size: 32px;
      line-height: 55px;
   }
   #error{
      font-size: 18px;
      display:block;
      height: 45px;
      color:red;
   }
/* --------------输入校验的样式------------- */
.focus{
	/* width: 176px; */
	border: 1px solid red;
}
.err{
	color:red;
	font-family: 华文中宋;
	font-size: 14px;
}   
</style>
<%--这后面写applicationScope._js也同样生效，因为在initServlet.java中是给ServletContext初始化的，applicationScope和requestScope也可以调用里面的属性如_js--%>
<script type="text/javascript">
	if(window.top!==window.self){
		window.top.location = window.location;
	}
	
/* 	//登陆验证的ajax提交
	function clogin(){
		var data=$("#f1").serialize();
		if(checkAll()){
			$.ajax({
				type:"POST",
				url:"${_cxt}/sys_login.do",
				data:data,
				dataType:"json",
				success:function(jobj){
					if(jobj.result==1){
						location.href='${_cxt}/common/index.jsp';
					}else{
						$("#error").html(jobj.msg);
					}
				}
			});
		}
	} */
	
</script>
<script type="text/javascript" src="${applicationScope._js}/com_check.js"></script>
</head>
<body>
   <div id="login">
     <center><span id="title">${_title}</span></center>
     <center><span id="error">${requestScope.msg}</span></center>
     <f:form id="f1" action="${_cxt}/sys/login" method="post">
     <table border="0" width="80%" align="center">
        <tr>
           <td align="right" width="35%">用户名:</td>
           <td>
               <input type="text" name="username"> 
           </td>
        </tr>
        <tr>
           <td align="right">密&nbsp;&nbsp;&nbsp;码:</td>
           <td>
               <input type="password" name="password"> 
           </td>
        </tr>
        <tr>
           <td align="right"></td>
           <td>
               <input type="reset" value="重置">&nbsp;&nbsp;
               <input type="submit" value="登录">&nbsp;&nbsp;
               <input type="button" value="注册" 
                      onclick="location.href='${_cxt}/common/register.jsp'">
           </td>
        </tr>
     </table>
     </f:form>
   </div>
<script type="text/javascript">
   cinit(["user.username:用户名","user.password:密码"]);
</script>
</body>
</html>










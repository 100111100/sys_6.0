<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>异常信息显示</title>
<script type="text/javascript" src="${_plugins}/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript">
   function showError(){
      if('123'==prompt('请输入管理员密码')){
         $("#stack").show();
      }else{
      
      }
   }
</script>
</head>
<body>
    <center><h2>系统出现故障，请联系系统管理员处理！</h2></center>
    <center><a href="javascript:void(0)" 
               onclick="showError();">查看详情</a></center>
    <hr>
    <div id="stack" style="display: none;">
	     <!-- 异常简要信息 -->
	    <center>${exception.message}</center>
	     <!-- 异常追踪信息 -->
	    <center>${exceptionStack}</center>
    </div>
</body>
</html>











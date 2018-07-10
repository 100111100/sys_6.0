<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>顶部菜单</title>
<style type="text/css">
   body{
   background-color:#3a151594;
     font-family: 华文中宋;
   }
   #title{
      font-size: 42px;
   	  color:#7b4040;
     
   }
   #topm{
      float:right;
      margin-top: 45px;
   }
   a{
     text-decoration: none;
     color:black;
   }
</style>
<script type="text/javascript">
    function getTime(){
    	var now = new Date();
    	var week = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
    	var time = "";
    	time += now.getFullYear()+"年";
    	time += (now.getMonth()+1)+"月";
    	time += now.getDate()+"日   ";
    	time += now.getHours() +"时";
    	time += now.getMinutes()+"分";
    	time += now.getSeconds()+"秒  ";
    	time += week[now.getDay()]+"";
    	document.getElementById("time").innerHTML = time;
    }
    //启动定时器,一秒执行一次
    window.setInterval("getTime();",1000);
</script>
</head>
<body onload="getTime();">
   <div id="top">
       <center><span id="title">${_title}</span></center>
       <div id="topm">
         <span id="time"></span>&nbsp;
                        当前用户:&nbsp;<span style="color:white;">${sessionScope.user.name}</span>&nbsp;
         <a href="${_cxt}/sys/logout" target="_top">退出系统</a>&nbsp;
       </div>
   </div>
</body>
</html>
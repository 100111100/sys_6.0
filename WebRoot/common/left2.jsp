<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统菜单</title>
<style type="text/css">
   body{
      background-color: #FCE0A6;
   }
   li{
      list-style-type: none;
      height: 36px;
      font-size: 22px;
   }
   a{
      text-decoration: none;
   }
</style>
</head>
<body>
   <div id="menu">
     <ul>
        <li><a href="${_cxt}/user_list.do" target="right">用户管理</a></li> 
        <li><a href="${_cxt}/dict_list.do" target="right" >字典管理</a></li> 
        <li><a href="${_cxt}/menu_list.do" target="right" >菜单管理</a></li> 
        <li><a href="${_cxt}/role_list.do" target="right" >角色管理</a></li> 
        <li><a href="${_cxt}/tclass_list.do" target="right" >班级管理</a></li> 
        <li><a href="${_cxt}/student_list.do" target="right">学生管理</a></li> 
        <li><a href="${_cxt}/teacher_list.do" target="right" >教师管理</a></li> 
        <li><a href="#" target="right">成绩管理</a></li> 
      
     </ul>
   </div>
</body>
</html>
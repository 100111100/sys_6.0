<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${_title}</title>
<style type="text/css">
	
</style>
</head>
<frameset rows="20%,*" frameborder="no">
   <frame name="top" src="${_cxt}/common/top.jsp" frameborder="0"/>
   <frameset cols="15%,*">
     <frame name="left" src="${_cxt}/common/left.jsp"/>
     <frame name="right" src="${_cxt}/common/welcome.jsp"/>
   </frameset>
</frameset>
</html>
 
<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程列表</title>

</head>
<body>
<s:form id="f1" action="course_list.do" namespace="/" method="post">
<!-- 用来解决课程在直接点击课程管理的时候没有参数提交导致的错误问题，-->
<input type="hidden" name="commit" value="true">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">课程名:</td>
              <td>
                 <s:textfield name="course.name" cssClass="ipt"></s:textfield>
              </td>
              <td align="right" width="15%">授课老师:</td>
              <td>
              	  <s:textfield name="course.teacherName" cssClass="ipt"></s:textfield>
              </td>
           </tr>
           
            <tr>
              <td align="right" width="15%">年度:</td>
              <td>
             	<s:select list="#application.CYEAR" name="course.cyear" cssClass="ipt" headerKey="0" headerValue="--查所有--"></s:select>
              </td>
              <td align="right" width="15%">学期:</td>
              <td>
            	  <s:select list="#application.SCH_TERM" name="course.schTerm" cssClass="ipt" headerKey="0" headerValue="--查所有--"></s:select>
              </td>
           </tr>
           
           <tr>
              <td align="right"></td>
              <td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="查询">
                 <input type="button" value="重置" onclick="clean();" >
                 <input type="button" value="新增" 
                 onclick="location.href='${_cxt}/course/add.jsp'">
              </td>
           </tr> 
       </table>
    </fieldset>
     <fieldset class="fset">
       <table width="100%" border="0" class="tab_list" align="center">
         <tr>
            <th colspan="9"><span class="title">课程信息列表</span>
            	<div style="color:red;float:right;">${requestScope.msg}</div>
            </th>
         </tr>
         <tr>
            <th>课程ID</th>
            <th>授课老师</th>
            <th>课程名</th>
            <th>年度</th>
            <th>学期</th>
            <th>学分</th>
            <th>状态</th>
            <th>创建日期</th>
            <th>操作</th>
         </tr>
    
         
         <s:iterator value="list" var="v" status="vs">
         <tr class="tr${vs.count%2}">
            <s:url var="delete" action="course_delete" namespace="/">
            	<s:param name="course.id">${v.id}</s:param>
            </s:url>
            <s:url var="update" action="course_update" namespace="/">
            	<s:param name="course.id">${v.id}</s:param>
             </s:url>
            <td>${v.id}</td>
            <td>${v.teacherName}</td>
            <td>${v.name}</td>
            <td><mt:tran value="${v.cyear}" data="${CYEAR}"/></td>
            <td><mt:tran value="${v.schTerm}" data="${SCH_TERM}"/></td>
            <td>${v.credit}</td>
            <td><mt:tran value="${v.state}" data="${SYS_STATE}"/></td>
            <td>${v.createDate}</td>
            <td>						
           <!-- %{}强制把内容当ognl执行 -->
              <s:a href="%{delete}" onclick="return confirm('确定删除”')">删除</s:a>|
              <s:a href="%{update}">更新</s:a>
            
            </td>
         </tr>
         </s:iterator>
       </table>
       <%@ include file="/common/pager.jsp" %>
     </fieldset>
 </div>
</s:form> 
</body>
</html>
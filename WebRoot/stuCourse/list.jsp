 
<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>选课列表</title>

</head>
<body>
<s:form id="f1" namespace="/" action="stuCourse_list.do" method="post">
<!-- 用来解决选课在直接点击选课管理的时候没有参数提交导致的错误问题，-->
<input type="hidden" name="commit" value="true">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">学生姓名:</td>
              <td>
              	 <s:textfield name="stuCourse.studentName" cssClass="ipt"></s:textfield>
              </td>
              <td align="right" width="15%">课程名称:</td>
              <td>
              	 <s:textfield name="stuCourse.courseName" cssClass="ipt"></s:textfield>
              </td>
           </tr>
           <tr>
              <td align="right"></td>
              <td>
              </td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="查询">
                 <input type="button" value="重置" onclick="clean();">
                 <input type="button" value="新增" 
                 onclick="location.href='${_cxt}/stuCourse/add.jsp'">
              </td>
           </tr> 
       </table>
    </fieldset>
     <fieldset class="fset">
       <table width="100%" border="0" class="tab_list" align="center">
         <tr>
            <th colspan="7"><span class="title">选课信息列表</span>
            	<div style="color:red;float:right;">${requestScope.msg}</div>
            </th>
         </tr>
         <tr>
            <th>记录ID</th>
            <th>学生姓名</th>
            <th>课程姓名</th>
            <th>学分</th>
            <th>备注</th>
            <th>创建日期</th>
            <th>操作</th>
         </tr>
        
         
          <s:iterator value="list" var="v" status="vs">
         <tr class="tr${vs.count%2}">
         <%--其实这里底层调用的是v对象的get方法，下面点击更新和删除哪儿记得把id传过去 --%>
           
              <s:url var="delete" action="stuCourse_delete" namespace="/">
            	<s:param name="stuCourse.id">${v.id}</s:param>
             </s:url>
              <s:url var="update" action="stuCourse_update" namespace="/">
            	<s:param name="stuCourse.id">${v.id}</s:param>
             </s:url>
             <td>${v.id}</td>
            <td>${v.studentName}</td>
            <td>${v.courseName}</td>
            <td>${v.credit}</td>
            <td>${v.remark}</td>
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
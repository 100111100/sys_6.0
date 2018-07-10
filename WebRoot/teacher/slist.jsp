 
<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师列表</title>

<script type="text/javascript">
   function tconfirm(){
	   var objs = $("input[name=select]:checked");
	   if(objs.size()==0){
		   alert("请选择一个教师");
		   return;
	   }else{
		  //parent代表父窗口对象，通过父窗口对象执行来执行父窗口的函数将id和name传回去
		  parent.closeDialog(objs.eq(0).val());	
	   }
   }
</script>

</head>
<body>
<s:form id="f1" namespace="/" action="teacher_list" method="post"> 
<!-- 用来解决教师在直接点击教师管理的时候没有参数提交导致的错误问题，-->
<input type="hidden" name="commit" value="true">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">教师名:</td>
              <td>
                 <s:textfield name="teacher.name" cssClass="ipt"></s:textfield>
              </td>
              <td align="right" width="15%">专业方向:</td>
              <td>
                  <s:textfield name="teacher.specialty" cssClass="ipt"></s:textfield>
              </td>
           </tr>
           <tr>
              <td align="right">性别:</td>
              <td>
             	  <s:select list="#application.SYS_SEX" name="teacher.sex" headerKey="0" headerValue="--查所有--" cssClass="ipt"></s:select>
              </td>
              <td align="right"></td>
              <td>
                  <input type="submit" value="查询">
               <input type="reset" value="重置">
               <input type="button" value="确认" onclick="tconfirm();">
               <!-- parent表示父窗口 -->
               <input type="button" value="取消" onclick="parent.closeDialog('');">
              </td>
           </tr> 
       </table>
    </fieldset>
     <fieldset class="fset">
       <table width="100%" border="0" class="tab_list" align="center">
         <tr>
            <th colspan="9"><span class="title">教师信息列表</span>
            	<div style="color:red;float:right;">${requestScope.msg}</div>
            </th>
         </tr>
         <tr>
            <th>记录ID</th>
            <th>姓名</th>
            <th>性别</th>
            <th>出生日期</th>
            <th>工作日期</th>
            <th>专业方向</th>
            <th>职称等级</th>
            <th>创建日期</th>
            <th>操作</th>
         </tr>
         
         <s:iterator value="list" var="v" status="vs">
         <tr class="tr${vs.count%2}">
         <%--其实这里底层调用的是v对象的get方法，下面点击更新和删除哪儿记得把id传过去 --%>
           
              <s:url var="delete" action="teacher_delete" namespace="/">
            	<s:param name="teacher.id">${v.id}</s:param>
             </s:url>
              <s:url var="update" action="teacher_update" namespace="/">
            	<s:param name="teacher.id">${v.id}</s:param>
             </s:url>
             <td><input type="radio" name="select" value="${v.id},${v.name}"></td>
            <td>${v.name}</td>
            <td><mt:tran value="${v.sex}" data="${SYS_SEX}" /></td>
            <td>${v.birthday}</td>
            <td>${v.workDate}</td>
            <td>${v.specialty}</td>
             <td><mt:tran value="${v.tlevel}" data="${TEACHER_GRADE}" /></td>
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

<%@ include file="/common/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师新增</title>


</head>
<body>
<s:form  action="teacher_add.do" method="post" namespace="/">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">名字:</td>
              <td width="35%">
                 <s:textfield name="teacher.name" cssClass="ipt"></s:textfield>
              </td>
              <td align="right" width="15%">专业方向:</td>
              <td width="35%">
                 <s:textfield name="teacher.specialty" cssClass="ipt"></s:textfield>
              </td>
           </tr>
           <tr>
              <td align="right" width="15%">出生日期:</td>
              <td>
       			<input type="text" id="birthday" 
              		readonly="readonly" class="ipt" name="teacher.birthday"/>
              </td>
           	  <td align="right">性别:</td>
              <td>
            	<s:select list="#application.SYS_SEX"  name="teacher.sex" cssClass="ipt"></s:select>

              </td>
           </tr>
          
           
           
           <tr>
              <td align="right">职称等级:</td>
              <td>
            	   <s:select list="#application.TEACHER_GRADE"  name="teacher.tlevel" cssClass="ipt"></s:select>
              </td>
              <td align="right">工作时间:</td>
              <td>
                    <input type="text" id="workDate" class="ipt"
              		readonly="readonly" name="teacher.workDate" >
              </td>
           </tr>
           
           
           <tr>
              <td align="right"></td>
              <td>
                
              </td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="提交">
                 <input type="reset" value="重置">
                 <input type="button" value="返回" 
                 onclick="location.href='${_cxt}/teacher_list.do'">
              </td>
           </tr>
           
           
       </table>
    </fieldset>
 </div>
</s:form>
<script type="text/javascript">
 
   //皮肤
   laydate.skin('molv');
   laydate({elem:'#birthday'});
   
   laydate({elem:'#workDate'});
</script>    
</body>
</html>

<%@ include file="/common/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 引入弹出窗口JS库 -->
<script type="text/javascript"  src="${_plugins}/lhgdialog/lhgdialog.min.js?self=true&skin=igreen"></script>
<script type="text/javascript">
	var dialog;
	function openDialog(){//打开弹出窗口
	   dialog = $.dialog({
	     title: '选择一个教师',
	     width: '750px',
	     height: '470px',
	     content: 'url:${_cxt}/teacher_slist.do'
	   });
	 
	}
	//result格式:  班级ID,班级名称，这里定义后在slist传参并关闭该弹窗。
	function closeDialog(result){//关闭窗口
	  
	   var arr = result.split(",");
	   $("input[name='course.teacherId']").val(arr[0]);
	   $("input[name='course.teacherName']").val(arr[1]); 
	   dialog.close();//关闭窗口
	  
    }
</script>


<title>学生新增</title>


</head>
<body>
<s:form namespace="/" id="f1" action="course_add" method="post">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">课程名字:</td>
              <td width="35%">
                 <s:textfield name="course.name" cssClass="ipt"></s:textfield>
              </td>
              <td align="right" width="15%">年度:</td>
              <td width="35%">
             	 <s:select list="#application.CYEAR" name="course.cyear" cssClass="ipt"></s:select>
              </td>
           </tr>
           <tr>
              <td align="right" width="15%">学期:</td>
              <td>
              	 <s:select list="#application.SCH_TERM" name="course.schTerm" cssClass="ipt"></s:select>
              </td>
           	  <td align="right">状态:</td>
              <td>
             	<s:select list="#application.SYS_STATE" name="course.state" cssClass="ipt"></s:select>
              </td>
           </tr>
          
           
           
           <tr>
              <td align="right">授课老师:</td>
              <td>
                <input type="hidden" name="course.teacherId" class="ipt" >
                 <input type="text" name="course.teacherName" class="ipt" readonly="readonly">
                 <a href="javascript:openDialog();">选择</a>
              </td>
              <td align="right">学分</td>
              <td>
              	<select class="ipt" name="course.credit">
              		<option>1</option>
              		<option>1.5</option>
              		<option>2</option>
              		<option>3</option>
              		<option>3.5</option>
              		<option>4</option>
              	</select>
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
  
</script>    
</body>
</html>
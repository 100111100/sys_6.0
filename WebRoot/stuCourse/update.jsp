
<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- 引入弹出窗口JS库 -->
<script type="text/javascript" 
        src="${_plugins}/lhgdialog/lhgdialog.min.js?self=true&skin=igreen"></script>
<script type="text/javascript">
var dialog;
function openDialog(){//打开弹出窗口
   dialog = $.dialog({
     title: '选择一个学生',
     width: '650px',
     height: '440px',
     content: 'url:${_cxt}/student_slist.do'
   });
 
}
//result格式:  班级ID,班级名称，这里定义后在slist传参并关闭该弹窗。
function closeDialog(result){//关闭窗口
  
   var arr = result.split(",");
   $("input[name='stuCourse.studentId']").val(arr[0]);
   $("input[name='stuCourse.studentName']").val(arr[1]); 
   dialog.close();//关闭窗口
  
}
var dialogs;
function openDialogs(){//打开弹出窗口
   dialog = $.dialog({
     title: '选择一个课程',
     width: '650px',
     height: '440px',
     content: 'url:${_cxt}/course_slist.do'
   });
 
}
//result格式:  班级ID,班级名称，这里定义后在slist传参并关闭该弹窗。
function closeDialogs(result){//关闭窗口
  
   var arr = result.split(",");
   $("input[name='stuCourse.courseId']").val(arr[0]);
   $("input[name='stuCourse.courseName']").val(arr[1]); 
   dialog.close();//关闭窗口
  
}
</script>


<title>学生更新</title>
</head>
<body>

<s:form id="f1" action="stuCourse_update.do" namespace="/" method="post">
<input type="hidden" name="commit" value="true">
<s:hidden  name="stuCourse.id" />
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
          
           <tr>
              <td align="right" width="15%">注释:</td>
              <td>
                 <s:textfield name="stuCourse.remark" cssClass="ipt"></s:textfield>
              </td>
           	  <td align="right">课程名称:</td>
              <td>
                 <s:hidden name="stuCourse.courseId" cssClass="ipt"></s:hidden>
                 <s:textfield name="stuCourse.courseName" readonly="true" cssClass="ipt"></s:textfield >
                 <a href="javascript:openDialogs();">选择</a>
              </td>
           </tr>
          
           
           <tr>
              <td align="right">学生名称:</td>
              <td>
               	 <s:hidden name="stuCourse.studentId" cssClass="ipt"></s:hidden>
                 <s:textfield name="stuCourse.studentName" cssClass="ipt" readonly="true"></s:textfield >
                 <a href="javascript:openDialog();">选择</a>
              </td>
              <td align="right"></td>
              <td>
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
                 onclick="location.href='${_cxt}/stuCourse_list.do'">
              </td>
           </tr>
           
           
       </table>
    </fieldset>
 </div>
</s:form> 

</body>
</html>
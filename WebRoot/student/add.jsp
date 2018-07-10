
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
	     title: '选择一个班级',
	     width: '650px',
	     height: '440px',
	     content: 'url:${_cxt}/tclass_slist.do'
	   });
	 
	}
	//result格式:  班级ID,班级名称，这里定义后在slist传参并关闭该弹窗。
	function closeDialog(result){//关闭窗口
	  
	   var arr = result.split(",");
	   $("input[name='student.classId']").val(arr[0]);
	   $("input[name='student.className']").val(arr[1]); 
	   dialog.close();//关闭窗口
	  
    }
</script>


<title>学生新增</title>


</head>
<body>
<s:form  id="f1" namespace="/" action="student_add" >
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">学生:</td>
              <td width="35%">
                 <input type="text" name="student.name" class="ipt">
              </td>
              <td align="right" width="15%">籍贯:</td>
              <td width="35%">
                 <input type="text" name="student.snative" class="ipt">
              </td>
           </tr>
           <tr>
              <td align="right" width="15%">出生日期:</td>
              <td>
              	<input type="text" id="birthday" 
              		readonly="readonly" class="ipt"  name="student.birthday" />
 
              </td>
           	  <td align="right">性别:</td>
              <td>
               	<s:select list="#application.SYS_SEX" name="student.sex" cssClass="ipt"></s:select>
              </td>
           </tr>
          
           
           
           <tr>
              <td align="right">班级名称:</td>
              <td>
                <input type="hidden" name="student.classId" class="ipt" >
                 <input type="text" name="student.className" class="ipt" readonly="readonly">
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
                 <input type="submit" value="提交" >
                 <input type="reset" value="重置">
                 <input type="button" value="关闭" 
                 onclick="location.href='${_cxt}/student_list.do'">
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
</script>    
</body>
</html>
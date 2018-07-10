
<%@ include file="/common/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户新增</title>


</head>
<body>
<f:form id="f1" action="${_cxt}/user/add" namespace="/" method="post" enctype="multipart/form-data"> 
<div id="div_list">
    <fieldset class="fset">
      <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">用户名:</td>
              <td width="35%">
                 <input type="text" name="username" class="ipt">
              </td>
              <td align="right" width="15%">姓名:</td>
              <td width="35%">
                   <input type="text" name="name" class="ipt">
              </td>
           </tr>
           <tr>
              <td align="right" width="15%">出生日期:</td>
              <td>
              	    <input type="text" id="birthday" name="birthday" class="ipt" readonly="readonly">
              </td>
           	  <td align="right">性别:</td>
              <td>
                 <mt:select name="sex" 
                    data="${SYS_SEX}" cssClass="ipt"/>
              </td>
           </tr>
          
           <tr>
              <td align="right">状态:</td>
              <td>
                    <mt:select name="loginFlag" 
                    data="${SYS_STATE}" cssClass="ipt"/>
              </td>
              <td align="right">角色名称:</td>
              <td>
              	  <mt:select name="roleId" 
                    data="${roleMap}" cssClass="ipt"/>
              </td>
           </tr>
           
           
           <tr>
              <td align="right">上传头像</td>
              <td>
                 <input type="file" name="image" class="ipt"> 	
              </td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="提交">
                 <input type="button" value="重置" onclick="clean();" >
                 <input type="button" value="返回" 
                   onclick="location.href='${_cxt}/user/list'">
              </td>
           </tr>
           
           
       </table>
    </fieldset>
 </div>
</f:form>
<script type="text/javascript">

   //皮肤
   laydate.skin('molv');
   laydate({elem:'#birthday'});
</script>    
</body>
</html>
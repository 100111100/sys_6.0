
<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色更新</title>
</head>
<%--这里是一开始就加载初始化函数来初始化数据 --%>
<body >
<s:form id="f1" action="role_update" namespace="/" method="post">
<input type="hidden" name="commit" value="true">
<s:hidden name="role.id"  /> 
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">角色名称:</td>
              <td width="35%">
                 <s:textfield name="role.name" cssClass="ipt" />
              </td>
	           <td align="right" width="15%"></td>
	        
           </tr>

           <tr>
              <td align="right"></td>
              <td align="right" ></td>
              <td>
                 <input type="submit" value="提交" >
                 <input type="reset" value="重置">
                     <input type="button" value="返回" 
                 onclick="location.href='${_cxt}/role/list.jsp'">
              </td>
           </tr>
           
           
       </table>
    </fieldset>
 </div>
</s:form>
</body>
</html>
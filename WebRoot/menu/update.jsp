
<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单更新</title>
</head>
<body>
<f:form id="f1" action="${_cxt}/menu/update" namespace="/" method="post">
<input type="hidden" name="commit" value="true">
<f:input type="hidden" path="id" />

 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">菜单名称:</td>
              <td width="35%">
                   <f:input path="name" cssClass="ipt"/>
              </td>
              <td align="right" width="15%">菜单url</td>
              <td width="35%">
                  <f:input path="url" cssClass="ipt"/>
              </td>
           </tr>
           
           <tr>
              <td align="right" width="15%">父菜单:</td>
              <td>
                  <f:select path="pid" cssClass="ipt">
                      <f:options items="${paMap}"/>
                  </f:select>
              </td>
           	  <td align="right">菜单级别:</td>
              <td>
                  <f:select path="mlevel" cssClass="ipt">
                      <f:options items="${MENU_LEVEL}"/>
                  </f:select>
              </td>
           </tr>
           <tr>
              <td align="right"></td>
              <td>
                
              </td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="提交">
                 <input type="button" value="重置" onclick="clean();">
                 <input type="button" value="返回" 
                 onclick="location.href='${_cxt}/menu/list'">
              </td>
           </tr>
           
           
       </table>
    </fieldset>	
 </div>
</f:form> 
</body>
</html>
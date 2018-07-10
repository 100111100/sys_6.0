
<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>字典更新</title>
</head>
<body >
<f:form id="f1" action="${_cxt}/dict/update" method="post">
 <input type="hidden" name="commit" value="true">
 <f:hidden path="id"/>
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">字典名称:</td>
              <td width="35%">
                 <f:input path="name" cssClass="ipt"/>
              </td>
              <td align="right">使用状态:</td>
              <td>
                <f:select path="useFlag" cssClass="ipt">
                  <f:options items="${SYS_STATE}"/>
                </f:select>
              </td>
           </tr>
           <tr>
              <td align="right" width="15%">字典KEY:</td>
              <td>
                 <f:input path="dkey" cssClass="ipt"/>
              </td>
           	  <td align="right">字典VAL:</td>
              <td>
                <f:input path="dval" cssClass="ipt"/>
              </td>
           </tr>
           <tr>
              <td align="right">顺序号:</td>
              <td>
				  <f:input path="orderNo" cssClass="ipt"/>
              </td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="更新">
                 <input type="reset" value="重置">
                 <input type="button" value="返回" 
                        onclick="location.href='${_cxt}/dict/list'">
              </td>
           </tr>
       </table>
    </fieldset>
 </div>
</f:form>


</body>
</html>
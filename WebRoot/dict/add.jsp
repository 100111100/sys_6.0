
<%@ include file="/common/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>字典新增</title>


</head>
<body>

<f:form id="f1" action="${_cxt}/dict/add" method="post">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">字典名称:</td>
              <td width="35%">
                 <input type="text" name="name" class="ipt">
              </td>
              <td align="right">使用状态:</td>
              <td>
                 <mt:select name="useFlag" 
                    data="${SYS_STATE}" cssClass="ipt"/>
              </td>
           </tr>
           <tr>
              <td align="right" width="15%">字典KEY:</td>
              <td>
                 <input type="text" name="dkey" class="ipt">
              </td>
           	  <td align="right">字典VAL:</td>
              <td>
                <input type="text" name="dval" class="ipt">
              </td>
           </tr>
           <tr>
              <td align="right">顺序号:</td>
              <td>
				  <input type="text" name="orderNo" class="ipt">
              </td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="提交">
                 <input type="reset" value="重置" onclick="clean();" >
                 <input type="button" value="返回" 
                        onclick="location.href='${_cxt}/dict/list'">
              </td>
           </tr>
       </table>
    </fieldset>
 </div>
</f:form>
<script type="text/javascript">
   //cinit(["dict.name:字典名称","dict.dkey:字典KEY","dict.dval:字典VALUE"]);
</script>    
</body>

</html>
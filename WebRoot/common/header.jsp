
<!-- 这些是include的引用，可以插入其他jsp页面引入include标签来获取到这些头部标签 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 自定义标签 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<%@ taglib prefix="mt" uri="mt-rt" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!-- 引用外部样式 -->
<link rel="stylesheet" type="text/css" href="${_css}/common.css">

<script  type="text/javascript" src="${_plugins}/jquery/jquery-1.7.2.js"></script>
<!-- 时间插件，是为了在input中输入时间的时候能使用正确的格式-->
<script  type="text/javascript" src="${_plugins}/laydate/laydate.js"></script>
<!-- 引入公共类js-->
<script type="text/javascript" src="${_js}/com_check.js"></script>

<!-- 引入弹出窗口JS库 -->
<script type="text/javascript"  src="${_plugins}/lhgdialog/lhgdialog.min.js?self=true&skin=igreen"></script>

<!-- 引入公共类js-->
<script type="text/javascript" src="${_js}/common.js"></script>

<script type="text/javascript">
 
   //配置JS的全局变量
   var _cxt = '${_cxt}';
   var login=_cxt+"/sys/login";
   //配置js的全局变量，因为在jsp页面中使用ajax来请求的时候用得是js，js不能使用el表达式，
   //这里出来的js对象格式是 sys_sex{1:男,2:女} ，那么页面中就可以使用_dj.sys_sex[1]的形式来取出js值。
   var _dj = ${DJSON};
   var _dpm = ${PMJSON};
   var _dr = ${RJSON};
</script>



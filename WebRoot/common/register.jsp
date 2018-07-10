<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册页面</title>
<style type="text/css">
   #main{
      width: 580px;
      height: 300px;
      background-color: #AFD788;
      margin: 40px auto;
      border-radius:10px;/* 圆角边框  */
      opacity:0.75;/* 0-1越小越透明 */
      font-family: 华文中宋;
   }
   #title{
      font-size: 32px;
      line-height: 55px;
   }
   #error{
      font-size: 18px;
      line-height: 45px;
      color:red;
   }
/* --------------输入校验的样式------------- */
.focus{
	width: 176px;
	border: 1px solid red;
}
.err{
	color:red;
	font-family: 华文中宋;
	font-size: 14px;
}
/* 表单元素的宽度 */
.ipt{
    width: 176px;
    border: 1px solid;
}     
</style>
<script  type="text/javascript" src="${_plugins}/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript">
 var _cxt= '${_cxt}';

</script>
<script type="text/javascript" src="${_js}/com_check.js"></script>

</head>
<body>
   <div id="main">
     <center><span id="title">用户注册页面</span></center>
     <center><span id="error"></span></center>
     <form id="f1" action="" method="get">
     <table border="0" width="80%" align="center">
        <tr>
           <td align="right" width="35%">姓名:</td>
           <td>
               <input type="text" name="name" class="ipt">
           </td>
        </tr>
        <tr>
           <td align="right">性别:</td>
           <td>
               <select name="sex" class="ipt">
                 <option value="1">男</option>
                 <option value="2">女</option>
               </select>
           </td>
        </tr>
        <tr>
           <td align="right" width="35%">出生日期:</td>
           <td>
               <input type="text" name="birthday" class="ipt">
           </td>
        </tr>
        <tr>
           <td align="right" width="35%">用户名:</td>
           <td>
               <input type="text" name="username" class="ipt">
           </td>
        </tr>
        <tr>
           <td align="right">密&nbsp;&nbsp;&nbsp;码:</td>
           <td>
               <input type="password" name="password" class="ipt">
           </td>
        </tr>
        <tr>
           <td align="right">确认密码:</td>
           <td>
               <input type="password" name="password2" class="ipt">
           </td>
        </tr>
        <tr>
           <td align="right"></td>
           <td>
               <input type="reset" value="重置">&nbsp;&nbsp;
               <input type="submit" value="注册">&nbsp;&nbsp;
               <input type="button" value="返回" onclick="history.back();">
           </td>
        </tr>
     </table>
     </form>
   </div>
<script type="text/javascript">
   cinit(["name:姓名","birthday:出生日期:cregex:^\\d{4}-\\d{2}-\\d{2}$","password:密码"]);
</script>   
</body>
</html>










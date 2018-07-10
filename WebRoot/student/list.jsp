 
<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生列表</title>

<!-- 
<script type="text/javascript">
   function clist(){//查询
	 //表单数据系列化，这样过去就和在地址栏上面添加属性一样的形式的数据去查。
	   var data = $("#f1").serialize();
	  //	alert(data);  commit=true&name=&dkey=&useFlag=0
	   $("tr[class^=tr]").remove();//删除旧数据
	   $.ajax(
		      {
		        type:"POST",
		        url: "${_cxt}/student_list.do",
		        data: data,
		        dataType:"json",
		        success:function(jobj){//处理服务器返回信息
		        	//jobj 的格式是{object,Object} 的对象里面有两个小对象吧。。。
		        	pinit(jobj.page);
		        	
		        	$(jobj.list).each(
		        	   function(i,v){//v是DOM对象
		        		   
		        		  //i是第几个 格式是 
		        		  var newTr = $("#rw").clone();
		        	      newTr.attr("class","tr"+(i%2));
		        	      //将节点显示出来,好像下面不用先设置diansplay：none然后现在这里也不用显示。
				          newTr.show();
		        	      //发现所有的后代节点
				          var tds = newTr.find("td");
		        		  tds.eq(0).html(v.id);
		        		  tds.eq(1).html(v.name);
		        		  tds.eq(2).html(_dj.SYS_STATE[v.sex]);
		        		  tds.eq(3).html(v.birthday);
		        		  tds.eq(4).html(v.snative);//字典JS翻译
		        		  tds.eq(5).html(v.className);
		        		  tds.eq(6).html(v.createDate);
		        		  tds.eq(7).html("<a href=\"javascript:cdel('${_cxt}/student_delete.do?id="+ v.id +"');\""+
			                       " onclick=\"return confirm('确认删除吗?');\" >删除</a>｜" +
			                       "<a href=\"javascript:openDialog('字典更新','${_cxt}/student/update.jsp?id="+ v.id +"');\">更新</a>");
		        		  $("table[class=tab_list]").append(newTr);   
		        	   }		        		   
		            );
		        }          
		      }      
		);	   
   }
</script>
 -->

</head>
<body >
<s:form id="f1" action="student_list" namespace="/" method="post">
<input type="hidden" name="commit" value="true">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">姓名:</td>
              <td>
                 <s:textfield name="student.name" cssClass="ipt"/>
              </td>
              <td align="right" width="15%">班级名称:</td>
              <td>
                 <s:textfield name="student.className" cssClass="ipt"/>
              </td>
           </tr>
           <tr>
              <td align="right">性别:</td>
              <td>
                    <s:select name="student.sex" list="#application.SYS_SEX" 
                headerKey="0" headerValue="--查所有--" cssClass="ipt"></s:select> 
           
             </td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="查询" >
                 <input type="button" value="重置" onclick="clean();">
              <input type="button" value="新增" 
                 onclick="location.href='${_cxt}/student/add.jsp'">
              </td>
           </tr> 
       </table>
    </fieldset>
     <fieldset class="fset">
       <table width="100%" border="0" class="tab_list" align="center">
         <tr>
            <th colspan="8"><span class="title">学生信息列表</span>
            	<div  id="tip" style="color:red;float:right;">${msg}</div>
            </th>
         </tr>
         <tr>
            <th>记录ID</th>
            <th>姓名</th>
            <th>性别</th>
            <th>出生日期</th>
            <th>籍贯</th>
            <th>班级名称</th>
            <th>操作</th>
            <th>创建日期</th>
         </tr>
        
                 <s:iterator value="list" var="v" status="vs">
         <tr class="tr${vs.count%2}">
         <%--其实这里底层调用的是v对象的get方法，下面点击更新和删除哪儿记得把id传过去 --%>
           
              <s:url var="delete" action="student_delete" namespace="/">
            	<s:param name="student.id">${v.id}</s:param>
             </s:url>
              <s:url var="update" action="student_update" namespace="/">
            	<s:param name="student.id">${v.id}</s:param>
             </s:url>
            <td>${v.id}</td>
            <td>${v.name}</td>
            <td><mt:tran value="${v.sex}" data="${SYS_SEX}" /></td>
            <td>${v.birthday}</td>
            <td>${v.snative}</td>
            <td>${v.className}</td>
            <td>${v.createDate}</td>
            <td>						
           <!-- %{}强制把内容当ognl执行 -->
              <s:a href="%{delete}" onclick="return confirm('确定删除”')">删除</s:a>|
              <s:a href="%{update}">更新</s:a>
            </td>
         </tr>
         </s:iterator>
    
       </table>
       <%@ include file="/common/pager.jsp" %>
     </fieldset>
 </div>
</s:form> 
</body>
</html>
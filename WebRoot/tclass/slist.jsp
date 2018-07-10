
<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>班级列表</title>

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
		        url: "${_cxt}/tclass_list.do",
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
		        		  tds.eq(2).html(v.charger);
		        		  tds.eq(3).html(v.createDate);
		        		  tds.eq(4).html("<a href=\"javascript:cdel('${_cxt}/tclass_delete.do?id="+ v.id +"');\""+
			                       " onclick=\"return confirm('确认删除吗?');\" >删除</a>｜" +
			                       "<a href=\"javascript:openDialog('字典更新','${_cxt}/tclass/update.jsp?id="+ v.id +"');\">更新</a>");
		        		  $("table[class=tab_list]").append(newTr);   
		        	   }		        		   
		            );
		        }          
		      }      
		);	   
   }
</script>
 -->

<script type="text/javascript">
   function tconfirm(){
	   var objs = $("input[name=select]:checked");
	   if(objs.size()==0){
		   alert("请选择一个班级");
		   return;
	   }else{
		  //parent代表父窗口对象，通过父窗口对象执行来执行父窗口的函数将id和name传回去
		  parent.closeDialog(objs.eq(0).val());	
	   }
   }
</script>

</head>
<body >
<s:form id="f1" namespace="/" action="tclass_list">
<!-- 用来解决班级在直接点击班级管理的时候没有参数提交导致的错误问题，-->
<input type="hidden" name="commit" value="true">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">班级名称:</td>
              <td>
                 <s:textfield name="tclass.name" cssClass="ipt"></s:textfield>
              </td>
              <td align="right" width="15%">辅导员:</td>
              <td>
                  <s:textfield name="tclass.charger" cssClass="ipt"></s:textfield>
              </td>
           </tr>
           <tr>
              <td align="right"></td>
              <td>
               
              </td>
              <td align="right"></td>
              <td>
               	   <input type="submit" value="查询">
               <input type="reset" value="重置">
               <input type="button" value="确认" onclick="tconfirm();">
               <!-- parent表示父窗口 -->
               <input type="button" value="取消" onclick="parent.closeDialog('');">
              </td>
           </tr> 
       </table>
    </fieldset>
     <fieldset class="fset">
       <table width="100%" border="0" class="tab_list" align="center">
         <tr>
            <th colspan="5"><span class="title">班级信息列表</span>
           	<div  id="tip" style="color:red;float:right;">${msg}</div>
            </th>
         </tr>
         <tr>
            <th>记录ID</th>
            <th>班级名称</th>
            <th>辅导员</th>
            <th>创建日期</th>
            <th>操作</th>
         </tr>
        
         
              
         <s:iterator value="list" var="v" status="vs">
         <tr class="tr${vs.count%2}">
         <%--其实这里底层调用的是v对象的get方法，下面点击更新和删除哪儿记得把id传过去 --%>
           
              <s:url var="delete" action="tclass_delete" namespace="/">
            	<s:param name="tclass.id">${v.id}</s:param>
             </s:url>
              <s:url var="update" action="tclass_update" namespace="/">
            	<s:param name="tclass.id">${v.id}</s:param>
             </s:url>
            <td><input type="radio" name="select" value="${v.id},${v.name}"></td>
            <td>${v.name}</td>
            <td>${v.charger}</td>
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
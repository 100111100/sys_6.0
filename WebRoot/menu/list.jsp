 
<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单列表</title>

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
		        url: "${_cxt}/menu_list.do",
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
		        		  tds.eq(2).html(v.url);
		        		  tds.eq(3).html(_dpm[v.pid]);
		        		  tds.eq(4).html(_dpm[v.mlevel]);//字典JS翻译
		        		  tds.eq(5).html(v.createDate);
		        		  tds.eq(6).html("<a href=\"javascript:cdel('${_cxt}/menu_delete.do?id="+ v.id +"');\""+
			                       " onclick=\"return confirm('确认删除吗?');\" >删除</a>｜" +
			                       "<a href=\"javascript:openDialog('菜单更新','${_cxt}/menu/update.jsp?id="+ v.id +"');\">更新</a>");
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
	/* window.onload=function(){
		var mleval=document.getElementById("mlevel");
		mleval.onblur=function(){
			show();
		};
			
	};
	
	function show(){
		if($("#mlevel").val()=="1"){
	   		 $(".1").css("display","none");
	   		 $(".2").css("display","block");
	    }else if($("#mlevel").val()=="2"){
	   		 $(".1").css("display","block");
	    	 $(".2").css("display","none");
	    }else{
	    	 $(".1").css("display","block");
	    	 $(".2").css("display","block");
	    }
	}
	 */
	

</script>

</head>
<body >
<f:form id="f1" action="${_cxt}/menu/list" namespace="/" method="post">
<!-- 用来解决菜单在直接点击菜单管理的时候没有参数提交导致的错误问题，-->
<input type="hidden" name="commit" value="true">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">菜单名:</td>
              <td>
                   <f:input path="name" cssClass="ipt"/>
              </td>
              <td align="right" width="15%">父菜单:</td>
              <td>
                  <f:select path="pid" cssClass="ipt">
                      <f:option value="0" label="--查所有--"/>
                       <f:options items="${paMap}"/>
                  </f:select>  
              </td>
           </tr>
           <tr>
              <td align="right">菜单级别:</td>
              <td>
              	  <f:select path="mlevel" cssClass="ipt">
                      <f:option value="0" label="--查所有--"/>
                       <f:options items="${MENU_LEVEL}"/>
                  </f:select>  
              
              </td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="查询" >
                 <input type="button" value="重置" onclick="clean()">
                 <input type="button" value="新增" 
                 onclick="location.href='${_cxt}/menu/add.jsp'">
              </td>
           </tr> 
       </table>
    </fieldset>
     <fieldset class="fset">
       <table width="100%" border="0" class="tab_list" align="center">
         <tr>
            <th colspan="7"><span class="title">菜单信息列表</span>
            	<div  id="tip" style="color:red;float:right;">${msg}</div>
            </th>
         </tr>
         <tr>
            <th>菜单ID</th>
            <th>菜单名</th>
            <th>连接路径</th>
            <th>父菜单(FK)</th>
            <th>级别</th>
            <th>创建日期</th>
            <th>操作</th>
         </tr>
        
         <c:forEach var="v" items="${list}" varStatus="vs">
         <tr class="tr${vs.count%2}">
            <td>${v.id}</td>
            <td>${v.name}</td>
            <td>${v.url}</td>
            <td><mt:tran value="${v.pid}" data="${paMap}" /></td>
            <td><mt:tran value="${v.mlevel}" data="${MENU_LEVEL}" /></td>
            <td><fmt:formatDate value="${v.createDate}" pattern="yyyy-MM-dd" /></td>
           <td>
                <a href="${_cxt}/menu/delete?id=${v.id}" onclick="return confirm('确定删除吗？');">删除</a>|
                <a href="${_cxt}/menu/update?id=${v.id}">更新</a>  
            </td>
         </tr>
         </c:forEach>
       </table>
       <%@ include file="/common/pager.jsp" %>
     </fieldset>
 </div>
</f:form> 
</body>
</html>
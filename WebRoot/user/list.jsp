<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 引入弹出窗口JS库 -->
<script type="text/javascript" src="${_plugins}/lhgdialog/lhgdialog.min.js?self=true&skin=igreen"></script>

<script type="text/javascript">
	function showPic(filePath){//显示图片
	   if(filePath==''){
		   alert("用户头像不存在");
		   return;
	   }
	//如果图片存在就构建显示图片的窗口
	   $.dialog({
	     title: '查询图片',
	     width: '350px',
	     height: '300px',
	     lock:true,
	     content: '<img src="/images/'+ filePath +'" style="width:300px; height:300px;" />'
	   });
	}
	
	
	
	/* 
	  
	  function clist(){//查询
			 //表单数据系列化，这样过去就和在地址栏上面添加属性一样的形式的数据去查。
			   var data = $("#f1").serialize();
			  //	alert(data);  commit=true&name=&dkey=&useFlag=0
			   $("tr[class^=tr]").remove();//删除旧数据
			   $.ajax(
				      {
				        type:"POST",
				        url: "${_cxt}/user_list.do",
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
				        		  //tds.eq(1).html("<a href=\"javascript:showPic('"+v.filePath+"');\" style='color:#cc3d3d'>"+v.name+"</a>");
				        		  tds.eq(1).html(v.name);
				        		  tds.eq(2).html(v.username);
				        		  tds.eq(3).html(v.sex);
				        		  tds.eq(4).html(v.birthday);
				        		  tds.eq(5).html(v.loginFlag);
				        		  tds.eq(6).html(v.roleId);
				        		  tds.eq(7).html("<a href=\"javascript:cdel('${_cxt}/user_delete.do?id="+ v.id +"');\""+
					                       " onclick=\"return confirm('确认删除吗?');\" >删除</a>｜" +
					                       "<a href=\"javascript:openDialog('角色更新','${_cxt}/user/update.jsp?id="+ v.id +"');\">更新</a>");
				        		  $("table[class=tab_list]").append(newTr);   
				        	   }		        		   
				            );
				        }          
				      }      
				);	   
		   }
	 */
	
</script>

<title>用户列表</title>
</head>
<body >
<f:form id="f1" action="${_cxt}/user/list" namespace="/" method="post" enctype="multipart/form-data">
<!-- 用来解决用户在直接点击用户管理的时候没有参数提交导致的错误问题，-->
<input type="hidden" name="commit" value="true">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">用户名:</td>
              <td>
                 <f:input path="username" cssClass="ipt"/>
              </td>
              <td align="right" width="15%">姓名:</td>
              <td>
                 <f:input path="name" cssClass="ipt"/>
              </td>
           </tr>
           <tr>
              <td align="right">性别:</td>
              <td>
                 <f:select path="sex" cssClass="ipt">
                    <f:option value="0" label="--查所有--"/>
                    <f:options items="${SYS_SEX}"/>
                  </f:select>  
              </td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="查询" >
                 <input type="button" value="重置" onclick="clean();">
                         <input type="button" value="新增" 
                  onclick="location.href='${_cxt}/user/add.jsp'">
              </td>
           </tr> 
       </table>
    </fieldset>
     <fieldset class="fset">
       <table width="100%" border="0" class="tab_list" align="center">
         <tr>
            <th colspan="8"><span class="title">用户信息列表</span>
            	<div style="color:red;float:right;">${requestScope.msg}</div>
            </th>
         </tr>
         <tr>
            <th>记录ID</th>
            <th>姓名</th>
            <th>用户名</th>
            <th>性别</th>
            <th>出生日期</th>
            <th>状态</th>
            <th>角色名称</th>
            <th>操作</th>
         </tr>
          <c:forEach var="v" items="${list}" varStatus="vs">
          <tr class="tr${vs.count%2}">
            <td>${v.id}</td>
            <td><a href="javascript:showPic('${v.filePath}');">${v.name}</a></td>
            <td>${v.username}</td>
            <td><mt:tran value="${v.sex}" data="${SYS_SEX}" /></td>
            <td><fmt:formatDate value="${v.birthday}" pattern="yyyy-MM-dd" /></td>
            <td><mt:tran value="${v.loginFlag}" data="${SYS_STATE}" /></td>
            <td><mt:tran value="${v.roleId}" data="${roleMap}" /></td>
            <td>
                <a href="${_cxt}/user/delete?id=${v.id}" onclick="return confirm('确定删除吗？');">删除</a>|
                <a href="${_cxt}/user/updateForId?id=${v.id}">更新</a>  
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
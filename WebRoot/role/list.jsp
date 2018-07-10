
<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色列表</title>

<!-- 引入弹出窗口JS库 -->
<script type="text/javascript" 
         src="${_plugins}/lhgdialog/lhgdialog.min.js?self=true&skin=igreen"></script>
         
         <script type="text/javascript">
  var dialog;
  //把url对应页面在弹出窗口中打开
  function showDialog(url,title){
     dialog = $.dialog({
        title:title,
     	width: '400px',
    	height:'420px',
    	content: 'url:'+url
	 });
  }
  //关闭
  function closeDialog(result){
    dialog.close();
    $("#tip").html(result);	
  }
  </script>
         
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
			        url: "${_cxt}/role_list.do",
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
			        		  tds.eq(2).html(v.createDate);
			        		  tds.eq(3).html("<a href=\"javascript:cdel('${_cxt}/role_delete.do?id="+ v.id +"');\""+
				                       " onclick=\"return confirm('确认删除吗?');\" >删除</a>｜" +
				                       "<a  href=\"javascript:showDialog('${_cxt}/role_menuTree.do?id="+ v.id +"','正在为角色分配权限');\">分配权限</a> ｜" +
				                       "<a href=\"javascript:openDialog('角色更新','${_cxt}/role/update.jsp?id="+ v.id +"');\">更新</a>");
			        		  $("table[class=tab_list]").append(newTr);   
			        	   }		        		   
			            );
			        }          
			      }      
			);	   
	   }
  
  </script> -->

</head>
<body >
<s:form id="f1" action="role_list" namespace="/" method="post">
<!-- 用来解决角色在直接点击角色管理的时候没有参数提交导致的错误问题，-->
<input type="hidden" name="commit" value="true">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
       
           <tr>
              <td align="right" width="15%">角色名称:</td>
              <td>
                 <s:textfield  name="role.name" cssClass="ipt" />
              </td>
              <td align="right" width="15%"></td>
              <td>
              </td>
           </tr>
           <tr>
              <td align="right"></td>
              <td>
               
              </td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="查询" >
                 <input type="button" value="重置" onclick="clean();">
                     <input type="button" value="新增" 
                 onclick="location.href='${_cxt}/role/add.jsp'">
              </td>
           </tr> 
           
           
       </table>
    </fieldset>
     <fieldset class="fset">
       <table width="100%" border="0" class="tab_list" align="center">
        
         <tr>
            <th colspan="4"><span class="title">角色信息列表</span>
            	<div id="tip" style="color:red;float:right;">${requestScope.msg}</div>
            </th>
         </tr>
       
         <tr>
            <th>记录ID</th>
            <th>角色名称</th>
            <th>创建日期</th>
            <th>操作</th>
         </tr>
  
         <s:iterator value="list" var="v" status="vs">
         <tr class="tr${vs.count%2}">
         <%--其实这里底层调用的是v对象的get方法，下面点击更新和删除哪儿记得把id传过去 --%>
           
              <s:url var="delete" action="role_delete" namespace="/">
            	<s:param name="role.id">${v.id}</s:param>
             </s:url>
              <s:url var="update" action="role_update" namespace="/">
            	<s:param name="role.id">${v.id}</s:param>
             </s:url>
            <td>${v.id}</td>
            <td>${v.name}</td>
            <td>${v.createDate}</td>
            <td>						
           <!-- %{}强制把内容当ognl执行 -->
              <s:a href="%{delete}" onclick="return confirm('确定删除”')">删除</s:a>|
              <s:a href="%{update}">更新</s:a>|  
              <a href="javascript:showDialog('${_cxt}/role_menuTree.do?role.id=${v.id}','正在为角色分配权限');">分配权限</a>
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
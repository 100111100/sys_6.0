<%@ include file="/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>字典列表</title>
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
		        url: "${_cxt}/dict_list.do",
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
		        		  tds.eq(1).html(v["name"]);//这样同样能取到正确的值
		        		  tds.eq(2).html(v.dkey);
		        		  tds.eq(3).html(v.dval);
		        		  tds.eq(4).html(_dj["SYS_STATE"][v.useFlag]);//字典JS翻译
		        		  tds.eq(5).html(v.orderNo);
		        		  tds.eq(6).html(v.createDate);
		        		  tds.eq(7).html("<a href=\"javascript:cdel('${_cxt}/dict_delete.do?id="+ v.id +"');\""+
			                       " onclick=\"return confirm('确认删除吗?');\" >删除</a>｜" +
			                       "<a href=\"javascript:openDialog('字典更新','${_cxt}/dict/update.jsp?id="+ v.id +"');\">更新</a>");
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

<f:form id="f1" action="${_cxt}/dict/list" method="post">
 <!-- 隐藏域，用来区分是否提交 -->
 <input type="hidden" name="commit" value="true">
 <div id="div_list">
    <fieldset class="fset">
       <table width="100%" align="center" border="0">
           <tr>
              <td align="right" width="15%">字典名称:</td>
              <td>
                 <f:input path="name" cssClass="ipt"/>
              </td>
              <td align="right" width="15%">字典KEY:</td>
              <td>
                 <f:input path="dkey" cssClass="ipt"/>
              </td>
           </tr>
           <tr>
              <td align="right">使用状态:</td>
              <td>
                <f:select path="useFlag" cssClass="ipt">
                  <f:option value="0" label="--查所有--"/>
                  <f:options items="${SYS_STATE}"/>
                </f:select>  
              </td>
              <td align="right"></td>
              <td>
                 <input type="submit" value="查询">
                 <input type="button" onclick="clean();" value="重置">
                 <input type="button" value="新增" 
                        onclick="location.href='${_cxt}/dict/add.jsp'">
              </td>
           </tr>
       </table>
    </fieldset>
     <fieldset class="fset">
       <table width="100%" border="0" class="tab_list" align="center">
         <tr>
            <th colspan="7">
               <span class="title">字典信息列表</span>
               <div style="color:red;float:right;">${msg}</div>
            </th>
         </tr>
         <tr>
            <th>记录ID</th>
            <th>字典名称</th>
            <th>字典KEY</th>
            <th>字典VALUE</th>
            <th>使用状态</th>
            <th>顺序号</th>
            <th>操作</th>
         </tr>
         <c:forEach var="v" items="${list}" varStatus="vs">
         <tr class="tr${vs.count%2}">
            <td>${v.id}</td>
            <td>${v.name}</td>
            <td>${v.dkey}</td>
            <td>${v.dval}</td>
            <td><mt:tran value="${v.useFlag}" data="${SYS_STATE}" /></td>
            <td>${v.orderNo}</td>
            <td>
                <a href="${_cxt}/dict/delete?id=${v.id}" onclick="return confirm('确定删除吗？');">删除</a>|
                <a href="${_cxt}/dict/update?id=${v.id}">更新</a>  
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统菜单</title>
    <script src="${_plugins}/jmenu/Js/prototype.lite.js" type="text/javascript"></script>
    <script src="${_plugins}/jmenu/Js/moo.fx.js" type="text/javascript"></script>
    <script src="${_plugins}/jmenu/Js/moo.fx.pack.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="${_plugins}/jmenu/Style/skin.css" />
    <script type="text/javascript">
        window.onload = function(){
            var contents = document.getElementsByClassName('content');
            var toggles = document.getElementsByClassName('type');

            var myAccordion = new fx.Accordion(
            toggles, contents, {opacity: true, duration: 400}
            );
            myAccordion.showThisHideOpen(contents[0]);
            for(var i=0; i<document .getElementsByTagName("a").length; i++){
                var dl_a = document.getElementsByTagName("a")[i];
                    dl_a.onfocus=function(){
                        this.blur();
                    };
            }
        };
    </script>
</head>

<body>
    <table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
        <tr>
            <td width="182" valign="top">
                <div id="container">
                   <c:forEach items="${sessionScope.umenu}" var="v">
                    <h1 class="type"><a href="javascript:void(0)">${v.key.name}</a></h1>
                    <div class="content">
                        <ul class="RM">
                           <c:forEach items="${v.value}" var="m">
                            <li><a href="${_cxt}/${m.url}" target="right">${m.name}</a></li>
                           </c:forEach>
                        </ul>
                    </div>
                   </c:forEach>
                </div>
            </td>
        </tr>
    </table>
</body>
</html>
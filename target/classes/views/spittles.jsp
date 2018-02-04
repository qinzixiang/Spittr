<%--
  Created by IntelliJ IDEA.
  User: qzx
  Date: 2018/1/16
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<!-- 使用c标签需要引入jstl的jar包，本项目使用maven引入javax.servlet的jstl包 -->
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>

<head>
    <title>spittles</title>
</head>
<body>
<ul>
<c:forEach items="${spittleList}" var="spittle">
    <li id="spittle_<c:out value="${spittle.id}"/>">
        <div class="spittleMessage">
            <c:out value="${spittle.message}"/>
        </div>
        <div>
            <span class="spittleTime"><c:out value="${spittle.time}"/></span>
            <span class="spittleLocation">
                (<c:out value="${spittle.latitude}"/>,
                <c:out value="${spittle.longitude}"/>)
            </span>
        </div>
    </li>
</c:forEach>
</ul>
</body>
</html>

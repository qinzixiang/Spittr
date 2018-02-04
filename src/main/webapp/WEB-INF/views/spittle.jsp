<%--
  Created by IntelliJ IDEA.
  User: qzx
  Date: 2018/1/17
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>spittle</title>
</head>
<body>
<div class="spittleView">
    <div class="spittleMessage">
        <c:out value="${spittle.message}"/>
    </div>
    <div>
        <span class="spittleTime"><c:out value="${spittle.time}"/></span>
    </div>

</div>
</body>
</html>

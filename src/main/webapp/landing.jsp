<%--
  Created by IntelliJ IDEA.
  User: kevinorta
  Date: 11/30/21
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int visits = 0; %>
<%
    if(visits == 0) {
        request.setAttribute("HasUserBeenHere", false);
    } else {
        request.setAttribute("HasUserBeenHere", true);
    }

    visits++;
%>
<html>
<head>
    <title>Mission Statement</title>
</head>
<body>
<c:choose>
    <c:when test="${HasUserBeenHere}">
        <h2>Welcome Back</h2>
    </c:when>
    <c:otherwise>
        <h2>Hello for the first time!</h2>
    </c:otherwise>
</c:choose>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab alias aut commodi consequatur, dolore eaque excepturi exercitationem, molestiae mollitia nam nobis sapiente tempore totam. Nesciunt!</p>
</body>
</html>

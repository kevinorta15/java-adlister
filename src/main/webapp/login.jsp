<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kevinorta
  Date: 11/30/21
  Time: 11:59 AM
  To change this template use File | Settings | File Templates.
--%>




<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="partials/headfiles.jsp"%>
    <title>Login Page</title>
</head>
<body>
<%@include file="partials/navbar.jsp"%>
<form method="POST">
    <div class="form-group">
        <label for="username">Username</label>
        <input type="text" class="form-control" name="username" id="username" aria-describedby="emailHelp">
        <small id="emailHelp" class="form-text text-muted">We'll never share your username with anyone else.</small>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

<%
request.setAttribute("username", request.getParameter("username"));
%>
<p>Username: ${username}</p>
<% request.setAttribute("password", request.getParameter("password"));%>
<p>Password: ${password}</p>

<c:choose>
    <c:when test="${username.equals('admin') && password.equals('password')}">
        <% response.sendRedirect("/profile.jsp");%>
    </c:when>
</c:choose>




<%@include file="partials/scripts.jsp"%>
</body>
</html>

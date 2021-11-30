<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- Prefix "c" referencing JSTL: "c" = "JSTL" --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%! int counter = 0; %>
<% counter += 1;
    request.setAttribute("NumberofVisits", counter);
%>
<html>
<head>
 <%@include file="partials/headfiles.jsp"%>
    <title>Title</title>
</head>
<body>

<%@include file="partials/navbar.jsp"%>

<%
    if(request.getParameter("reset") != null && request.getParameter("reset").equals("true")){
        counter = 0;
    };
%>

<h1>The current count is ${NumberofVisits}.</h1>

<p>Resetting Counter: ${param.reset}</p>

View the page source!


<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->

<%@include file="partials/scripts.jsp"%>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Current Ads</title>
</head>
<body>

<c:forEach items="${allAds}" var="ad">
    <div>
        ${ad.getTitle()}
    </div>
    <p>${ad.getDescription()}</p>
    <br>
</c:forEach>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Result</title>
</head>
<body>
<h1>Kết quả tra cứu</h1>
<c:choose>
    <c:when test="${notFound}">
        <p>Không tìm thấy từ tìm kiếm: "${word}"</p>
    </c:when>
    <c:otherwise>
        <p>Từ: ${word}</p>
        <p>Nghĩa: ${meaning}</p>
    </c:otherwise>
</c:choose>
<a href="/">Tra cứu từ khác</a>
</body>
</html>



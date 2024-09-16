<%--
  Created by IntelliJ IDEA.
  User: thaingocphat
  Date: 16/9/24
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<h1>Tra cứu từ điển Anh-Việt</h1>
<form action="/translate" method="GET">
    <label for="word">Nhập từ:</label>
    <input type="text" id="word" name="word">
    <button type="submit">Dịch</button>
</form>
</body>
</html>


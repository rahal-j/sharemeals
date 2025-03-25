<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Users</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<h2>Registered Users</h2>

<table border="1" style="margin: 0 auto; border-collapse: collapse;">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Role</th>
        <th>Address</th>
    </tr>

    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.role}</td>
            <td>${user.address}</td>
        </tr>
    </c:forEach>
</table>

<div style="text-align: center; margin-top: 20px;">
    <a href="/" class="button">← Back to Home</a>
</div>

</body>
</html>

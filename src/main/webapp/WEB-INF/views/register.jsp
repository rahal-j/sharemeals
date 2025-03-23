<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<div class="form-container">
    <h2>Register</h2>

    <c:if test="${not empty error}">
        <p class="message" style="color: red">${error}</p>
    </c:if>
    <c:if test="${not empty success}">
        <p class="message" style="color: green">${success}</p>
    </c:if>

    <form action="/register" method="post">
        <label>Name:</label>
        <input type="text" name="name" required>

        <label>Email:</label>
        <input type="email" name="email" required>

        <label>Password:</label>
        <input type="password" name="password" required>

        <label>Role:</label>
        <select name="role" required>
            <option value="">Select Role</option>
            <option>Restaurant</option>
            <option>Caterer</option>
            <option>Individual</option>
        </select>

        <label>Address:</label>
        <input type="text" name="address">

        <input type="submit" value="Register">
    </form>

    <div style="text-align: center; margin-top: 15px;">
        <a href="/" class="button">← Back to Home</a>
    </div>
</div>


</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Volunteer Registration</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<div class="form-container">
    <h2>Register as a Volunteer</h2>

    <c:if test="${not empty success}">
        <p class="message" style="color: green">${success}</p>
    </c:if>

    <form action="/volunteer/register" method="post">
        <label>Name:</label>
        <input type="text" name="name" required>

        <label>Email:</label>
        <input type="email" name="email" required>

        <label>Password:</label>
        <input type="password" name="password" required>

        <label>Address:</label>
        <input type="text" name="address" required>

        <input type="hidden" name="latitude" id="latitude">
        <input type="hidden" name="longitude" id="longitude">

        <input type="submit" value="Register">
    </form>

    <div style="text-align: center; margin-top: 15px;">
        <a href="/" class="button">← Back to Home</a>
    </div>
</div>

<script>
window.onload = function() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            document.getElementById("latitude").value = position.coords.latitude;
            document.getElementById("longitude").value = position.coords.longitude;
        });
    }
}
</script>

</body>
</html>

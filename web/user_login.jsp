<%-- 
    Document   : login
    Created on : Aug 28, 2024, 6:10:02 AM
    Author     : pasan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
</head>

    <body>
        <div class="container">
            <h1>User Login</h1>
            <c:if test="${param.msg=='error2'}">
                <p class="errormsg">Invalid Login Details</p>
            </c:if>
           
            <form action="User_Login" method="POST">
                <div class="form-group">
                    <label for="mobile">Mobile</label>
                    <input type="text" name="mobile" id="mobile" required />
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" required />
                </div>
                <button type="submit">Login</button>
            </form>

            <div class="register-link">
                <p>Don't have an account? <a href="user_registration.jsp">Register here</a></p>
            </div>
        </div>
    </body>
</html>

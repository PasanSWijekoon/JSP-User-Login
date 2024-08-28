<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
</head>

    <body>
        <div class="container">
            <h1>User Registration</h1>
            <c:if test="${param.msg=='error1'}">
                <p class="errormsg">Mobile number Already Used</p>
            </c:if>
           
            <form action="User_Registration" method="POST">
                <div class="form-group">
                    <label for="mobile">Mobile</label>
                    <input type="text" name="mobile" id="mobile" required />
                </div>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" id="name" required />
                </div>
                <div class="form-group">
                    <label>Gender</label>
                    <div class="gender-options">
                        <label><input type="radio" name="gender" value="Male" required/> Male</label>
                        <label><input type="radio" name="gender" value="Female" required/> Female</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="country">Country</label>
                    <select name="country" id="country" required>
                        <option value="" disabled selected>Select Country</option>
                        <option>Australia</option>
                        <option>Canada</option>
                        <option>Italy</option>
                        <option>Japan</option>
                        <option>Sri Lanka</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" required />
                </div>
                <button type="submit">Create Account</button>
            </form>
                
                <div class="login-link">
                <p>Have an account? <a href="user_login.jsp">Login here</a></p>
            </div>
                
        </div>
    </body>
</html>

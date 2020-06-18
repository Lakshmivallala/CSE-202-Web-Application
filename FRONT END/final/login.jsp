<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User login</title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
<div class="loginbox">
                <img src="assets/images/avatar.png" class="avatar">
                <h1>Login Here</h1>
                <form action="Login">
                    <p>Username</p>
                    <input type="text" name="uname"  placeholder="Enter Username">
                    <p>Password</p>
                    <input type="password" name="pass" placeholder="Enter Password">
                    <input type="submit"  value="Login">
                    <a href="#">Forgot password?</a><br>
                    <a href="signup.jsp">Don't have an account?</a>
                </form>
            </div>

</body>
</html>

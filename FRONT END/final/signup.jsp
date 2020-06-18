<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Sign up</title>
        <link rel="stylesheet" type="text/css" href="css/signup.css">
</head>
<body>
<div class="signup">
                <img src="assets/images/avatar.png" class="avatar">
                <h1>Sign up here</h1>
                <form action="Signup">
                    <p>Enter email</p>
                    <input type="text" name="email" placeholder="Enter your email">
                    <p>Create username</p>
                    <input type="text" name="uname" placeholder="Enter username">
                    <p>Create password</p>
                    <input type="password" name="pass" placeholder="Enter Password">
                    <p>Confirm password</p>
                    <input type="password" name="cpass" placeholder="Confirm password">
                    <input type="submit" name="" value="Sign up">
                    
                    <a href="login.jsp"> Already have an account Login</a>
                </form>
            </div>

</body>
</html>
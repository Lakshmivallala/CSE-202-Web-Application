<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width initial-scale=1.0">
    <meta http-equiv="X-UA-Compatibe" content="ie=edge">
    <title>Contact us</title>
    <link href="http://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="css/contactus.css">
</head >
<body style="background-image: url('assets/images/contactus.jpg')">


    <div class="wrapper" >
        <div class="nav">
            <div class="left">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    
                </ul>
            </div>
            <div class="right">
                <ul>
                    <li><a href="login.jsp">Log In</a></li>
                    <li><a href="signup.jsp">Sign up</a></li>
                </ul>
            </div>
        </div>

        <div class="header">
            <h1>Contact Us</h1>
            <p>
                Get in touch to know more.
            </p>
        </div>

        <div class="form">
            <form>
                <input type="text" placeholder="Name" />
                <input type="text" placeholder="E-Mail" />
                <input type="text" id="msg" placeholder="Message" />
            </form>
            <button type="button">Let's Talk</button>
        </div>
    </div>

</body>
</html>
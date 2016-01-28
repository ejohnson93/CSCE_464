<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<h1> Register here</h1>
<%if (request.getAttribute("nameTaken") != null){ %>
<h2><%= request.getAttribute("nameTaken") %></h2>
<%} else if (request.getAttribute("passError") != null) {%>
<h2><%= request.getAttribute("passError") %></h2>
<%}else { %>
<h2>If you do not have an account, please click the "Register" button below to create an account.</h2>
<%} %>
<form name="input" action="Register" method="post">
User name: <input type="text" name="username">
<br></br>
Password: <input type="password" name="password">
<br></br>
Confirm Password: <input type="password" name="confirm">
<br></br>
<input type="submit" value="Submit">
</form> 
</body>
</html>
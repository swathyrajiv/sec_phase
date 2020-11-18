<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome admin</title>
</head>
<body>
	<%@include file = "header.html" %>
	<div>
	<h2>
	<%
		out.println("welcome " + session.getAttribute("username"));
	%>
	</h2>
	<br>
	<br>
	</div>
	<nav>
	<a href="adminpassedit.html" > <b>Change password</b></a>&nbsp;&nbsp;&nbsp;
	
	<a href = "adminflightdetails.html"><b>Add flight details</b></a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href = "logout.jsp"><b>Logout</b></a>&nbsp;
	
	</nav>
	
	
	

</body>
</html>
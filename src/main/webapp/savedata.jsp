<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>save data</title>
</head>
<body>
<%

String id=(String)request.getParameter("flightid");
session.setAttribute("id",id);  %>

 <jsp:forward page="book.html"></jsp:forward>

</body>
</html>
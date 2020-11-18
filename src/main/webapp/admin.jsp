
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="secphase.Dbcon"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
</head>
<body>
<%@include file = "header.html" %>
<%
String username=request.getParameter("username");
String password = request.getParameter("password");

String userdetail[]= new String[2];
Dbcon ref = new Dbcon();
userdetail=ref.fetchAdminLogin();
%>
<% 
if(username.equals(userdetail[0])&&(password.equals(userdetail[1]))){
session.setAttribute("username", username);%>

<jsp:forward page="adminwel.jsp" /> 
<%} %><%else { %>
<% out.println("Invalid user name and password");%>
<%} %>



</body>
</html>
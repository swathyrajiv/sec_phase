<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "secphase.UserDbcon " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contact-us</title>
</head>
<body>
<%@include file = "header.html" %>
<%String name = request.getParameter("firstname");
String lname = request.getParameter("lastname");
String subject = request.getParameter("subject");
UserDbcon ref = new UserDbcon();
int t = ref.updateContactus(name,lname,subject);
if(t == 1){
%>
<% out.println( "Thank you for using our feedback form...we will get back to you soon..");%> 
<%}else{ %>
<%out.println("sorry we are running out...plaese try after sometime" );%>
<%} %>
</body>
</html>
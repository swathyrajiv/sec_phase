<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "secphase.UserDbcon,java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user details</title>
</head>
<body>
<%@include file = "header.html" %>
<form action="payment.html" method ="post">
<% 
String id = (String)session.getAttribute("id"); 
UserDbcon ref = new UserDbcon();
ArrayList <String>result = new ArrayList<String>();
result = ref.fetchItinery(id);
%>
<h2>you have selected the following city destination and airways </h2>
<% for(int i=0;i<result.size();i++){
%>
<% out.println(result.get(i)); %><br>
<br>
<%} %>
<input type ="submit" value = "click to go to payment page ">

</form>
</body>
</html>
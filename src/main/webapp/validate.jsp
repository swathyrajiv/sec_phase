<%@page import="secphase.UserDbcon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>validate</title>
</head>
<body>
<%

String fname = request.getParameter("fname");
%>
<%-- <%out.println(fname);%><br>
<% 
if(fname==null){
%>
<%= "please enter a name" %><br>
<%} %>	 --%>
<% String lname = request.getParameter("lname");
 %>
<% 
String phone = request.getParameter("phone");
 %>
<% 
String emailid =request.getParameter("emailid");
 %>
  
<% 
String noofpersons = request.getParameter("noofpersons");
%>
<%
String address = request.getParameter("address");
 %>
<%
String date = request.getParameter("date");
UserDbcon ref = new UserDbcon();
int t = ref.insertUserDetails(fname,lname,phone,emailid,date,Integer.parseInt(noofpersons),address); 
if(t==1){
%>
<%
session.setAttribute("fname",fname);
session.setAttribute("lname",lname);
session.setAttribute("phone",phone);
session.setAttribute("emailid",emailid);
session.setAttribute("noofpersons",noofpersons);
session.setAttribute("date",date);
session.setAttribute("address",address);
%>
<jsp:forward page="userflightdetails.jsp"></jsp:forward>
<%} 
 else { %>
<%="unable to update please try again later" %>
<%} %>
</body>
</html>
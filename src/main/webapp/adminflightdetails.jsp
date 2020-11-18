<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="secphase.Dbcon"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin_flight_details</title>
</head>
<body>
<%@include file = "header.html" %>
<% 
        String source = request.getParameter("source");
        String destination = request.getParameter("destination");
        String airways = request.getParameter("airways");
        
        int ticket_charge = Integer.parseInt(request.getParameter("ticketcharge"));
        Dbcon ref = new Dbcon();
       int t= ref.addflightdetails(source, destination, airways,ticket_charge);
        if(t==1){
         %>
         <%out.println("flight details added successfully"); %>
         <%} %> 
         <h3>Do you want to continue ?? click below...</h3>
         <a href ="adminwel.jsp">click on this link to go back to welcome page</a> 
        
</body>
</html>
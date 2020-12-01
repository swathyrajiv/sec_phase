<%@page import="secphase.Dbcon" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin pass edit</title>
</head>
<body>
<%@include file = "header.html" %>

	  <%
        String user = request.getParameter("username");
        String newp = request.getParameter("password");
        String confirmpass = request.getParameter("cpassword");
        if(!newp.equalsIgnoreCase(confirmpass)){
        	%>
        	<%="password and confirm password not same.." %>
       <%} else { 
       
        Dbcon ref = new Dbcon();
    int t = ref.insertData(user,newp);
       if(t==1){
    		%>
    		<%out.println("your username and password updated  successfully"); %>
         <a href ="adminwel.jsp">click on this link to go back to welcome page</a> 
    		
    	<%}else  {%>

    		<%= "not able to update" %>
    	<% }%>
    	<%} %>

    
        
	 
</body>
</html>
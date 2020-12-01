<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="secphase.Dbcon, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view flight details</title>
</head>
<body>
<label>Source</label>&emsp;
<label>Destination</label>&emsp;
<label>Airways</label>&emsp;
<label>ticket Fare</label>&emsp;
<%Dbcon ref = new Dbcon(); 
ArrayList<String>fetch_flightdetails = new ArrayList<String>();
fetch_flightdetails=ref.fetchflightdetails();

for(int i = 0; i <fetch_flightdetails.size();i++){
	if(i%4==0){%>
	<br>
	<br>
<% }%>

  
<%out.println(fetch_flightdetails.get(i)); %>&nbsp;
	
<%} %>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.*,java.util.*,java.text.SimpleDateFormat" %>
    <%@page import="secphase.Dbcon"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search</title>
</head>
<body>
<form action="savedata.jsp" method = "post">
<%@include file = "header.html" %>
<%

 
String source = request.getParameter("source");
String destination = request.getParameter("destination");
Dbcon ref = new Dbcon ();
ArrayList<String> fetchsource = new ArrayList<String>();
fetchsource= ref.fetchsource(source,destination);
 ArrayList<String> fetchdestination = new ArrayList<String>();
fetchdestination= ref.fetchdestination(source,destination);
ArrayList<String> fetchairways = new ArrayList<String>();
fetchairways= ref.fetchairways(source,destination);
ArrayList<Integer> fetchticket_charge = new ArrayList<Integer>();
 fetchticket_charge = ref.fetchTicketCharge(source,destination);
 ArrayList<Integer> fetchflightid = new ArrayList<Integer>();
 fetchflightid = ref.fetchflightid(source,destination); 
if(fetchsource.isEmpty()){
%>
<%out.println("sorry not found....please check another place"); %>
<%}else { %>

<div align="center">
<table>
<caption><b>SEARCH RESULTS</b></caption>
    <tr>
    	<th scope = "col">flightid </th>
        <th scope="col">FROM</th>
        <th scope="col">DESTINATION</th>
        <th scope="col">AIRWAYS</th>
        <th scope="col">TICKET CHARGE</th>
    </tr>
    
<% 
for(int i =0,t=0;i<fetchsource.size();i++,t++){
	   %>
	  <tr>
	  
	  <td><input type="radio" name="flightid" value="<%out.println(fetchflightid.get(i)); %>" id="<%out.println(fetchflightid.get(i)); %>" required><%out.println(fetchflightid.get(i));%></td>
	  	   <td> <input type = "text" name = "selectedsource"  value="<%out.println(fetchsource.get(i)); %>"></td>
	   <td><input type = "text" name = "selecteddestination"  value=" <%out.println(fetchdestination.get(i)); %>"></td>
	  <td><input type = "text" name = "selectedairways" value=" <%out.println(fetchairways.get(i)); %>"></td>
	  <td><input type = "text" name = "selectedticketcharge"  value =" <%out.println(fetchticket_charge.get(i)); %>"></td>
	 
	    </tr> 
	   
<%} %> 


</table>
</div>
  <p align="center">
<input type = "submit" id = "btnapprov" name ="book" value ="Click Here to book"> 
<%} %>
</p>
</form>


</body>
</html>
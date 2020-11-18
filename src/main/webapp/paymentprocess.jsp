<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "secphase.UserDbcon,java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment process</title>
</head>
<body>
<h1>your flight details</h1>
<% 
String id = (String)session.getAttribute("id"); 
UserDbcon ref = new UserDbcon();
ArrayList <String>result = new ArrayList<String>();
result = ref.fetchItinery(id);
for(int i=0;i<result.size();i++){
%>
<% out.println(result.get(i)); %>
<%} %>
<h2>your personal details</h2>
<h3>Payment confirmed ...Enjoy your flight..</h3>
<% 

String fname=(String)session.getAttribute("fname");
String lname =(String)session.getAttribute("lname");
String phone = (String)session.getAttribute("phone");
String emailid = (String)session.getAttribute("emailid");
String date = (String)session.getAttribute("date");
String address = (String)session.getAttribute("address");
%>
FName :<%out.println(fname);%><br>
LName<%out.println(lname);%><br>
Phone<%out.println(phone);%><br>
Email-id<%out.println(emailid);%><br>
Date of travel<%out.println(date);%><br>
Address<%out.println(address);%><br>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page  import = "secphase.UserDbcon, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view contact</title>
</head>
<body>
<%@ include file = "header.html"  %>
<%
UserDbcon ref = new UserDbcon();
ArrayList<String> al = new ArrayList<String>();
al = ref.fetchUserFeedback();
for(int i = 0; i<al.size();i++){
	%>
	<%out.println(al.get(i)); %>
<%} %>

</body>
</html>
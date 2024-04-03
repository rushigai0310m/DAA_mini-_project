<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<link   rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >  
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
<% 
String id = session.getAttribute("userID").toString() ;
String mail = session.getAttribute("userEmail").toString();
String name = session.getAttribute("userName").toString() ;
%>
<h2><%=id %></h2>
<h2><%=mail %></h2>
<h2><%=name %></h2>
<h1>Score <%= request.getParameter("AnswerSumS") %></h1>
</body>
</html>
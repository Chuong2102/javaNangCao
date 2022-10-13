<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String ngay = request.getParameter("sDay");
	String thang = request.getParameter("sMonth");
	String nam = request.getParameter("sYear");
	
	out.println("Ngay " + ngay + " thang " + thang +" nam " + nam);
	%>
</body>
</html>
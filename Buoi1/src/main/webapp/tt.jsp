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
	String maMon = request.getParameter("mm");
	if(maMon.equals("jvnc"))
		out.print("Java nang cao <hr>");
	else if(maMon.equals("trr"))
		out.print("Toan roi rac <hr>");
	else if(maMon.equals("csdl"))
		out.print("Co so du lieu <hr>");
	%>
</body>
</html>
<%@page import="bo.giohangbo"%>
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
		giohangbo gh;
		
		if(session.getAttribute("gio") == null){
			gh = new giohangbo();
			session.setAttribute("gio", gh);
		}
		
		gh = (giohangbo)session.getAttribute("gio");
		gh.XoaHetSach();
		session.setAttribute("gio", gh);
		
		response.sendRedirect("htsach.jsp");
	%>
</body>
</html>
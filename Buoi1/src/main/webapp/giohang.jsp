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
		String maSach = request.getParameter("ms");
		String tenSach = request.getParameter("ts");
		long gia = Long.parseLong(request.getParameter("gia"));
		
		giohangbo gh;
		
		if(session.getAttribute("gio") == null){
			gh = new giohangbo();
			session.setAttribute("gio", gh);
		}
		
		gh = (giohangbo)session.getAttribute("gio");
		gh.Them(maSach, tenSach, gia, (long)1);
		session.setAttribute("gio", gh);
		
		response.sendRedirect("htgio.jsp");
		
	%>
</body>
</html>
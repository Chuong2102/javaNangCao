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
		
		giohangbo gh;
		
		if(session.getAttribute("gio") == null){
			gh = new giohangbo();
			session.setAttribute("gio", gh);
		}
		
		gh = (giohangbo)session.getAttribute("gio");
		gh.XoaSach(maSach);
		session.setAttribute("gio", gh);
		
		if(gh.ds.size() != 0)
			response.sendRedirect("htgio.jsp");
		else
			response.sendRedirect("htsach.jsp");
		
	%>
</body>
</html>
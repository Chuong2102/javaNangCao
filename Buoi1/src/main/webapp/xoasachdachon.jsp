<%@page import="bo.giohangbo"%>
<%@page import="java.util.Enumeration"%>
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
	
		String names = request.getParameter("listbooks");
		String[] ms = names.split(",");
		
		for(String maSach : ms){
			gh.XoaSach(maSach);
		}

		session.setAttribute("gio", gh);
		
		if(gh.ds.size() != 0)
			response.sendRedirect("htgio.jsp");
		else
			response.sendRedirect("htsach.jsp");
		
	%>
</body>
</html>
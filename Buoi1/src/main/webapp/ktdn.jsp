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
		
		if(session.getAttribute("acc") != null){
			String tk = request.getParameter("txtun");
			String pass = request.getParameter("txtpass");
			
			if(tk != null && pass != null){
				if(tk.equals("abc") && pass.equals("123")){
					session.setAttribute("acc", "ChuongDoan");
					response.sendRedirect("htsach.jsp");
				}
				else
				{
					out.println("Dang nhap khong thanh cong");
				}
			}
		}
	%>
</body>
</html>
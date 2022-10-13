<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="inSo.jsp" method="get">
		<input name="num" type="number" >
		<input type="submit" value="Xem">
	</form>
	
	<% 
		String so = request.getParameter("num");
		
		if(so != null){
			int n = Integer.parseInt(so);
			for(int i = 1; i <= 10; i++)
			out.println(n +" x " + i+" = " + i * n + "<hr>");
			
		}
	%>
</body>
</html>
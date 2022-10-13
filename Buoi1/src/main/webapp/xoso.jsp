<%@page import = "java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Calendar c = Calendar.getInstance(); %>
Hom nay, ngay <%=c.get(Calendar.DATE) %> thang <%=c.get(Calendar.MONTH) + 1 %> nam <%=c.get(Calendar.YEAR) %>
<form action="htkq.jsp" method="get">
	Chon ngay:
	<select name ="sDay">
		<%for(int i = 1; i <= 30; i++) {
			if(i == c.get(Calendar.DATE))
				out.println("<option selected>" + i +"</option>");
			else
				out.println("<option>" + i +"</option>");
		}
		%>
	</select>
	Chon thang:
	<select name="sMonth">
		<%for(int i = 1; i <= 12; i++) {
			if(i == c.get(Calendar.MONTH) + 1)
				out.println("<option selected>" + i +"</option>");
			else
				out.println("<option>" + i +"</option>");
		}
		%>
	</select>
	Chon nam
	<select>
		<%for(int i = 2000; i <= 2030; i++) {
			if(i == c.get(Calendar.YEAR))
				out.println("<option selected>" + i +"</option>");
			else
				out.println("<option>" + i +"</option>");
		}
		%>
	</select>
	<input type="submit" value="Ket qua">
</form>
</body>
</html>
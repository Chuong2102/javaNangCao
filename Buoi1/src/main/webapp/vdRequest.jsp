<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>
				<a href="vdRequest.jsp?mm=jvnc">Java nang cao</a> <hr>
				<a href="vdRequest.jsp?mm=trr">Toan roi rac</a> <hr>
				<a href="vdRequest.jsp?mm=csdl">Co so du lieu</a> <hr>
			
			</td>
			<td>
				Mon: <hr>
				<%
				String maMon = request.getParameter("mm");
				if(maMon != null){
					if(maMon.equals("jvnc"))
						out.print("Java nang cao <hr>");
					else if(maMon.equals("trr"))
						out.print("Toan roi rac <hr>");
					else if(maMon.equals("csdl"))
						out.print("Co so du lieu <hr>");
				}
				
				%>
			</td>
		</tr>
	</table>
</body>
</html>
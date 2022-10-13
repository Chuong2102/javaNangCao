<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="test1.jsp" method="get">
      <input  name="num" type="number" value="" placeholder="Nhap"> <br>
      <input  name="butdn" type="submit" value="Tong">
   	</form>
   	<%
   		if(session.getAttribute("c") == null){
   			session.setAttribute("c", (int)0);
   		}
   		
   		String num = request.getParameter("num");
   		int sum = 0;
   		int temp = 0;
   		
   		
   		if(num != null){
   			// get session
   	   		sum = (int)session.getAttribute("c");
   	   		
   			temp = Integer.parseInt(num);
   			sum+=temp;
   			session.setAttribute("c", sum);
   		}
   	%>
   	<div style="margin-top:25px">
   		<%=sum %>
   	</div>
</body>
</html>
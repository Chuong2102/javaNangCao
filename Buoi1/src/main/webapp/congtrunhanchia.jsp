<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%
	long a, b, kq;
   	a = 0;
   	b = 0;
   	kq = 0;
   	
   	if(request.getAttribute("a") != null)
   	{
   		a = (long)request.getAttribute("a");
   		b = (long)request.getAttribute("b");
   		kq = (long)request.getAttribute("kq");
   	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.center{
	width: 50%:
	
}
</style>
<title>Caculator</title>
</head>
<body>
<%
	
%>

<div class="center">
	<form action="test" method="get">
		<input name="num1" type="number" value="<%=a %>">
		<select name="selectFomular" style="width:100px">
			<option value="add" selected>+</option>
			<option value="sub">-</option>
			<option value="mulp">*</option>
			<option value="divide">/</option>
		</select>
		<input name="num2" type="number" value="<%=b %>">
		<br>
		<input name="result" type="submit" value="Ket qua" style="margin-top:5px">
		<hr>
	</form>
</div>

<%
out.print("Ket qua = " + kq);
%>
	
</body>
</html>
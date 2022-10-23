<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.sachbean"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%
	long tongSach = 0;
	
	tongSach = (long)request.getAttribute("tongsach");

	
%>
<!DOCTYPE html>
<html>
<head>
<title>Gio hang</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	button{
		margin-top: 5px;
	}
</style>
</head>

<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<li class="active"><a href="hienthisach">Trang chủ</a></li>
			<li><a href="#">Giỏ hàng (<%=tongSach %>)</a></li>
			<li><a href="#">Thanh toán</a></li>
			<li><a href="#">Lịch sử mua hàng
			</a>
			</li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span>
			Logout</a></li>
			<%if(session.getAttribute("acc")!=null){ %>
			<li>
				<a href="dangnhap.jsp">
					<span class="glyphicon glyphicon-log-in"></span>
					Hi: <%= session.getAttribute("acc")%>
				</a>
			</li>
			<%}
			else{%>
			<li><a href="dangnhap.jsp">
			<span class="glyphicon glyphicon-log-in"></span>
			Login
			</a></li>
			<%} %>
		</ul>
	</div>
</nav>
<table width="1000" align="center">
<tr>
	<td width="200" valign="top">
		<table>
			<%
				
				ArrayList<loaibean> dsloai = (ArrayList<loaibean>) request.getAttribute("dsloai");
				for(loaibean l:dsloai){
			%>
			<tr><td>
			<a href="hienthisach?ml=<%=l.getMaloai() %>">
			<%=l.getTenloai() %>
			</a>
			</td></tr>
			<%} %>
		</table>
	</td>
	<td width="600" valign="top">
	
	<%
	long tongTien = 0; %>
	
	<table class="table table-hover">
	<%
		giohangbo gh = (giohangbo) session.getAttribute("gio");
	
		if(gh != null){
			
			for(giohangbean h : gh.ds){
				tongTien += h.getThanhTien();
	 %>
		<tr>
			<td>
				<input type="checkbox" name="sBox" class="checkBoxMaSach" id="<%=h.getMaSach()%>">
			</td>
			<td>
				<%=h.getMaSach() %>
			</td>
			
			<td>
				<b><%=h.getTenSach() %></b>
			</td>
		
			<td>
				<b>Gia:</b>
				<br>
				<%=h.getGia() %>
			</td>
			
			<td>
				<form action="capnhatsoluong">
					<b>So luong:</b>
					<br>
					<input type="hidden" value="<%=h.getMaSach()%>" name="ms">
					<input name="sl" type="number" value="<%=h.getSoLuong() %>" min="1">
					<br>
					<input type="submit" class="btn btn-info" style="background-color:red" value="Cập nhật">
				</form>
			</td>
			
			<td>
				<b>Thanh tien:</b>
				<br>
				<%=h.getThanhTien() %>
			</td>
			<td>
				<a href="xoa?ms=<%=h.getMaSach() %>">Tra lai</a>
			</td>
		</tr>
	<% }
	%>
		
	<%} %>
		
	</table>
	<div>
		<b>Tong tien:</b>
		<br>
		<%=tongTien %>
	</div>
	<div>
		<a href="xoahet">
			<button class="btn btn-info">
			Tra lai het sach
				
			</button>
		</a>
	</div>
	<div>
		<button class="btn btn-info" id ="xoaBtn"> Xoa </button>
		
		<form id="xoaForm" action="xoasachdachon" method="post">
			<input type="hidden" id="listbooks" name="listbooks">
		</form>
	</div>
	
	</td>
	<td width="200" valign="top">
	<form action="htsach.jsp" method="get">
	<input class="form-control" name="txttk" type="text" value="" placeholder="Nhap tt">
	<br>
	<input class="btn-primary" name="butdn" type="submit" value="Search">
	</form>
	</td>
</tr>
</table>
	<script>
		$(document).ready(function(){
			$('#xoaBtn').click(function(){
				var listBooks = [];
				//get books
				var listCheckBox = document.getElementsByClassName('checkBoxMaSach');
				for(var i = 0; i < listCheckBox.length; i++){
					if(listCheckBox[i].checked){
						listBooks.push(String(listCheckBox[i].id));
					}
				}
				
				//send
				document.getElementById("listbooks").value = listBooks;
				document.getElementById("xoaForm").submit();
			})
		})
	</script>
</body>
</html>
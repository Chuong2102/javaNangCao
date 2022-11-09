<%@page import="bo.giohangbo"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.sachbean"%>
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
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
	 <div class="container-fluid">
	    
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="hienthisach">Trang chủ</a></li>
<li><a href="#">Giỏ hàng (<%=tongSach%>) </a></li>
<li><a href="#">Thanh toán</a></li>
<li><a href="#">Lịch sử mua hàng
</a>
</li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	    	
	       	<%
		       	if(session.getAttribute("acc") == null)
		       	{
					session.setAttribute("acc", new Object());
	       	%>
	       	<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
	      	<li><a href="dangnhap.jsp"><span class="glyphicon glyphicon-log-in">Login</span>
	      	<%} 
		       	else{
		       		String tk = "";
		       		tk = session.getAttribute("acc").toString();
		       		
	      	%>
	      	<li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> Log out</a></li>
	       	<li><a href="dangnhap.jsp"><span class=""><%=tk %></span>
	       	<%} %>
	       	
	       </a></li>
	    </ul>
	  </div>
	</nav>

	<table width="1000" align="center">
  	<tr>
	  <td width="200" valign="top"> 
	     <table>
	     <%
	     	
	       	ArrayList<loaibean> dsloai = (ArrayList<loaibean>)request.getAttribute("dsloai");
	       	
	       	for(loaibean l : dsloai){
	     %>
	        <tr>
	        	<td>
		          <a href="hienthisach?ml=<%=l.getMaloai() %>">
		            <%=l.getTenloai() %>
		          </a>
	        	</td>
	        </tr>
	        <%} %>
	    </table>
	  </td>
  
  	<td width="600" valign="top">
  
   <table>
     <%
    String ml = request.getParameter("ml");
    String key = request.getParameter("txttk");
     
  	ArrayList<sachbean> dssach = (ArrayList<sachbean>)request.getAttribute("dssach");
  	
  	
  	
  	int n=dssach.size();
  	
   	for(int i = 0; i < n; i++){
	   sachbean s= dssach.get(i);
    %>
    <tr>
    <td>
       <img src="<%=s.getAnh() %>"> <br>
       <%=s.getTensach() %> <br>
       <%=s.getGia() %> <br>
       <%if(session.getAttribute("acc") != null){ %>
       <a href="xulygio?ms=<%=s.getMasach()%>&ts=<%=s.getTensach() %>&gia=<%=s.getGia()%>"><img src="mua.jpg"></a> <hr>
       <%} %>
    </td>                           
    <%i++;
    if(i<n){
    s= dssach.get(i);
    %>
    <td>
       <img src="<%=s.getAnh() %>"> <br>
       <%=s.getTensach() %> <br>
       <%=s.getGia() %> <br>
        <a href="xulygio?ms=<%=s.getMasach()%>&ts=<%=s.getTensach() %>&gia=<%=s.getGia()%>"><img src="mua.jpg"></a>  <hr>
    </td>
    <%} %>
    
    </tr>
    <%} %>

        
    </table>
  	
   </td>
  <td width="200" valign="top"> Tim kiem
  	<form action="hienthisach" method="get">
      <input  name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
      <input  name="butdn" type="submit" value="Search">
   	</form>
   </td>
  </tr>
</table>

</body>
</html>
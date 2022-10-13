<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div class="col-4">
       <form action="/Account/Login" method="post" class="hitec-form-signin">
           <input name="__RequestVerificationToken" type="hidden" value="fUiglaVJIntEOut0SAlUq6ZhJBjIV7ssu3NwCBsbVrH8ZRd1QTW52CYrBUBgouuF5tyzflpJy41Wj9Mj-VQOvxwwl8s1">
           <img src="/Themes/Login/images/logo-small.png" alt="">
           <h2 class="form-signin-heading">SINH VIÊN</h2>
           <div class="form-group">
               <label for="loginID">Mã sinh viên:</label>
               <input type="text" id="loginID" name="loginID" class="form-control input-lg" placeholder="Mã sinh viên" required="" autofocus="" value="">
           </div>
           <div class="form-group">
               <label for="password">Mật khẩu:</label>
               <input type="password" id="password" name="password" class="form-control input-lg" placeholder="Mật khẩu" required="" value="">
           </div>
           <div class="form-group">
               <span class="text-danger"></span>
           </div>
           <button class="btn btn-lg btn-primary btn-block btn-custom" type="submit">Đăng nhập</button>
       </form>
    </div>
</body>
</html>
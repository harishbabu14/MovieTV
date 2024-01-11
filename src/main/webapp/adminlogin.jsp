<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Admin Login</h1>

<form action="adminlogin" method="post">

Admin Email : <input type="email" name="adminemail"><br><br>
Admin Password : <input type="password" name="adminpassword"><br><br>
<input type="submit">

</form>

<%String message = (String)request.getAttribute("message");%>
<%if(message!=null) { %>
<%= message %>
<% }%>

</body>
</html>
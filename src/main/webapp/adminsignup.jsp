<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
	<p>No,you are'nt</p>

		<h1>Signup to be an Admin</h1>
		<form action="adminsignup" method="post">

		<label for="adminid">Admin ID : </label> 
		<input type="number" name="adminid" id="adminid"><br>
		<br> <label for="adminname">Admin Name : </label> <input type="text" name="adminname" id="adminname"><br>
		<br> Admin Contact : <input type="number" name="admincontact"><br>
		<br> Admin Email : <input type="email" name="adminemail"><br>
		<br> Admin Password : <input type="password" name="adminpassword"><br>
		<br> <input type="submit">

	</form>
	</div>
	
	<%
	String message=(String)request.getAttribute("message");
	if(message!=null){
	out.print(message);
	}
	%>

	

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieTV : : User-Login</title>
<link rel="stylesheet" href="userlogin.css">
</head>
<body>
	<div>
		<h2>Yes you are..</h2>
		<h1>User Login</h1>
		<form action="userlogin" method="post">
			<table>
				<tbody>
					<tr>
						<td><label for="useremail">User Email : </label></td>
						<td><input type="email" name="useremail" id="useremail"></td>
					</tr>
					<tr>
						<td><label for="userpassword">User Password : </label></td>
						<td><input type="password" name="userpassword" id="userpassword"></td>
					</tr>
				</tbody>
			</table>
			<br> <input type="submit">
		</form>
		<br>
		<%
		String message = (String) request.getAttribute("message");
		if (message != null)
		{
		%>
		<%=message%>
		<%
		}
		%>
	</div>
</body>
</html>
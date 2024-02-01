<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieTV : : User-Signup</title>
<link rel="stylesheet" href="usersignup.css">
</head>
<body>
	<div>
		<h2>No,you are'nt</h2>
		<h1>Signup to be a User</h1>
		<br>
		<form action="usersignup" method="post">
			<table>
				<tbody>
					<tr>
						<td><label for="userid">User ID : </label></td>
						<td><input type="number" name="userid" id="userid"></td>
					</tr>
					<tr>
						<td><label for="username">User Name : </label></td>
						<td><input type="text" name="username" id="username"></td>
					</tr>
					<tr>
						<td><label for="usercontact">User Contact : </label></td>
						<td><input type="number" name="usercontact" id="usercontact"></td>
					</tr>
					<tr>
						<td><label for="useremail">User Email : </label></td>
						<td><input type="email" name="useremail" id="useremail"></td>
					</tr>
					<tr>
						<td><label for="userpassword">User Password : </label></td>
						<td><input type="password" name="userpassword"
							id="userpassword"></td>
					</tr>
				</tbody>
			</table>
			<br> <input type="submit">
		</form>
		<br>
		<%
		String message = (String) request.getAttribute("message");
		%>
		<%
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieTV : : Admin-Login</title>
<link rel="stylesheet" href="adminlogin.css">
</head>
<body>
	<div>
		<h2>Yes you are..</h2>
		<h1>Admin Login</h1>
		<form action="adminlogin" method="post">
			<table>
				<tbody>
					<tr>
						<td><label for="adinemail">Admin Email : </label></td>
						<td><input type="email" name="adminemail" id="adminemail"></td>
					</tr>
					<tr>
						<td><label for="adminpassword">Admin Password : </label></td>
						<td><input type="password" name="adminpassword" id="adminpassword"></td>
					</tr>
				</tbody>
			</table>
			<br> <input type="submit">
		</form>
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
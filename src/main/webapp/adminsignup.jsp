<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieTV : : Admin-Signup</title>
<link rel="stylesheet" href="adminsignup.css">
</head>
<body>
	<div>
		<h2>No,you are'nt</h2>
		<h1>Signup to be an Admin</h1>
		<br>
		<form action="adminsignup" method="post">
			<table>
				<tbody>
					<tr>
						<td><label for="adminid">Admin ID : </label></td>
						<td><input type="number" name="adminid" id="adminid"></td>
					</tr>
					<tr>
						<td><label for="adminname">Admin Name : </label></td>
						<td><input type="text" name="adminname" id="adminname"></td>
					</tr>
					<tr>
						<td><label for="admincontact">Admin Contact : </label></td>
						<td><input type="number" name="admincontact"
							id="admincontact"></td>
					</tr>
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
<%@page import="java.util.Base64"%>
<%@page import="dto.User"%>
<%@page import="dto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieTV : : User-Downloads</title>
<link rel="stylesheet" href="downloads.css">
</head>
<body>
	<div>
		<h1>User Downloads</h1>
		<%
		List<Movie> downloads = (List) request.getAttribute("downloads");
		String useremail = (String)request.getAttribute("useremail");
		%>
		<%
		User user = (User) request.getAttribute("user");
		%>
		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>PRICE</th>
					<th>RATING</th>
					<th>GENRE</th>
					<th>LANGUAGE</th>
					<th>IMAGE</th>
					<th>DELETE</th>
				</tr>
			</thead>
			<%
			for (Movie m : downloads)
			{
			%>
			<tbody>
				<tr>
					<td><%=m.getMovieid()%></td>
					<td><%=m.getMoviename()%></td>
					<td><%=m.getMovieprice()%></td>
					<td><%=m.getMovierating()%></td>
					<td><%=m.getMoviegenre()%></td>
					<td><%=m.getMovielanguage()%></td>
					<%
					String base64image = new String(Base64.getEncoder().encode(m.getMovieimage()));
					%>
					<td><img alt="image is loading" src="data:image/jpg;base64, <%=base64image%>" height="100px" width="150px"></td>
				</tr>
			</tbody>
			<%
			}
			%>
		</table>
	</div>
	<br>
		<%
		String message=(String)request.getAttribute("message");
		if(downloads==null) { 
		%>
		<%= message %>
		<%
		} 
		%>
	<div>
		<br> <a href="logoutuser"><button>Logout</button></a>
	</div>
</body>
</html>
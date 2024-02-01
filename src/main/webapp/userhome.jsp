<%@page import="dto.User"%>
<%@page import="java.util.List"%>
<%@page import="dto.Movie"%>
<%@page import="java.util.Base64"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieTV : : User-Home</title>
<link rel="stylesheet" href="userhome.css">
</head>
<body>
	<div>
		<h1>User Home</h1>
		<a href="downloadmovie.jsp"><button>Downloaded Movies</button></a><br> <br>
		<%
		List<Movie> movies = (List) request.getAttribute("movies");
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
					<th>SAVE</th>
				</tr>
			</thead>
			<%
			for (Movie m : movies)
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
					<td><a href="downloadmovie?movieid=<%=m.getMovieid()%>&moviename=<%=m.getMoviename()%>&useremail=<%=user.getUseremail()%>"><button>Download Movie</button></a></td>
				</tr>
			</tbody>
			<%
			}
			%>
		</table>
	</div>
	<div>
		<br> <a href="logoutuser"><button>Logout</button></a>
	</div>
</body>
</html>
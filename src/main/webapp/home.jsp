<%@page import="dao.Dao"%>
<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieTV : : Admin-Home</title>
<link rel="stylesheet" href="home.css">
</head>
<body>
	<div>
		<h1>Admin Movies</h1>
		<%
		List<Movie> movies = (List) request.getAttribute("movies");
		%>
		<a href="addmovie.jsp"><button>Add Movie</button></a><br> <br>
	</div>
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
				<th>EDIT</th>
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
				<td><img src="data:image/jpeg;base64, <%=base64image%> " height="100px" width="150px"></td>
				<td><a href="deletemovie?moveiid=<%=m.getMovieid()%>"><button>Delete</button></a></td>
				<td><a href="editmovie?movieid=<%=m.getMovieid()%>"><button>Edit</button></a></td>
			</tr>
		</tbody>
		<%
		}
		%>
	</table>
	<div>
		<br> <a href="logout"><button>Logout</button></a>
	</div>
</body>
</html>
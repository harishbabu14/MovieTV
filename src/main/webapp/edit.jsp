<%@page import="dto.Movie"%>
<%@page import="java.util.Base64"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieTV : : Admin-EditMovie</title>
<link rel="stylesheet" href="edit.css">
</head>
<body>
	<div>
		<h1>Edit Movie</h1>
		<%
		Movie m = (Movie) request.getAttribute("movie");
		%>
		<form action="updatemovie" method="post" enctype="multipart/form-data">
			<table>
				<tbody>
					<tr>
						<td><label for="movieid">Movie ID : </label></td>
						<td><input type="number" name="movieid"
							value="<%=m.getMovieid()%>" readonly></td>
					</tr>
					<tr>
						<td><label for="moviename">Movie Name : </label></td>
						<td><input type="text" name="moviename"
							value="<%=m.getMoviename()%>"></td>
					</tr>
					<tr>
						<td><label for="movieprice">Movie Price : </label></td>
						<td><input type="number" name="movieprice"
							value="<%=m.getMovieprice()%>"></td>
					</tr>
					<tr>
						<td><label for="movierating">Movie Rating : </label></td>
						<td><input type="number" name="movierating"
							value="<%=m.getMovierating()%>"></td>
					</tr>
					<tr>
						<td><label for="moviegenre">Movie Genre : </label></td>
						<td><input type="text" name="moviegenre"
							value="<%=m.getMoviegenre()%>"></td>
					</tr>
					<tr>
						<td><label for="movielanguage">Movie Language : </label></td>
						<td><input type="text" name="movielanguage"
							value="<%=m.getMovielanguage()%>"></td>
					</tr>
					<tr>
						<td><label for="movieimage">Movie Image : </label></td>
						<td><input type="file" name="movieimage"></td>
					</tr>
				</tbody>
			</table>
			<%
			String base64image = new String(Base64.getEncoder().encode(m.getMovieimage()));
			%>
			<img src="data:image/jpeg;base64, <%=base64image%>" height="100px" width="150px"> 
			<br> 
			<input type="submit">
		</form>
	</div>
</body>
</html>
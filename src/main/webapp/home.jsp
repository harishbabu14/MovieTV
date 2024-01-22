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
<title>Insert title here</title>
<style>

table,tr,td,th{
	border: 1px solid black;
	border-collapse: collapse;
	
}

</style>
</head>
<body>

<h1>Admin Movies</h1>

<a href="addmovie.jsp">Add_Movie</a><br><br>


<table>
<tbody>

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

<% 
List<Movie> movie = (List) request.getAttribute("movie");

if(movie !=null)
{
for(Movie m : movie) 
{ 
%>
<tr>

<td><%= m.getMovieid() %></td>
<td><%= m.getMoviename() %></td>
<td><%= m.getMovieprice() %></td>
<td><%= m.getMovierating() %></td>
<td><%= m.getMoviegenre() %></td>
<td><%= m.getMovielanguage() %></td>

 <% String base64image = new String(Base64.getEncoder().encode(m.getMovieimage())); %>
<td><img src="data:image/jpeg;base64, <%= base64image %> " height="100px" width="100px"></td>

<td><a href="deletemovie?id=<%= m.getMovieid() %>">Delete</a></td>

<td><a href="editmovie?id=<%= m.getMovieid() %>">Edit</a></td>

</tr>
<% 
}

}
%>

</tbody>
</table>



</body>
</html>
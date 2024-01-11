<%@page import="dto.Movie"%>
<%@page import="java.util.Base64"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Edit Movie</h1>
<%Movie m=(Movie)request.getAttribute("movie"); %>

<form action="updatemovie" method="post" enctype="multipart/form-data">

Movie ID : <input type="number" name="movieid" value="<%= m.getMovieid() %>" readonly><br><br>
Movie Name : <input type="text" name="moviename" value="<%= m.getMoviename() %>"><br><br>
Movie Price : <input type="number" name="movieprice" value="<%= m.getMovieprice() %>"><br><br>
Movie Rating : <input type="number" name="movierating" value="<%= m.getMovierating() %>"><br><br>
Movie Genre : <input type="text" name="moviegenre" value="<%= m.getMoviegenre() %>"><br><br>
Movie Language : <input type="text" name="movielanguage" value="<%= m.getMovielanguage() %>"><br><br>
Movie Image : <input type="file" name="movieimage"><br><br>
<input type="submit">
<% String base64image=new String(Base64.getEncoder().encode(m.getMovieimage())); %>
<img src="data:image/jpeg;base64, <%= base64image %>" height="100px" width="150px">

</form>

</body>
</html>
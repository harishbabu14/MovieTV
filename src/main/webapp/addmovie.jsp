<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add Movie</h1>
<form action="addmovie" method="post" enctype="multipart/form-data">

Movie ID : <input type="number" name="movieid"><br><br>
Movie Name : <input type="text" name="moviename"><br><br>
Movie Price : <input type="number" name="movieprice"><br><br>
Movie Rating : <input type="number" name="movierating"><br><br>
Movie Genre : <input type="text" name="moviegenre"><br><br>
Movie Language : <input type="text" name="movielanguage"><br><br>
Movie Image : <input type="file" name="movieimage"><br><br>
<input type="submit">

</form>

</body>
</html>
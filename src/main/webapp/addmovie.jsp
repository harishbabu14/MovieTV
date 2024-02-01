<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieTV : : Admin-AddMovie</title>
<link rel="stylesheet" href="addmovie.css">
</head>
<body>
	<div>
		<h1>Add Movie</h1>
		<form action="addmovie" method="post" enctype="multipart/form-data">
			<table>
				<tbody>
					<tr>
						<td><label for="movieid">Movie ID : </label></td>
						<td><input type="number" name="movieid" id="movieid"></td>
					</tr>
					<tr>
						<td><label for="moviename">Movie Name : </label></td>
						<td><input type="text" name="moviename" id="moviename"></td>
					</tr>
					<tr>
						<td><label for="movieprice">Movie Price : </label></td>
						<td><input type="number" name="movieprice" id="movieprice"></td>
					</tr>
					<tr>
						<td><label for="movierating">Movie Rating : </label></td>
						<td><input type="number" name="movierating" id="movierating"></td>
					</tr>
					<tr>
						<td><label for="moviegenre">Movie Genre : </label></td>
						<td><input type="text" name="moviegenre" id="moviegenre"></td>
					</tr>
					<tr>
						<td><label for="movielanguage">Movie Language : </label></td>
						<td><input type="text" name="movielanguage" id="movielanguage"></td>
					</tr>
					<tr>
						<td><label for="movieimage">Movie Image : </label></td>
						<td><input type="file" name="movieimage" id="movieimage"></td>
					</tr>
				</tbody>
			</table>
			<input type="submit">
		</form>
	</div>
</body>
</html>
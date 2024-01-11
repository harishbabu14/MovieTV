package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.Dao;
import dto.Movie;

@WebServlet("/addmovie")
@MultipartConfig(maxFileSize = 5*1024*1024)
public class SaveMovie extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int movieid=Integer.parseInt(req.getParameter("movieid"));
		String moviename=req.getParameter("moviename");
		double movieprice=Double.parseDouble(req.getParameter("movieprice"));
		double movierating=Double.parseDouble(req.getParameter("movierating"));
		String moviegenre=req.getParameter("moviegenre");
		String movielanguage=req.getParameter("movielanguage");
		Part movieimage=req.getPart("movieimage");
		
		Movie movie=new Movie();
		movie.setMovieid(movieid);
		movie.setMoviename(moviename);
		movie.setMovieprice(movieprice);
		movie.setMovierating(movierating);
		movie.setMoviegenre(moviegenre);
		movie.setMovielanguage(movielanguage);
		movie.setMovieimage(movieimage.getInputStream().readAllBytes());
		
		Dao dao=new Dao();

		try
		{
			dao.saveMovie(movie);
			resp.sendRedirect("home.jsp");
		} 
		catch (ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
	}
}


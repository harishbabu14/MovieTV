package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.Movie;

@WebServlet("/downloadmovie")
public class DownloadMovie extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int movieid=Integer.parseInt(req.getParameter("movieid"));
		String useremail=req.getParameter("useremail");
		
		Dao dao=new Dao();
		try
		{
			Movie movie=dao.findMovieById(movieid);
			if (dao.findDownloadByEmail(movieid, useremail))
			{
				dao.downloadMovie(movie, useremail);
				req.setAttribute("downloads", dao.getAllDownloads(useremail));
				RequestDispatcher rd=req.getRequestDispatcher("downloads.jsp");
				rd.include(req, resp);
			}
			else
			{
				req.setAttribute("message", "Movie already exist");
				req.setAttribute("movies", dao.getAllMovies());
				req.setAttribute("useremail", useremail);
				RequestDispatcher rd=req.getRequestDispatcher("userhome.jsp");
				rd.include(req, resp);
			}
		} 
		catch (ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
	}
}

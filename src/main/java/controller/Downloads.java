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

@WebServlet("/Downloads")
public class Downloads extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String useremail=req.getParameter("useremail");
		Dao dao=new Dao();
		try
		{
			req.setAttribute("downloads", dao.getAllDownloads(useremail));
			req.setAttribute("message", "There is no downloads");
			req.setAttribute("useremail", useremail);
			RequestDispatcher rd=req.getRequestDispatcher("downloads.jsp");
			rd.include(req, resp);
		} 
		catch (ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
	}
}

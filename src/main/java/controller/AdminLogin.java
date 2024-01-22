package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dto.Admin;

@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String adminemail=req.getParameter("adminemail");
		String adminpassword=req.getParameter("adminpassword");
		
		Dao dao=new Dao();

		try
		{
			Admin admin = dao.findByEmail(adminemail);
			if (admin!=null)
			{
				if (admin.getAdminpassword().equals(adminpassword))
				{
					HttpSession session = req.getSession();
					session.setAttribute("adminemail", admin.getAdminemail());
					req.setAttribute("movie", dao.getAllMovies());
					RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
					rd.include(req, resp);
				} 
				else
				{
					req.setAttribute("message", "password is wrong");
					RequestDispatcher rd=req.getRequestDispatcher("adminlogin.jsp");
					rd.include(req, resp);
				}
			} 
			else
			{
				req.setAttribute("message", "email is wrong");
				RequestDispatcher rd=req.getRequestDispatcher("adminlogin.jsp");;
				rd.include(req, resp);
			}
		} 
		catch (ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
		
	}
}

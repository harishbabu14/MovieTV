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
import dto.User;

@WebServlet("/userlogin")
public class UserLogin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String useremail=req.getParameter("useremail");
		String userpassword=req.getParameter("userpassword");
		
		Dao dao=new Dao();
		
		try
		{
			User user = dao.findByUserEmail(useremail);
			if (user.getUseremail()!=null)
			{
				if (user.getUserpassword().equals(userpassword))
				{
					HttpSession session=req.getSession();
					session.setAttribute("username", user.getUsername());
					req.setAttribute("movies", dao.getAllMovies());
					req.setAttribute("user", user);
					RequestDispatcher rd=req.getRequestDispatcher("userhome.jsp");
					rd.include(req, resp);
				} 
				else
				{
					req.setAttribute("message", "Password is incorrect");
					RequestDispatcher rd=req.getRequestDispatcher("userlogin.jsp");
					rd.include(req, resp);
				}
			}
			else
			{
				req.setAttribute("message", "Email is incorrect");
				RequestDispatcher rd=req.getRequestDispatcher("userlogin.jsp");
				rd.include(req, resp);
			}
		}
		catch (ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
		
	}
}

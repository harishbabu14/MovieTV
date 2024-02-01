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
import dto.User;

@WebServlet("/usersignup")
public class SaveUser extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int userid=Integer.parseInt(req.getParameter("userid"));
		String username=req.getParameter("username");
		long usercontact=Long.parseLong(req.getParameter("usercontact"));
		String useremail=req.getParameter("useremail");
		String userpassword=req.getParameter("userpassword");
		
		User user=new User();
		user.setUserid(userid);
		user.setUsername(username);
		user.setUsercontact(usercontact);
		user.setUseremail(useremail);
		user.setUserpassword(userpassword);
		
		Dao dao=new Dao();
		
		try
		{
			if (dao.saveUser(user)>0)
			{
				RequestDispatcher rd=req.getRequestDispatcher("userlogin.jsp");
				rd.include(req, resp);
			}
			else
			{
				req.setAttribute("message", "Signup failed");
				RequestDispatcher rd=req.getRequestDispatcher("usersignup.jsp");
				rd.include(req, resp);
			}
		} 
		catch (ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
		
	}
}

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
import dto.Admin;

@WebServlet("/adminsignup")
public class SaveAdmin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int id=Integer.parseInt(req.getParameter("adminid"));
		String name=req.getParameter("adminname");
		long contact=Long.parseLong(req.getParameter("admincontact"));
		String email=req.getParameter("adminemail");
		String password=req.getParameter("adminpassword");
		
		Admin admin=new Admin();
		admin.setAdminid(id);
		admin.setAdminname(name);
		admin.setAdmincontact(contact);
		admin.setAdminemail(email);
		admin.setAdminpassword(password);
		
		Dao dao=new Dao();

		try
		{
			int res=dao.saveAdmin(admin);
			if (res>0)
			{
				RequestDispatcher rd=req.getRequestDispatcher("adminlogin.jsp");
				rd.include(req, resp);
			} 
			else
			{
				req.setAttribute("message", "Signup failed");
				RequestDispatcher rd=req.getRequestDispatcher("adminsignup.jsp");
				rd.include(req, resp);
			}
		} 
		catch (ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
	}
}

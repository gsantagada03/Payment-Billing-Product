package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import java.io.IOException;

import dao.AdminDAO;

@WebServlet("/AdminLogin")
public class AdminLoginServlet extends HttpServlet {
	AdminDAO adminDao = new AdminDAO();

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

		String userName = req.getParameter("username");
		String password = req.getParameter("password");
		if(adminDao.validateCredentials(userName, password)) {
			HttpSession session = req.getSession();
			session.setAttribute("adminUsername", userName);
			res.sendRedirect("HomeAdmin.jsp");
		}
		else {
			req.setAttribute("Error", "invalid credentials");
			req.getRequestDispatcher("AdminLogin.jsp").forward(req,res);
		}
	}


}
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

import dao.AccountantDAO;

@WebServlet("/AccountantLogin")
public class AccountantLoginServlet extends HttpServlet {
	AccountantDAO accountant = new AccountantDAO();

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");

		try {
			if(accountant.validateCredentials(username, password)) {
				HttpSession session = req.getSession();
				session.setAttribute("AccountantUsername", username);
				res.sendRedirect("AccountantHome.jsp");

			}else {
				req.setAttribute("Error", "Invalid credentials");
				req.getRequestDispatcher("AccountantLogin.jsp").forward(req, res);;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

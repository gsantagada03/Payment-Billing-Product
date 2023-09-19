package controller;

import java.io.IOException;

import dao.AccountantDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RemoveAccountantServlet")
public class RemoveAccountantServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String username = req.getParameter("username");

		AccountantDAO accountantDAO = new AccountantDAO();

		try {
			boolean removed = accountantDAO.deleteByUsername(username);;

			if (removed) {

				req.setAttribute("Delete", "Accountant deleted successfully");
				req.getRequestDispatcher("HomeAdmin.jsp").forward(req, res);
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
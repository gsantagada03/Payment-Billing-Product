package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import dao.AccountantDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Accountant;

@WebServlet("/SearchAccountant")
public class SearchAccountantServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String branch = req.getParameter("branch");
		String find = req.getParameter("find");

		AccountantDAO accountantDAO = new AccountantDAO();

		List<Accountant> accountants = null;

		try {
			accountants = accountantDAO.searchAccountants(branch, find);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		req.setAttribute("accountants", accountants);
		req.getRequestDispatcher("/searchAccountants.jsp").forward(req, res);
	}
}
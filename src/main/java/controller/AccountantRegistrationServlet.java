package controller;

import dao.AccountantDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Accountant;

import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/AccountantRegistration")
public class AccountantRegistrationServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String branch = req.getParameter("branch");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String dateOfJoining = req.getParameter("dateOfJoining");
		String dateOfBirth = req.getParameter("dateOfBirth");
		int salary = Integer.parseInt(req.getParameter("salary"));

		Accountant accountant = new Accountant(branch, username, password, dateOfJoining, dateOfBirth, salary);
		AccountantDAO accountantDAO = new AccountantDAO();

		try {
			accountantDAO.createAccountant(accountant);
			req.setAttribute("Registration", "Accountant registered successfully");
			req.getRequestDispatcher("HomeAdmin.jsp").forward(req, res);
		} catch (SQLException e) {
			e.printStackTrace();

		}


	}
}
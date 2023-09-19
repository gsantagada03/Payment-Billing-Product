package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ContactUs")
public class ContactUsServlet extends HttpServlet {

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		req.setAttribute("Query", "Query sent");
		req.getRequestDispatcher("AccountantHome.jsp").forward(req, res);

	}
}

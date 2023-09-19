package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Student;

@WebServlet("/searchStudentToModify")
public class SearchStudentToModifyServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String find = req.getParameter("find");

		StudentDAO studentDAO = new StudentDAO();
		List<Student> students = null;

		try {
			students = studentDAO.searchStudent(find);
		}catch(SQLException e) {
			e.printStackTrace();
		}

		req.setAttribute("students", students);
		req.getRequestDispatcher("/SearchStudentsToModify.jsp").forward(req, res);
	}
}

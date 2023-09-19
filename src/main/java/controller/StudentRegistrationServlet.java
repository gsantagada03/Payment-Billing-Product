package controller;

import java.io.IOException;
import java.sql.SQLException;

import dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Student;

@WebServlet("/StudentRegistration")
public class StudentRegistrationServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String name = req.getParameter("name");
		String course = req.getParameter("course");
		String mobile = req.getParameter("mobile");
		String fatherName = req.getParameter("father");
		String motherName = req.getParameter("mother");
		String qualification = req.getParameter("qualification");
		String dateOfBirth = req.getParameter("birth");
		String dateOfJoining = req.getParameter("joining");
		String dateOfSubmission = req.getParameter("submission");
		int paid = Integer.parseInt(req.getParameter("paid"));
		int fee =  Integer.parseInt(req.getParameter("fee"));
		int balance =  Integer.parseInt(req.getParameter("balance"));
		String address = req.getParameter("address");
		String trainer = req.getParameter("trainer");

		Student student = new Student(name, course, mobile, fatherName, motherName, qualification, dateOfBirth, dateOfJoining, dateOfSubmission, paid, fee, balance, address, trainer);
		StudentDAO studentDAO = new StudentDAO();

		try {
			studentDAO.createStudent(student);
			req.setAttribute("Registration", "Student registrated");
			req.getRequestDispatcher("AccountantHome.jsp").forward(req, res);;
		}catch(SQLException e) {
			e.printStackTrace();
		}

	}
}

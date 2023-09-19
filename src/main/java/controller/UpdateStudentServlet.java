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

@WebServlet("/UpdateStudent")
public class UpdateStudentServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String originalName = req.getParameter("originalName");



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

		Student updateStudent = new Student(name, course, mobile, fatherName, motherName, qualification, dateOfBirth, dateOfJoining, dateOfSubmission, paid, fee, balance, address, trainer);

		StudentDAO studentDAO = new StudentDAO();
		try {
			studentDAO.updateStudentByName(originalName, updateStudent);
			req.setAttribute("Modification", "Student modified");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		req.getRequestDispatcher("AccountantHome.jsp").forward(req, res);

	}

}

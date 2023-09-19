package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

import model.Student;

public class StudentDAO {

	public void createStudent(Student student) throws SQLException {
		String Query = "insert into student(name, course, mobile, father_name, mother_name, qualification, date_of_birth, date_of_joining, date_of_submission, paid, fee, balance, address, trainer) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try (Connection con = StudentJDBC.getConnection();
				PreparedStatement ps = con.prepareStatement(Query)){
			ps.setString(1, student.getName());
			ps.setString(2, student.getCourse());
			ps.setString(3, student.getMobile());
			ps.setString(4, student.getFatherName());
			ps.setString(5, student.getMotherName());
			ps.setString(6, student.getQualification());
			ps.setString(7, student.getDateOfBirth());
			ps.setString(8, student.getDateOfJoining());
			ps.setString(9, student.getDateOfSubmission());
			ps.setInt(10, student.getPaid());
			ps.setInt(11, student.getFee());
			ps.setInt(12, student.getBalance());
			ps.setString(13, student.getAddress());
			ps.setString(14, student.getTrainer());

			ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

	public List <Student> searchStudent(String searchTerm) throws SQLException{
		List <Student> students = new ArrayList<>();
		Connection con = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		String query = "select * from student where name like  ?";

		try {
			con = StudentJDBC.getConnection();
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1,"%" + searchTerm + "%");

			resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {
				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");
				String course = resultSet.getString("course");
				String mobile = resultSet.getString("mobile");
				String fatherName = resultSet.getString("father_name");
				String motherName = resultSet.getString("mother_name");
				String qualification = resultSet.getString("qualification");
				String dateOfBirth = resultSet.getString("date_of_birth");
				String dateOfJoining = resultSet.getString("date_of_joining");
				String dateofSubmission = resultSet.getString("date_of_submission");
				int paid = resultSet.getInt("paid");
				int fee = resultSet.getInt("fee");
				int balance = resultSet.getInt("balance");
				String address = resultSet.getString("address");
				String trainer = resultSet.getString("trainer");

				Student student = new Student( name,course,  mobile,  fatherName,  motherName,
						qualification,  dateOfBirth,  dateOfJoining,  dateofSubmission,  paid,  fee,
						balance,  address,  trainer);

				students.add(student);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return students;
	}

	public void updateStudentByName(String name, Student student) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;

		String query = "update student set name = ?, course = ?, mobile = ?, father_name = ?, mother_name = ?, qualification = ?, date_of_birth = ?, date_of_joining = ?, date_of_submission = ?, paid = ?, fee = ?, balance = ?, address = ?, trainer = ? where name = ? ";

		try {
			con = StudentJDBC.getConnection();
			ps = con.prepareStatement(query);

			ps.setString(1, student.getName());
			ps.setString(2, student.getCourse());
			ps.setString(3, student.getMobile());
			ps.setString(4, student.getFatherName());
			ps.setString(5, student.getMotherName());
			ps.setString(6, student.getQualification());
			ps.setString(7, student.getDateOfBirth());
			ps.setString(8, student.getDateOfJoining());
			ps.setString(9, student.getDateOfSubmission());
			ps.setInt(10, student.getPaid());
			ps.setInt(11, student.getFee());
			ps.setInt(12, student.getBalance());
			ps.setString(13, student.getAddress());
			ps.setString(14, student.getTrainer());
			ps.setString(15, name);

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		}
	}


}




package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Accountant;

public class AccountantDAO {

	public void createAccountant(Accountant accountant) throws SQLException {
		String InsertQuery = "insert into accountant(branch, username, password, date_of_joining, date_of_birth, salary) values (?, ?, ?, ?, ?, ?)";

		try (Connection con = AccountantJDBC.getConnection();
				PreparedStatement ps = con.prepareStatement(InsertQuery)) {
			ps.setString(1, accountant.getBranch());
			ps.setString(2, accountant.getUserName());
			ps.setString(3, accountant.getPassword());
			ps.setString(4, accountant.getDateOfJoining());
			ps.setString(5, accountant.getDateOfBirth());
			ps.setInt(6, accountant.getSalary());


			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}



	public void findByUsername(String userName) throws SQLException {
		String findQuery = "select id from accountant where username = ?";

		try(Connection con = AccountantJDBC.getConnection();
				PreparedStatement ps = con.prepareStatement(findQuery)){

			ps.setString(1, userName);
		}catch(SQLException e) {
			e.printStackTrace();
		}

	}



	public boolean deleteByUsername(String userName) {
		String deleteQuery = "delete from accountant where username = ?";

		try (Connection con = AccountantJDBC.getConnection();
				PreparedStatement ps = con.prepareStatement(deleteQuery)) {
			ps.setString(1, userName);
			int rowsAffected = ps.executeUpdate(); 
			return rowsAffected > 0; 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}


	public boolean validateCredentials(String userName, String password) throws SQLException {
		String selectQuery = "select * from accountant where username = ? and password = ?";
		Connection con = null;
		PreparedStatement pt = null;
		ResultSet rs = null;

		try {
			con = AccountantJDBC.getConnection();
			pt = con.prepareStatement(selectQuery);
			pt.setString(1, userName);
			pt.setString(2, password);
			rs = pt.executeQuery();

			return rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) rs.close(); 
			if (pt != null) pt.close();
			if (con != null) con.close();
		}

		return false;
	}

	public List<Accountant> searchAccountants(String branch, String searchTerm) throws SQLException {
		List<Accountant> accountants = new ArrayList<>();
		Connection con = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		String query = "select * from accountant where branch = ? and username like ?";

		try {
			con = AccountantJDBC.getConnection();
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, branch);
			preparedStatement.setString(2, "%" + searchTerm + "%");

			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String username = resultSet.getString("username");
				String password = resultSet.getString("password");
				String dateOfJoining = resultSet.getString("date_of_joining");
				String dateOfBirth = resultSet.getString("date_of_birth");
				int salary = resultSet.getInt("salary");

				Accountant accountant = new Accountant(branch, username, password, dateOfJoining, dateOfBirth, salary);
				accountants.add(accountant);
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
		return accountants;
	}
}

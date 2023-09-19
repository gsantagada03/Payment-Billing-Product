package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AccountantJDBC {
	public static Connection getConnection() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			String url = "jdbc:mysql://localhost:3306/payment_billing_product";
			String username = "root";
			String password = "root";
			Connection con = DriverManager.getConnection(url, username, password);
			return con;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new SQLException("Driver JDBC non trovato");
		}
	}
}

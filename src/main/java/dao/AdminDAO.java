package dao;
import model.Admin;


import java.util.ArrayList;

public class AdminDAO {
	private ArrayList <Admin> admins = new ArrayList<>();


	public AdminDAO() {
		createDefaultAdmin();
	}

	public void createDefaultAdmin() {
		Admin admin = new Admin("giuseppe2", "giuseppe03");
		admins.add(admin);
	}

	public boolean validateCredentials(String userName, String password) {
		for (Admin admin : admins) {
			if (admin.getUserName().equals(userName) && admin.getPassword().equals(password)) {
				return true;
			}
		}
		return false;

	}

}
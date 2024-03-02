package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.User;
import DBConnection.DBConnection;

public class UserDAO {
	public User register(String userName, String password, String email, String fullName, String gender) {
	    try (Connection connection = DBConnection.makeConnection();
	         PreparedStatement pstmtInsert = connection.prepareStatement("INSERT INTO user (user_name, password, email, full_name, gender) VALUES (?, ?, ?, ?, ?)");
	         ) {

	        pstmtInsert.setString(1, userName);
	        pstmtInsert.setString(2, password);
	        pstmtInsert.setString(3, email);
	        pstmtInsert.setString(4, fullName);
	        pstmtInsert.setString(5, gender); 

	        int rowsAffected = pstmtInsert.executeUpdate();

	        if (rowsAffected > 0) {
	        	return new User(userName, password, email, fullName, gender);

	           
	                }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return null;
	}






	public User getUserByUsernameAndPassword(String userName, String password) throws SQLException {
		Connection connection = DBConnection.makeConnection();
		String SQLString = "SELECT * FROM user WHERE user_name = ? AND password = ?";
		PreparedStatement login = connection.prepareStatement(SQLString);
		login.setString(1, userName);
		login.setString(2, password);
		ResultSet resultSet = login.executeQuery();

		if (resultSet.next()) {
			int id = resultSet.getInt("id");
			return new User(userName, password);
		}

		return null;
	}
}

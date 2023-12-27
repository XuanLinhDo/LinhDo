package ServiceClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import DBConnection.DBConnection;

public class UserService {
	static Scanner input = new Scanner(System.in);

	public static void registration() throws SQLException {
		System.out.println("Please enter user name");
		String userName = input.nextLine();

		System.out.println("Please enter password");
		String password = input.nextLine();
		try (Connection connection = DBConnection.makeConnection()) {
			String SQL = "INSERT INTO login (username, password) VALUES (?, ?)";

			try (PreparedStatement pstmt = connection.prepareStatement(SQL)) {
				pstmt.setString(1, userName);
				pstmt.setString(2, password);
				pstmt.executeUpdate();
				System.out.println("Registration successful");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static int login() {

		int maxAttempts = 3;
		int attempts = 0;

		do {
			System.out.println("Please enter user name");
			String userName = input.nextLine();

			System.out.println("Please enter password");
			String password = input.nextLine();

			try (Connection connection = DBConnection.makeConnection()) {
				String SQLString = "SELECT * FROM login WHERE username = ? AND password = ?";

				try (PreparedStatement login = connection.prepareStatement(SQLString)) {
					login.setString(1, userName);
					login.setString(2, password);

					try (ResultSet resultSet = login.executeQuery()) {
						if (resultSet.next()) {
							return 1;
						} else {
							System.out.println("Invalid username or password. Please try again.");
						}
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			attempts++;
		} while (attempts < maxAttempts);

		System.out.println("Maximum login attempts reached. Account is  Locked");
		return 0;
	}
}

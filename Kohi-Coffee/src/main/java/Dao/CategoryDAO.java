package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.Category;
import DBConnection.DBConnection;

public class CategoryDAO {
	public List<Category> getAllCategories() throws SQLException {
		Connection connection = DBConnection.makeConnection();

		Statement stmt = connection.createStatement();
		String SQL = "SELECT * FROM category ORDER BY priority";

		ResultSet rs = stmt.executeQuery(SQL);

		List<Category> list = new ArrayList<Category>();

		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
			int priority = rs.getInt("priority");
			Category category = new Category(id, name, priority);
			list.add(category);
		}
		return list;

	}
}

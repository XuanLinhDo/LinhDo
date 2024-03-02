package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DBConnection.DBConnection;
import entity.Product;

public class ProductDAO {
	public List<Product> getLastestProducts() throws SQLException {
		Connection connection = DBConnection.makeConnection();

		Statement stmt = connection.createStatement();
		String SQL = "SELECT * FROM product WHERE is_new = 1";

		ResultSet rs = stmt.executeQuery(SQL);

		List<Product> list = new ArrayList<Product>();

		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
			int price = rs.getInt("price");
			String imgName = rs.getString("img_name");
			boolean isNew = rs.getBoolean("is_new");
			int quantity = rs.getInt("quantity");
			String description = rs.getString("description");
			Product product = new Product(id, name, price, imgName, isNew, quantity, description);
			list.add(product);
		}
		return list;

	}

	public List<Product> getAllProducts(int page, int pageSize) throws SQLException {
		Connection connection = DBConnection.makeConnection();
		int offset = (page - 1) * pageSize;
		String SQL = "SELECT * FROM product LIMIT ? OFFSET ?";

		try (PreparedStatement statement = connection.prepareStatement(SQL)) {
			statement.setInt(1, pageSize);
			statement.setInt(2, offset);
			ResultSet rs = statement.executeQuery();
			List<Product> list = new ArrayList<Product>();

			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String imgName = rs.getString("img_name");
				boolean isNew = rs.getBoolean("is_new");
				int quantity = rs.getInt("quantity");
				String description = rs.getString("description");
				Product product = new Product(id, name, price, imgName, isNew, quantity, description);
				list.add(product);
			}
			return list;
		}

	}

	public static Product getProductById(String productId) throws SQLException {
	    Connection connection = DBConnection.makeConnection();
	    String SQL = "SELECT * FROM product WHERE id = ?";

	    try (PreparedStatement pstmt = connection.prepareStatement(SQL)) {
	        pstmt.setString(1, productId);
	        ResultSet rs = pstmt.executeQuery();

	        if (rs.next()) {
	            int id = rs.getInt("id");
	            String name = rs.getString("name");
	            int price = rs.getInt("price");
	            String imgName = rs.getString("img_name");
	            boolean isNew = rs.getBoolean("is_new");
	            int quantity = rs.getInt("quantity");
	            String description = rs.getString("description");
	            return new Product(id, name, price, imgName, isNew, quantity, description);
	        } else {
	            return null; // Return null if product with the given ID is not found
	        }
	    }
	}

	public List<Product> getProductsByCategoryId(String categoryId) throws SQLException {
		Connection connection = DBConnection.makeConnection();
	
		String SQL = "SELECT * FROM product WHERE category_id = ?";

		PreparedStatement pstmt = connection.prepareStatement(SQL);
		pstmt.setString(1, categoryId);
		
		ResultSet rs = pstmt.executeQuery();

		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
			int price = rs.getInt("price");
			String imgName = rs.getString("img_name");
			boolean isNew = rs.getBoolean("is_new");
			int quantity = rs.getInt("quantity");
			String description = rs.getString("description");
			Product product = new Product(id, name, price, imgName, isNew, quantity, description);
			list.add(product);
		}
		return list;
	}

	public List<Product> search(String value) throws SQLException {
		Connection connection = DBConnection.makeConnection();
		
		
		String SQL = "SELECT * FROM product WHERE name like ?";
		PreparedStatement pstmt = connection.prepareStatement(SQL);
		
		pstmt.setString(1, "%" + value + "%");
		
		ResultSet rs = pstmt.executeQuery();

		List<Product> list = new ArrayList<Product>();

		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
			int price = rs.getInt("price");
			String imgName = rs.getString("img_name");
			boolean isNew = rs.getBoolean("is_new");
			int quantity = rs.getInt("quantity");
			String description = rs.getString("description");
			Product product = new Product(id, name, price, imgName, isNew, quantity, description);
			list.add(product);
		}
		return list;

	}

	public int getTotalProductCount() throws SQLException {
		Connection connection = DBConnection.makeConnection();
		String SQL = "SELECT COUNT(*) AS total FROM product";
		try (PreparedStatement pstmt = connection.prepareStatement(SQL)) {
			ResultSet resultSet = pstmt.executeQuery();
			if (resultSet.next()) {
				return resultSet.getInt("total");
			}
			return 0;
		}
	}

}

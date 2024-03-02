package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entity.Order;
import DBConnection.DBConnection;

public class OrderDAO {
	public int addOrder(Order order) throws SQLException {
		Connection connection = DBConnection.makeConnection();
		PreparedStatement pstmtInsert = null;
		try {
			String SQL = "INSERT INTO `order` (user_id) VALUES (?)";
			pstmtInsert = connection.prepareStatement(SQL, PreparedStatement.RETURN_GENERATED_KEYS);

			pstmtInsert.setInt(1, order.getUserId());
			
			pstmtInsert.execute();

			ResultSet rs = pstmtInsert.getGeneratedKeys();
			int key = 0;
			if(rs.next()) {
				key = (int) rs.getInt(1);
			}
		} finally {
			close(connection, pstmtInsert, null);
		}
		return 0;

	}

	private void close(Connection connection, PreparedStatement pstmtInsert, ResultSet rs) {
		try {
			if (connection != null) {
				connection.close();
			}
			if (pstmtInsert != null) {
				pstmtInsert.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}

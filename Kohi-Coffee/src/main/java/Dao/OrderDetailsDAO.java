package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.OrderDetails;
import DBConnection.DBConnection;

public class OrderDetailsDAO {
	public void addOrderDetails(OrderDetails orderDetails) throws SQLException {
		Connection connection = DBConnection.makeConnection();
		PreparedStatement pstmtInsert = null;
        try {
        	String SQL = "INSERT INTO `order_details` (order_id, product_id, quantity, price) VALUES (?, ?, ?, ?)";
             pstmtInsert = connection.prepareStatement(SQL);

            pstmtInsert.setInt(1, orderDetails.getOrderId());
            pstmtInsert.setInt(2, orderDetails.getProductId());
            pstmtInsert.setInt(3, orderDetails.getQuantity());
            pstmtInsert.setInt(4, orderDetails.getPrice());

            pstmtInsert.execute();


        } finally  {
          close(connection, pstmtInsert, null);
        }

    }
	private void close(Connection connection, PreparedStatement pstmtInsert, ResultSet rs) {
		try {
			if(connection !=null) {
				connection.close();
			}
			if(pstmtInsert !=null) {
				pstmtInsert.close();
			}
			if(rs !=null) {
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}

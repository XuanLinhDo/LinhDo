package entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDetails {

	private int id;
	private int orderId;
	private int productId;
	private int quantity;
	private int price;
	public OrderDetails(int orderId, int productId, int quantity, int price) {
		super();
		this.orderId = orderId;
		this.productId = productId;
		this.quantity = quantity;
		this.price = price;
	}

}

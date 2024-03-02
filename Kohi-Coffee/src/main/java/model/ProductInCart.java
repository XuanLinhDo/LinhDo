package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductInCart {
	private int id;
	private String name;
	private String imgName;
	private int price;
	private int quantity;
	private double subTotal;

	@Override
	public int hashCode() {
		int hashCode = 1;
		hashCode = 31*hashCode + id;
		return hashCode;
	}
	@Override 
	public boolean equals(Object obj) {
		ProductInCart product = (ProductInCart) obj;
		return this.id == product.getId();
	}
}

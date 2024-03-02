package entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import model.ProductInCart;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	private int id;
	private String name;
	private int price;
	private String imgName;
	private boolean isNew;
	private int quantity;
	private String description;
	
	 public boolean getIsNew() {
	        return isNew;
	    }
	 @Override
		public int hashCode() {
			int hashCode = 1;
			hashCode = 31*hashCode + id;
			return hashCode;
		}
		@Override 
		public boolean equals(Object obj) {
			Product product = (Product) obj;
			return this.id == product.getId();
		}
}

package entity;

import java.util.Set;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import model.ProductInCart;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Cart {
	private Set<ProductInCart> items;
	private double total;
}

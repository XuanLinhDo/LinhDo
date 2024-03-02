package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.CategoryDAO;
import Dao.ProductDAO;
import entity.Cart;
import entity.Category;
import entity.Product;
import model.ProductInCart;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String action = request.getParameter("ACTION");

			switch (action) {
			case "ADD_TO_CART": {
				addToCart(request, response);
				break;
			}
			case "VIEW_CART": {
				viewCart(request, response);
				break;
			}
			case "REMOVE": {
				remove(request, response);
				break;
			}
			case "UPDATE_QUANTITY": {
				updateQuantity(request, response);
				break;
			}

			default:
				break;
			}
		} catch (ServletException | IOException | SQLException e) {
			e.printStackTrace();
		}
	}

	private void addToCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String productId = request.getParameter("productId");

		Cart cart;
		HttpSession session = request.getSession();
		if (session.getAttribute("cart") == null) {
			cart = new Cart();
			cart.setItems(new HashSet<ProductInCart>());
		} else {
			cart = (Cart) session.getAttribute("cart");
		}

		Product product = ProductDAO.getProductById(productId);
		ProductInCart productInCart = new ProductInCart(product.getId(), product.getName(), product.getImgName(),
				product.getPrice(), 1, product.getPrice());
		if (cart.getItems().contains(productInCart)) {
			for (ProductInCart item : cart.getItems()) {
				if (item.getId() == productInCart.getId()) {
					productInCart.setQuantity(item.getQuantity() + 1);
					productInCart.setSubTotal(productInCart.getQuantity() * productInCart.getPrice());
				}

			}

			cart.getItems().remove(productInCart);
			cart.getItems().add(productInCart);
		} else {
			productInCart.setQuantity(1);
			productInCart.setSubTotal(productInCart.getPrice());
			cart.getItems().add(productInCart);
		}
		cart.setTotal(cart.getTotal() + product.getPrice());

		session.setAttribute("cart", cart);

		response.sendRedirect("ProductDetailsController?productId=" + productId);
	}

	private void viewCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		CategoryDAO categoryDao = new CategoryDAO();

		List<Category> categories = categoryDao.getAllCategories();

		RequestDispatcher rd = request.getRequestDispatcher("/view-cart.jsp");
		request.setAttribute("categories", categories);
		rd.forward(request, response);

	}

	private void remove(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		String productId = request.getParameter("productId");
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");

		if (cart != null) {
			Product product = ProductDAO.getProductById(productId);
			ProductInCart productInCart = new ProductInCart(product.getId(), product.getName(), product.getImgName(),
					product.getPrice(), 1, product.getPrice());
			ProductInCart productToRemove = null;
			if (cart.getItems().contains(productInCart)) {
				for (ProductInCart item : cart.getItems()) {
					if (item.getId() == productInCart.getId()) {
						productToRemove = item;
						break;
					}

				}
				if (productToRemove != null) {
					cart.getItems().remove(productToRemove);
					cart.setTotal(cart.getTotal() - (productToRemove.getPrice() * productToRemove.getQuantity()));
					session.setAttribute("cart", cart); 
				}

			}

			response.sendRedirect(request.getContextPath() + "/CartController?ACTION=VIEW_CART");
		}

	}

	private void updateQuantity(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		String productId = request.getParameter("productId");
		String quantityChange = request.getParameter("quantityChange");
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");

		if (cart != null) {
			Product product = ProductDAO.getProductById(productId);
			ProductInCart productInCart = new ProductInCart(product.getId(), product.getName(), product.getImgName(),
					product.getPrice(), 1, product.getPrice());
			ProductInCart productToUpdate = null;
			if (cart.getItems().contains(productInCart)) {
				for (ProductInCart item : cart.getItems()) {
					if (item.getId() == productInCart.getId()) {
						productToUpdate = item;
						break;
					}
				}
				if (productToUpdate != null) {
					if ("increase".equals(quantityChange)) {
						productToUpdate.setQuantity(productToUpdate.getQuantity() + 1);
					} else if ("decrease".equals(quantityChange) && productToUpdate.getQuantity() > 1) {
						productToUpdate.setQuantity(productToUpdate.getQuantity() - 1);
					}
					productToUpdate.setSubTotal(productToUpdate.getQuantity() * productToUpdate.getPrice());
					
					int newTotal = 0;
		            for (ProductInCart item : cart.getItems()) {
		                newTotal += item.getSubTotal();
		            }
		            cart.setTotal(newTotal);
		            
					session.setAttribute("cart", cart);
				}
			}
		}
		response.sendRedirect(request.getContextPath() + "/CartController?ACTION=VIEW_CART");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CategoryDAO;
import Dao.OrderDAO;
import Dao.OrderDetailsDAO;
import entity.Cart;
import entity.Category;
import entity.Order;
import entity.OrderDetails;
import entity.Product;
import entity.User;
import model.ProductInCart;

/**
 * Servlet implementation class Checkout
 */
@WebServlet("/Checkout")
public class Checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Checkout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			OrderDAO orderDAO = new OrderDAO();
			OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
			Order order = new Order();
			User user = (User) request.getSession().getAttribute("user");
			Cart cart = (Cart) request.getSession().getAttribute("cart");
			
			order.setUserId(user.getId());
			
			int newOrderId = orderDAO.addOrder(order);
			
			for(ProductInCart productInCart : cart.getItems()) {
				OrderDetails orderDetail = new OrderDetails(newOrderId, productInCart.getId(),productInCart.getQuantity(),productInCart.getPrice());
				orderDetailsDAO.addOrderDetails(orderDetail);
			}
			CategoryDAO categoryDao = new CategoryDAO();
			List<Category> categories;
			categories = categoryDao.getAllCategories();
			request.getSession().removeAttribute("cart");
			RequestDispatcher rd = request.getRequestDispatcher("/checkout.jsp");
			request.setAttribute("categories", categories);
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CategoryDAO;
import Dao.ProductDAO;
import entity.Category;
import entity.Product;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductDAO productDao = new ProductDAO();
	CategoryDAO categoryDao = new CategoryDAO();
	List<Product> products;
	List<Category> categories;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductController() {
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
			String action = request.getParameter("action");
			if (action == null) {
				action = "DEFAULT";
			}
			int page = 1;
			int pageSize = 3;
			String pageParam = request.getParameter("page");
			String pageSizeParam = request.getParameter("pageSize");
			if (pageParam != null) {
				page = Integer.parseInt(pageParam);
			}
			if (pageSizeParam != null) {
				pageSize = Integer.parseInt(pageSizeParam);
			}


			switch (action) {
			case "SHOW_PRODUCT_BY_CATEGORY": {
				
				String catId = request.getParameter("catId");
				products = productDao.getProductsByCategoryId(catId);
			
				break;
			}
			case "SEARCH": {
				
				String searchValue = request.getParameter("searchValue");
				products = productDao.search(searchValue);
				
				break;
			}
			default: {
				
				products = productDao.getAllProducts(page, pageSize);
				int totalProductCount = productDao.getTotalProductCount();
				int totalPages = (int) Math.ceil((double) totalProductCount / pageSize);
				request.setAttribute("totalPages", totalPages);
				request.setAttribute("currentPage", page);
			}

			}

			categories = categoryDao.getAllCategories();

			dispatchAttributeToView(request, response);
		} catch (NumberFormatException | SQLException e) {
			e.printStackTrace();

			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void dispatchAttributeToView(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/products.jsp");
		request.setAttribute("products", products);
		request.setAttribute("categories", categories);
		rd.forward(request, response);
	}

}

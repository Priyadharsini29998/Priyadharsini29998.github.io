package com.cognizant.truyum.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.truyum.dao.MenuItemDao;
import com.cognizant.truyum.dao.MenuItemDaoCollectionImpl;
import com.cognizant.truyum.model.MenuItem;

/**
 * Servlet implementation class EditMenuItemServlet
 */
@WebServlet({ "/EditMenuItemServlet", "/EditMenuItem" })
public class EditMenuItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditMenuItemServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			long id = Long.parseLong(request.getParameter("menuItemId"));
			String name = request.getParameter("txtName");
			float price = Float.parseFloat(request.getParameter("txtPrice"));
			boolean active = Boolean.parseBoolean(request.getParameter("txtRadio"));

			String dateOfLaunch = request.getParameter("txtLaunch");
			SimpleDateFormat formater = new SimpleDateFormat("dd/MM/yyyy");
			Date result = formater.parse(dateOfLaunch);

			String category = request.getParameter("Category");
			boolean freeDelivery = Boolean.parseBoolean(request.getParameter("checkbox"));

			MenuItem menuItem = new MenuItem(id, name, price, active, result, category, freeDelivery);
			MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
			try {
				menuItemDao.modifyMenuItem(menuItem);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("msg", "Menu Item details saved successfully");
			RequestDispatcher rd = request.getRequestDispatcher("edit-menu-item-status.jsp");
			rd.forward(request, response);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

package com.cognizant.truyum.dao;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemDaoCollectionImplTest {

	public static void main(String[] args) {

		try {
			System.out.println("Admin Menu Items");
			testGetMenuItemListAdmin();
			System.out.println("Customer Menu Items");
			testGetMenuItemListCustomer();
			testModifyMenuItem();
			System.out.println("Modified Menu Items");
			testGetMenuItemListAdmin();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static void testGetMenuItemListAdmin() throws ParseException, SQLException {
		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		List<MenuItem> menuItemList = menuItemDao.getMenuItemListAdmin();
		for (MenuItem x : menuItemList) {
			System.out.println(x);
		}
	}

	public static void testGetMenuItemListCustomer() throws ParseException, SQLException {
		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		List<MenuItem> menuItemList = menuItemDao.getMenuItemListCustomer();
		for (MenuItem x : menuItemList) {
			System.out.println(x);
		}

	}

	public static void testModifyMenuItem() throws ParseException, SQLException {
		MenuItem newItem = new MenuItem(2, "Chicken Nuggets", 49.0f, true, DateUtil.convertToDate("11/08/2019"),
				"Starters", false);
		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		menuItemDao.modifyMenuItem(newItem);

	}

	public static void testGetMenuItem() {

	}
}

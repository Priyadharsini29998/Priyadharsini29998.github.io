package com.cognizant.truyum.dao;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemDaoSqlImplTest {

	public static void main(String[] args) {

		try {
			System.out.println("Admin menu List");
			testGetmenuItemAdmin();
			System.out.println("Customer menu Item List");
			testgetMenuItemListCustomer();
			System.out.println("Modified menu Item List");
			testModifyMenuItem();
			testGetmenuItemAdmin();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private static void testModifyMenuItem() throws ParseException, SQLException {
		MenuItem m = new MenuItem(1, "ChocoPie", 10.00f, true, DateUtil.convertToDate("14/05/2018"), "Starter",
				true);
		MenuItemDao menuItemDao = new MenuItemDaoSqlImpl();
		menuItemDao.modifyMenuItem(m);
	}

	public static void testGetmenuItemAdmin() throws ParseException, SQLException {

		MenuItemDao menuItemDao = new MenuItemDaoSqlImpl();
		List<MenuItem> menuitemList = menuItemDao.getMenuItemListAdmin();
		for (MenuItem x : menuitemList) {
			System.out.println(x);
		}
	}

	public static void testgetMenuItemListCustomer() throws ParseException, SQLException {
		MenuItemDao menuItemDao = new MenuItemDaoSqlImpl();
		List<MenuItem> menuitemList = menuItemDao.getMenuItemListCustomer();
		for (MenuItem x : menuitemList) {
			System.out.println(x);
		}
	}

}

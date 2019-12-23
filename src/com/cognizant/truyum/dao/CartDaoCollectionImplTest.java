package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public class CartDaoCollectionImplTest {

	public static void main(String[] args) {
		try {
			//testGetAllCartItems();
			testAddCartItem();
			//testGetAllCartItems();
			testRemoveCartItem();
			testGetAllCartItems();

		} catch (CartEmptyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static void testGetAllCartItems() throws CartEmptyException {
		CartDao cartDao = new CartDaoCollectionImpl();
		cartDao.getAllCartItems(1);
	}

	public static void testAddCartItem() throws CartEmptyException {
		CartDao cartDao = new CartDaoCollectionImpl();
		cartDao.addCartItem(1, 2l);
		cartDao.addCartItem(1, 5l);
		cartDao.addCartItem(2, 1l);
		cartDao.addCartItem(2, 3l);

		List<MenuItem> menuItemListCustomer = cartDao.getAllCartItems(1);
		System.out.println("User added Cart List is Checkout");
		for (MenuItem menuItem : menuItemListCustomer) {
			System.out.println(menuItem);
		}

	}

	public static void testRemoveCartItem() {
		CartDao cartDao = new CartDaoCollectionImpl();
		cartDao.removeCartItem(1, 2l);
		try {
			cartDao.getAllCartItems(1l);
		} catch (CartEmptyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

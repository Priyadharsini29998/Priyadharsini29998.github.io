package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public class CartDaoCollectionImplTest {

	public static void main(String[] args) {
		try {
			testGetAllCartItems();
			testAddCartItem();
			testGetAllCartItems();
			testRemoveCartItem();
			testGetAllCartItems();

		} catch (CartEmptyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static void testGetAllCartItems() throws CartEmptyException {
		CartDao cartDao = new CartDaoCollectionImpl();
		List<MenuItem> menuItemListCustomer = cartDao.getAllCartItems(1);
		
		for (MenuItem menuItem : menuItemListCustomer) {
			System.out.println(menuItem);
		}
		
	}

	public static void testAddCartItem() throws CartEmptyException {
		CartDao cartDao = new CartDaoCollectionImpl();
		System.out.println("User added Cart List is Checkout");
		cartDao.addCartItem(1, 2l);
		cartDao.addCartItem(1, 3l);
		
}

	public static void testRemoveCartItem() {
		CartDao cartDao = new CartDaoCollectionImpl();
		System.out.println("User Deleted Cart List Checkout");
		try {
			cartDao.removeCartItem(1, 2l);
		} catch (CartEmptyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

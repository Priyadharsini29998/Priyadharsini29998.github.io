package com.cognizant.truyum.dao;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;

import com.cognizant.truyum.model.Cart;
import com.cognizant.truyum.model.MenuItem;

public class CartDaoCollectionImpl implements CartDao {
	private static HashMap<Long, Cart> userCarts;
	private long menuItemId;
	

	public CartDaoCollectionImpl() {
		if (userCarts == null) {
			userCarts = new HashMap<>();
			userCarts.put(1l, new Cart());
		}

	}

	@Override
	public void addCartItem(long userId, long menuItemId) {
		try {
			MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
			MenuItem menuItem = menuItemDao.getMenuItem(menuItemId);
			if (userCarts.containsKey(userId)) {
				Cart cart = userCarts.get(userId);
				cart.getMenuItemList().add(menuItem);
			} else {
				Cart cart = new Cart();
				cart.getMenuItemList().add(menuItem);
				userCarts.put(userId, cart);
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public List<MenuItem> getAllCartItems(long userId) throws CartEmptyException {
		List<MenuItem> menuItemList =userCarts.get(userId).getMenuItemList();
		Cart cart = userCarts.get(userId);
		double total=0.0;
		if (cart== null || cart.getMenuItemList()==null || cart.getMenuItemList().isEmpty()) {
			
				throw new CartEmptyException();
			
		} else {
			for (MenuItem menu : menuItemList) {
				total += menu.getPrice();
			}
			cart.setTotal(total);
			
		}
		return menuItemList;
		

	}
	
	public void removeCartItem(long userId , long menuItemId) throws CartEmptyException
	{
		List<MenuItem> menuItemList =userCarts.get(userId).getMenuItemList();
		if (menuItemList==null || menuItemList.isEmpty()) {
			
			throw new CartEmptyException();
		
	}
		for(int i = 0;i< menuItemList.size();i++) {
			if(menuItemList.get(i).getId() == menuItemId ) {
				menuItemList.remove(i);
				break;
			}
		}
	}

}

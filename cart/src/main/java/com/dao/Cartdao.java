package com.dao;

import java.util.List;

import com.model.Cart;
import com.model.Newuser;
import com.model.Shipping;

public interface Cartdao {

	void add(Cart cart, String username);

	public List<Cart> getAllCart(String username);

	void odadd(Shipping sh);

	void update(Cart cart, String username);
	

}

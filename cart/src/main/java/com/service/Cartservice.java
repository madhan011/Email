package com.service;

import java.util.List;

import com.model.Cart;
import com.model.Newuser;
import com.model.Shipping;

public interface Cartservice {

	

	void add(Cart cart, String username);

	public List getAllCart(String username);

	void odadd(Shipping sh);

	void update(Cart cart, String username);

}

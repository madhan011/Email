package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.Cartdao;
import com.model.Cart;
import com.model.Newuser;
import com.model.Shipping;

@Service
@Transactional
public class CartServiceImpl implements Cartservice{

	@Autowired
	Cartdao cd;
	@Override
	public void add(Cart cart,String username) {
		
		cd.add(cart,username);
	}
	@Override
	public List getAllCart(String username) {
		
		return cd.getAllCart(username);
	}
	@Override
	public void odadd(Shipping sh) {
		cd.odadd(sh);
	}
	@Override
	public void update(Cart cart, String username) {
		cd.update(cart,username);
		
	}

}

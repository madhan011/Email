package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Cart;
import com.model.Newuser;
import com.model.Shipping;

@Repository
@Transactional
public class CartDaoImpl  implements Cartdao{

	@Autowired
	private SessionFactory sf;

	@Override
	public void add(Cart cart,String username) {
		

		List<Newuser> userdet=sf.getCurrentSession().createQuery("from USER where username='"+username+"'").list();
	for(int i=0;i<userdet.size();i++)
	{
		Newuser nw=(Newuser) userdet.get(i);
		nw.setCart(cart);
	}
	sf.getCurrentSession().saveOrUpdate(cart);
	}

	@Override
	public List<Cart> getAllCart(String username) {
		
		return sf.getCurrentSession().createQuery("from CART where USERNAME='username'").list();
	}

	@Override
	public void odadd(Shipping sh) {
		sf.getCurrentSession().saveOrUpdate(sh);	}

	@Override
	public void update(Cart cart, String username) {
		sf.getCurrentSession().update(cart);
	}

	
	

}

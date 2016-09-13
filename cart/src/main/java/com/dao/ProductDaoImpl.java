package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.ProductModel;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
@Autowired
private SessionFactory session;
	
	@Override
	public void add(ProductModel productModel) {
		session.getCurrentSession().save(productModel);
	}

	@Override
	public void edit(ProductModel productModel) {
		session.getCurrentSession().update(productModel);
		
	}

	@Override
	public void delete(String getId) {
		session.getCurrentSession().delete(getProductModel(getId));
	}

	@Override
	public ProductModel getProductModel(String getId) {
		return (ProductModel)session.getCurrentSession().get(ProductModel.class,getId);
	}

	@Override
	public List getAllProductModel() {
		return session.getCurrentSession().createQuery("from PRODUPD").list();
	}

	@Override
	public List getAllHeadPhones() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from PRODUPD where category='Headphones'").list();
	}

	@Override
	public List getAllCases() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from PRODUPD where category='Cases'").list();
	}

	@Override
	public List getAllChargers() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from PRODUPD where category='Chargers'").list();
	}

	@Override
	public List getAllScreenGuard() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from PRODUPD where category='Screenguards'").list();
	}

	@Override
	public List getAllCables() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from PRODUPD where category='Cables'").list();
	}

	@Override
	public List getAllStorge() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from PRODUPD where category='Storage'").list();
	}
}

package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.model.ProductModel;
@Service
@Transactional
public class ProductServiceImpl  implements ProductService{
@Autowired(required=true)
private ProductDao productdao;

@Override	
public void add(ProductModel productModel){
	productdao.add(productModel);
	
}
@Override	
public void edit(ProductModel productModel){
	productdao.edit(productModel);
	
}
@Override	
public void delete(String getId){
	productdao.delete(getId);
	
}
@Override
public ProductModel getProductModel(String getId){
	return productdao.getProductModel(getId);
}
@Override
public List getAllProductModel(){
	return productdao.getAllProductModel();
}
@Override
public List getAllHeadPhones() {
	
	return productdao.getAllHeadPhones();
}

@Override
public List getAllCases() {
	
	return productdao.getAllCases();
}

@Override
public List getAllChargers() {
	
	return productdao.getAllChargers();
}

@Override
public List getAllScreenGuard() {

	return productdao.getAllScreenGuard();
}

@Override
public List getAllCables() {

	return productdao.getAllCables();
}

@Override
public List getAllStorge() {

	return productdao.getAllStorge();
}

}

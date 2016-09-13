package com.dao;

import java.util.List;

import com.model.ProductModel;

public interface ProductDao {

public 	void add(ProductModel productModel);

public void edit(ProductModel productModel);

public void delete(String getId);

public ProductModel getProductModel(String getId);

public List getAllProductModel();
public List getAllHeadPhones();
public List getAllCases();
public List getAllChargers();
public List getAllScreenGuard();
public List getAllCables();
public List getAllStorge();

}

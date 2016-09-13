package com.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Entity(name="CART")
@Component
public class Cart {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cid;
	
	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}



	private double totalprice;
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	

	@ManyToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL,targetEntity=ProductModel.class)
	private ProductModel product;
	
	private int quantity;

	

	public ProductModel getProduct() {
		return product;
	}

	public void setProduct(ProductModel product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
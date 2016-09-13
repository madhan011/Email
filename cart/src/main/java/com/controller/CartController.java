package com.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Cart;
import com.model.ProductModel;
import com.model.Shipping;
import com.service.Cartservice;
import com.service.ProductService;

@Controller
public class CartController {

	@Autowired
	ProductService ps;
	@Autowired
	Cartservice cs;
	private String username;

	@ModelAttribute
	public void getuserdata(HttpServletRequest req) {
		Authentication au = SecurityContextHolder.getContext().getAuthentication();
		String name = au.getName();

		HttpSession ses = req.getSession();
		ses.setAttribute("u", name);
		username = (String) ses.getAttribute("u");
		System.out.println((String) ses.getAttribute("u"));
	}

	@RequestMapping(value = "user/addtocart/{id}")
	public String add(Map<String, Object> map, @PathVariable("id") String id, Cart cart) {
		List<Cart> allCart = (List<Cart>) cs.getAllCart(username);
		List<Cart> p = allCart;
		/*if (p != null) {
			for (int i = 0; i < p.size(); i++) {
				System.out.println(p);
				if (p.get(i).getProduct().getId() == id) {
					cart.setProduct(ps.getProductModel(id));
					int quantity = cart.getQuantity();
					cart.setQuantity(quantity + 1);
					ProductModel price = ps.getProductModel(id);
					double d = price.getPrice();
					cart.setTotalprice(quantity * d);

					
				} else {
					cart.setQuantity(1);
					cart.setProduct(ps.getProductModel(id));
					ProductModel price = ps.getProductModel(id);
					cart.setTotalprice(price.getPrice());
					break;
				}
			}
			cs.add(cart, username);
		} else {*/
			if(p==null){
				System.out.println("enna");
			cart.setQuantity(1);
			cart.setProduct(ps.getProductModel(id));
			ProductModel price = ps.getProductModel(id);
			cart.setTotalprice(price.getPrice());
			cs.add(cart, username);
			}else{
				int index=isExisting(id);
				if(index==-1){
					System.out.println("not working");
					cart.setQuantity(1);
					cart.setProduct(ps.getProductModel(id));
					ProductModel price = ps.getProductModel(id);
					cart.setTotalprice(price.getPrice());
					cs.add(cart, username);
				}
				
				else{
					System.out.println("pakka");
					int Quantity=p.get(index).getQuantity();
					cart.setQuantity(Quantity+1);
					double price = ps.getProductModel(id).getPrice();
					//double d = p.get(index).getProduct().getPrice();
					cart.setTotalprice(Quantity * price);
					cs.update(cart, username);
			}}
		map.put("cart", cart);
		map.put("cartlist", cs.getAllCart(username));
		return "Cart";
	}

	private int isExisting(String id) {
		List<Cart> allCart = (List<Cart>) cs.getAllCart(username);
		List<Cart> p = allCart;
		for (int i = 0; i < p.size(); i++) {
			if (p.get(i).getProduct().getId() == id)
				break;
				System.out.println(p.get(i).getProduct().getId());
				return i;
		}		
		return -1;
	}
	}

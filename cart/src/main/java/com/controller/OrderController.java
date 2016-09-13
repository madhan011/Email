package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Shipping;
import com.service.Cartservice;

@Controller
public class OrderController {
	
	@Autowired
	Cartservice cs;
	
	@ModelAttribute("ordet")
	public Shipping sh()
	{
		return new Shipping();
	}
	
	
	@RequestMapping(value="/orderplaced/${username}")
	public String last(@PathVariable("username") String username,@ModelAttribute("ordet") Shipping sh)
	{
		cs.odadd(sh);
		return "index";
	}
}

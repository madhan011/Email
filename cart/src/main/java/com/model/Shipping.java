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
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.stereotype.Component;


@Entity(name="Shipping_Details")
@Component
public class Shipping {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int sid;
	

	@ManyToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL,targetEntity=Cart.class)
	public Cart cartdetails;
	
	@NotNull(message="NAME is mandatory for Shipping")
	public String sname;
	
	@NotEmpty(message="Phone Number is Mandatory for Shipping")
	@NumberFormat(pattern="")
	public int PhoneNumber;
	
	@NotNull(message="Files is Mandatory")
	public String Addr1; 
	
	@NotNull(message="Filed is mandatory")
	public String Addr2;
	
	
	public String Addr3;
	
	@NotNull
	public String City;
	
	@NotEmpty(message="Pincode to Delivery")
	@Length(min=6,max=6,message="Length Must Be Six")
	public int pincode;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="USERNAME")
	public Newuser userdetails;

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public Cart getCartdetails() {
		return cartdetails;
	}

	public void setCartdetails(Cart cartdetails) {
		this.cartdetails = cartdetails;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public int getPhoneNumber() {
		return PhoneNumber;
	}

	public void setPhoneNumber(int phoneNumber) {
		PhoneNumber = phoneNumber;
	}

	public String getAddr1() {
		return Addr1;
	}

	public void setAddr1(String addr1) {
		Addr1 = addr1;
	}

	public String getAddr2() {
		return Addr2;
	}

	public void setAddr2(String addr2) {
		Addr2 = addr2;
	}

	public String getAddr3() {
		return Addr3;
	}

	public void setAddr3(String addr3) {
		Addr3 = addr3;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public Newuser getUserdetails() {
		return userdetails;
	}

	public void setUserdetails(Newuser userdetails) {
		this.userdetails = userdetails;
	}
	
	

}

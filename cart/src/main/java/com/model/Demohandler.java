package com.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import com.service.RegisterService;



@Component
public class Demohandler {

	public Newuser initFlow(){
		return new Newuser();
	}
	@Autowired
	EmailAPI mailtouser;
	public void send(Newuser newuser)
	{
	
		String toAddr = newuser.getEmail();
		String fromAddr = "1madhankumar1@gmail.com";
 
		// email subject
		String subject = "Mobiaces wewlcomes you";
 
		// email body
		String body = "Welcome to the Mobiace "+newuser.getFname()+"."+System.getProperty("line.separator")
				+"Thanks to begin with us."+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+ "------------"+System.getProperty("line.separator")
				+ "-Mobiaces";
		mailtouser.mailmethod(toAddr, fromAddr, subject, body);
		
		
	}
	
	@Autowired
	RegisterService rs;
	public void save(Newuser newuser)
	{
		rs.s(newuser);
	}
	
	public String validateDetails(Newuser newuser,MessageContext messageContext){
		String status = "success";
		if(newuser.getFname().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"fname").defaultText("Name Cannot Be Empty cannot be Empty").build());
			status = "failure";
		}
		if(newuser.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(newuser.getAge().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"age").defaultText("Age cannot be Empty").build());
			status = "failure";
		}
		if(newuser.getUsername().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"username").defaultText("UserName cannot be Empty").build());
			status = "failure";
		}
		if(newuser.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("password cannot be Empty").build());
			status = "failure";
		}
		if(newuser.getcPassword().isEmpty()){
			{
				if(newuser.getPassword() != (newuser.getcPassword()))
					
			messageContext.addMessage(new MessageBuilder().error().source(
					"cPassword").defaultText("Conformation password not valid").build());
			status = "failure";
			}
		}
		if(newuser.getPhnumber().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"phnumber").defaultText("PHONE NUMBER cannot be Empty").build());
			status = "failure";
		}
			
		return status;
	}
}
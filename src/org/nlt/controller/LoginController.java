package org.nlt.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nlt.controller.services.LoginServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@Autowired
	private LoginServices loginservice;
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView loginUser(HttpServletRequest req,HttpServletResponse res)
	{
		HashMap m = new HashMap();
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		m.put("emailValue", email);
		m.put("passwordValue", password);
		
		String errorMessage="";
		
		if(email.isEmpty())
		{
			errorMessage="ENTER YOUR EMAIL ID";
			m.put("error", errorMessage);
		}
		else if(password.isEmpty())
		{
			errorMessage="ENTER YOUR PASSWORD";
			m.put("error", errorMessage);
		}
		else
		{
		boolean result=loginservice.loginUserService(email,Integer.parseInt(password));
			if(result)
			{
				return new ModelAndView("aadharDetails");
			}
			else
			{
				m.put("error", "INVALID USERNAME OR PASSWORD");
				return new ModelAndView("index",m);
			}
		}
		return new ModelAndView("index",m);
	}
	
	
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public ModelAndView signupPage()
	{
		return new ModelAndView("signup");
	}
	
	@RequestMapping(value="/signupUser",method=RequestMethod.POST)
	public ModelAndView signupUser(HttpServletRequest req,HttpServletResponse res)
	{
		HashMap m = new HashMap();
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
		
		m.put("nameValue", name);
		m.put("emailValue", email);
		m.put("phoneValue", phone);
		
		String errorMessage="";
		
		if(name.isEmpty())
		{
			errorMessage="ENTER YOUR NAME";
			m.put("error", errorMessage);
		}
		else if(email.isEmpty())
		{
			errorMessage="ENTER YOUR EMAIL ID";
			m.put("error", errorMessage);
		}
		else if(phone.isEmpty())
		{
			errorMessage="ENTER YOUR PHONE NO.";
			m.put("error", errorMessage);
		}
		else
		{
			List<String> registeredEmails = loginservice.getRegisteredEmails();
			if(registeredEmails.contains(email))
			{
				m.put("error", "THIS EMAIL ID ALREADY REGISTERED!");
			}
			else
			{
				boolean result=loginservice.signupUserService(name, email, phone);
				if(result)
				{
					m.put("success", "ACCOUNT CREATED SUCCESSFULLY.CHECK YOUR EMAIL FOR PASSWORD");
					m.put("nameValue", "");
					m.put("emailValue", "");
					return new ModelAndView("aadharDetails");
				}
				else
				{
					m.put("error", "CAN NOT CREATE ACCOUNT");
				}
			}
		}
		return new ModelAndView("signup",m);
	}
}

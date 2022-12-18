package org.nlt.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nlt.controller.services.LoginServices;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AadharController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView home() 
	{
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/newregistration", method=RequestMethod.GET)
	public ModelAndView personalDetails()
	{
		return new ModelAndView("newRegistration");
	}
	
	@RequestMapping(value="/submitAadhar", method=RequestMethod.POST)
	public ModelAndView submitAadhar(HttpServletRequest req, HttpServletResponse res)
	{
		HashMap m = new HashMap();
		String name = req.getParameter("name");
		String dob = req.getParameter("dob");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		String city = req.getParameter("city");
		String education = req.getParameter("education");
		
		String[] hob = req.getParameterValues("hobbies");
		String hobbies="";
		if(hob!=null)
		{
			for(String h:hob)
			{
				hobbies=hobbies.concat(h);
			}
		}
		
		String[] lang = req.getParameterValues("langauges");
		String languages="";
		if(lang!=null)
		{
			for(String h:lang)
			{
				languages=languages.concat(h);
			}
		}
		m.put("nameValue", name);
		m.put("dobValue", dob);
		m.put("genderValue", gender);
		m.put("hobbiesValue", hobbies);
		m.put("cityValue", city);
		m.put("addressValue", address);
		m.put("educationValue", education);
		m.put("languagesValue", languages);
		
		
		return new ModelAndView("newRegistration",m);
	}
	
}

package com.app.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePageController {
	
	@RequestMapping(value="Aboutus")
	public String Aboutus()
	{
		return "Aboutus";
	}
	
	@RequestMapping(value="contactus")
	public String Contactus()
	{
		return "contactus";
	}

	/*@RequestMapping(value="login")
	public String Login()
	{
		return "Login";
	}*/
	
}

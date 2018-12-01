package com.app.Controller;

import org.springframework.stereotype.Controller;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.DAO.RegisterDAO;
import com.app.DAO.addproductDAO;
import com.app.Model.Register;
import com.app.Model.addproduct;

@Controller
public class LoginController {
	
	@Autowired
	RegisterDAO rdao;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public ModelAndView getLogin(Register register)
	{
			System.out.println("login");	
			ModelAndView model=new ModelAndView("Login");
			return model;
	}
	
	
	@RequestMapping(method = RequestMethod.POST)
	public String processForm(@RequestParam("new") String a,@RequestParam("pass") String b) {
		
		String c="sai123";
		String d="1234";
		

		System.out.println(a);
		
		boolean userExists = rdao.checkLogin(a);
		System.out.println("welcome");
		
		
		if(!userExists){
			return "Login";
		}
		if(a.equals(c)&&b.equals(d)) {
			System.out.println("hii");
			return "ads";
		}
		System.out.println("wertr");
		return "home";

	}

}

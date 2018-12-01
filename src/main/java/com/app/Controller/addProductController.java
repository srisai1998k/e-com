package com.app.Controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.DAO.addproductDAO;
import com.app.Model.Cart;
import com.app.Model.Register;
import com.app.Model.addproduct;


@Controller
public class addProductController {

	@Autowired
	addproductDAO pdao;
	
	
		

	@RequestMapping(value="addproduct", method=RequestMethod.GET)
	public ModelAndView getLogin(addproduct ap)
	{
			System.out.println("addproduct");	
			ModelAndView model=new ModelAndView("addProduct");
			return model;
	}
	
	
	@RequestMapping(value="addproduct", method=RequestMethod.POST)
	public ModelAndView Success(@ModelAttribute("addproduct")addproduct ap, Model m)
	{
			pdao.adproduct(ap);
			ModelAndView model=new ModelAndView("Login","addproduct", new addproduct());
			return model;
	}
	 @RequestMapping("/viewproduct")  
	    public ModelAndView viewemp(){  
		List<addproduct> list= pdao.getproduct();      
	    return new ModelAndView("viewproduct","prod",list);  
	    }  
	 @RequestMapping("/viewproduct1")  
	    public ModelAndView viewemp1(){  
		List<addproduct> list= pdao.getproduct();      
	    return new ModelAndView("NewFile","prod",list);  
	    }  
	 @RequestMapping(value="/EditProduct/{pid}",method=RequestMethod.GET)
		public ModelAndView editproduct(@PathVariable int pid,Model m) 
		{
		 addproduct p=pdao.showProduct(pid);
			m.addAttribute("EditProduct",p);
			ModelAndView mv=new ModelAndView("EditProduct","addproduct",new addproduct());
			return mv;
		}	
		//Getting values from Category Page8
		@RequestMapping(value="/EditProduct/{id}",method=RequestMethod.POST)
		public String editproduct(@ModelAttribute("addproduct")addproduct typepro,Model m) 
		{
			System.out.println("hii");
			pdao.editProduct(typepro);
			return "redirect:/viewproduct";
			/*m.addAttribute("list",viewemp());
			ModelAndView mv=new ModelAndView("viewproduct","EditProduct",new addproduct());
			return mv;*/

		}
		@RequestMapping(value="/deleteproduct/{pid}",method=RequestMethod.GET)
		public String DeleteProduct(@PathVariable int pid,Model m)
		{
			pdao.deleteProduct(pid);return "redirect:/viewproduct";
			/*m.addAttribute("list",viewemp());
			ModelAndView mv=new ModelAndView("viewproduct","addproduct",new addproduct());
			return mv;*/
		}
		@RequestMapping(value="/cart/{pid}",method=RequestMethod.GET)
		public String CartProduct(@PathVariable int pid,Model m)
		{
			System.out.println("asdfg");
			 addproduct p=pdao.showProduct(pid);
			 pdao.addcart(p);
			return "redirect:/NewFile";
			/*m.addAttribute("list",viewemp());
			ModelAndView mv=new ModelAndView("viewproduct","addproduct",new addproduct());
			return mv;*/
		}
		
		
}
	
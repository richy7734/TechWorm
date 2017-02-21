package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CustomerDao;
import com.niit.dao.ProductsDao;
import com.niit.dao.SupplierDao;
import com.niit.model.Categories;
import com.niit.model.Customers;
import com.niit.model.Products;
import com.niit.model.Suppliers;
import com.niit.model.roles;

@Controller
public class AppController {

	@Autowired
	CustomerDao custDao;
	
	@Autowired
	SupplierDao supDao;
	
	@Autowired
	ProductsDao proDao;
	
	@RequestMapping("/")
	public ModelAndView getDefault(){
		ModelAndView model = new ModelAndView("index");
		return model;
	}
	
	@RequestMapping("/home")
	public String getHome(){
		return "index";
	}
	
	@RequestMapping("/registration")
	public String getRegistration(){
		return "registration";
	}
	
	@ModelAttribute("regCommand")
	public Customers getCust(){
		return new Customers();
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("regCommand")Customers cust, roles role,  Model model){
		
		//role.setR_id(1);
		role.setRole_name("ROLE_USER");
		custDao.addCustomer(cust);
		custDao.addRole(role);
		
		model.addAttribute("customer", cust);
		return "regSuccess";
	}
	
	@ModelAttribute("loginCommand")
	public Customers getReg(){
		return new Customers();
	}
	
	@RequestMapping("/user")
	public String login(){
		return "user";
	}
	
	@ModelAttribute("supplierCmd")
	public Suppliers setSuppliers(){
		return new Suppliers();
	}
	@RequestMapping(value = "/supplier",method = RequestMethod.POST)
	public String getSuppliers(@ModelAttribute("supplierCmd") Suppliers supplier ,Model model){
		
		supDao.addSupplier(supplier);
		model.addAttribute("supplier", supplier);
		
		return "supplier";
	}
	
	@ModelAttribute("categoryCmd")
	public Categories setCategories(){
		return new Categories();
	}
	@RequestMapping(value = "/category",method = RequestMethod.POST)
	public String getCategories(@ModelAttribute("categoryCmd") Categories category, Model model){
		
		proDao.addCategory(category);
		model.addAttribute("category", category);
		return "";
	}
	
	@ModelAttribute("addProCmd")
	public Products addProductsCmd(){
		return new Products();
	}
	
	@RequestMapping(value = "/addProAct", method = RequestMethod.POST)
	public String addProducts(@ModelAttribute("addProCmd") Products products, Model model){
		return "product";
	}
	
	@ModelAttribute("updateProCmd")
	public Products updateProductsCmd(){
		return new Products();
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateProducts(@ModelAttribute("updateProCmd") int id, Model model){
		return "update";
	}
	
}

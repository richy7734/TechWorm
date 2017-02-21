package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.ProductsDao;
import com.niit.model.Products;

@Controller
public class AdminController {

	@Autowired
	ProductsDao productsDao;
	
	@RequestMapping("/admin")
	public String getAdmin(){
		return "admin";
	}
	
	@ModelAttribute("addProduct")
	public Products getAddProduct(){
		System.out.println("------Product Cuntructor Called------");
		return new Products();
	}
	
	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public String addProducts(@ModelAttribute("addProduct") Products products, BindingResult result){
		System.out.println("------Save Products Controller Called------");
		productsDao.addProducts(products);
		System.out.println("------Product Sucessfully Saved------");
		return "admin";
	}
}

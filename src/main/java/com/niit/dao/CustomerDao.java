package com.niit.dao;

import java.util.List;

import com.niit.model.Customers;
import com.niit.model.roles;

public interface CustomerDao {

	void addCustomer(Customers cust);
	public void addRole(roles role);
	public Customers getCustById(int custId);
	public Customers getCustByName(String name);
	public List<Customers> getAllCust();

}

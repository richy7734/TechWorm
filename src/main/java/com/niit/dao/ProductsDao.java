package com.niit.dao;

import com.niit.model.Categories;
import com.niit.model.Products;

public interface ProductsDao {
	public void addCategory(Categories category);
	public void addProducts(Products products);
}

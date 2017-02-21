package com.niit.dao.imple;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductsDao;
import com.niit.model.Categories;
import com.niit.model.Products;
@Repository("proDao")
public class ProductsDaoIple implements ProductsDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void addProducts(Products products){
		System.out.println("------Save Product DAO Invoked------");
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		System.out.println("------Saveing Product To Database------");
		session.saveOrUpdate(products);
		transaction.commit();
		session.close();
	}
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void addCategory(Categories category) {
		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(category);
		transaction.commit();
		session.close();
	}

}

package com.niit.dao.imple;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.SupplierDao;
import com.niit.model.Suppliers;
@Repository("supDao")
public class SupplierDaoImple implements SupplierDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	public void addSupplier(Suppliers suppliers) {
		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(suppliers);
		transaction.commit();
		session.close();
	}

}

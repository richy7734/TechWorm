package com.niit.dao.imple;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CustomerDao;
import com.niit.model.Customers;
import com.niit.model.roles;

@Repository("custDao")
public class CustomerDaoImple implements CustomerDao {


	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void addCustomer(Customers cust) {
		
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.saveOrUpdate(cust);
		transaction.commit();
		session.close();
	}
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void addRole(roles role){
		
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.saveOrUpdate(role);
		transaction.commit();
		session.close();
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public Customers getCustById(int custId) {
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		Customers cust = (Customers)session.load(Customers.class, custId);
		transaction.commit();
		session.close();
		return cust;
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public Customers getCustByName(String username) {
		Session session = sessionFactory.openSession();
		
		Criteria criteria = session.createCriteria(Customers.class);
		criteria.add(Restrictions.eq("username", username));
		
		return (Customers) criteria.uniqueResult();
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Customers> getAllCust() {
		Session session = this.sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Customers> custList = session.createQuery("from Customers").list();
		return custList;
	}
}

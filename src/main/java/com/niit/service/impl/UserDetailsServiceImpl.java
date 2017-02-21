package com.niit.service.impl;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerDao;
import com.niit.model.Customers;
import com.niit.model.roles;

@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private CustomerDao custDao;
	
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	
		Customers cust = custDao.getCustByName(username);
		if(cust != null){
			String password = cust.getPassword();
			Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			for(roles role: cust.getRoles()){
				authorities.add(new GrantedAuthorityImpl(role.getRole_name()));
			}
			org.springframework.security.core.userdetails.User securityUser = new User(username, password, authorities);
			System.out.println("User: " +securityUser.getUsername()+securityUser.getPassword());
			return securityUser;
		}
		else{
			throw new UsernameNotFoundException("User not found...!!");
		}
	}

}

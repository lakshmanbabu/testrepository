package com.spring.tutorial.Dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tutorial.Model.User;
import com.spring.tutorial.Model.UserRoles;

@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	 private SessionFactory sessionFactory;
	
	@Override
	public int saveUserDetails(User user) {
		return   (int) sessionFactory.getCurrentSession().save(user);	
		
	}

	@Override
	public void saveUserRole(UserRoles userRoles) {
		sessionFactory.getCurrentSession().save(userRoles);	
		
	}

}

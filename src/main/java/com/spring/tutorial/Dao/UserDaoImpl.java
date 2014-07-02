package com.spring.tutorial.Dao;

import java.util.List;

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
		return   (Integer) sessionFactory.getCurrentSession().save(user);	
		
	}

	@Override
	public void saveUserRole(UserRoles userRoles) {
		sessionFactory.getCurrentSession().save(userRoles);	
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> getUsersList() {
		return 	sessionFactory.getCurrentSession().createQuery("from User where userRole=:userRole ").setParameter("userRole", "ROLE_USER").list();
	}

	@Override
	public User getUserById(Integer userId) {
	
		User user= (User) sessionFactory.getCurrentSession().createQuery("from User where userId=:userId and userRole=:userRole").setParameter("userId", userId).setParameter("userRole", "ROLE_USER").uniqueResult();
		return user;
	}

	@Override
	public void updateUserDetails(User user) {
		sessionFactory.getCurrentSession().update(user);	
	}

	@Override
	public void deleteUserById(Integer userId) {

		User user  = getUserById(userId);
		
      if(user != null){
    	  sessionFactory.getCurrentSession().delete(user);
      }
					
	}

	/*@Override
	public UserRoles getUserRoleById(Integer userId) {
		
		UserRoles user= (UserRoles) sessionFactory.getCurrentSession().createQuery("from UserRoles where user.userId=:userId and userRole=:userRole").setParameter("userId", userId).setParameter("userRole", "ROLE_USER").uniqueResult();
		return user;
	}*/

	
}

package com.spring.tutorial.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.tutorial.Dao.UserDao;
import com.spring.tutorial.Model.User;
import com.spring.tutorial.Model.UserRoles;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	public UserDao userDao;
	
	@Override
	@Transactional
	public int saveUserDetails(User user) {
		return userDao.saveUserDetails(user);
		
	}

	@Override
	@Transactional
	public void saveUserRole(UserRoles userRoles) {
		userDao.saveUserRole(userRoles);
		
	}

}
